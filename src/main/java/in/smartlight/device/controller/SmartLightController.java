package in.smartlight.device.controller;

import javax.annotation.PostConstruct;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.ClientConfig;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import in.smartlight.device.bean.Action;
import in.smartlight.device.bean.Phase;
import in.smartlight.device.utils.KafkaUtils;

@Controller
public class SmartLightController {
	
	private Phase allPhase;
	private Phase phase1;
	private Phase phase2;
	private Action allAction;
	private Action action1;
	private Action action2;
	private String sunrise;
	private String sunset;
	
	@RequestMapping("/default")
	public String greetInHindi(ModelMap map){
		map.addAttribute("allPhase", allPhase);
		map.addAttribute("phase1", phase1);
		map.addAttribute("phase2", phase2);
		map.addAttribute("allAction", allAction);
		map.addAttribute("action1", action1);
		map.addAttribute("action2", action2);
		map.addAttribute("sunrise", sunrise);
		map.addAttribute("sunset", sunset);
		return "index";
	}
	
	@PostConstruct
	public void init(){
		phase1 = new Phase("Phase1", 2, 1, 240, 0.01, 100.0, null);
		phase2 = new Phase("Phase2", 3, 0, 240, 0.01, 100.0, null);
		allPhase = new Phase("All Phase", 5, 1,  240, 0.01, 200.0, null);
		allAction = new Action("All Phase", 100, true);
		action1 = new Action("Phase1", 100, true);
		action2 = new Action("Phase2", 100, true);
		
		getSunRiseSet();
	}

	private void getSunRiseSet() {
		Client client = ClientBuilder.newClient(new ClientConfig().register(String.class));
		WebTarget webTarget = client.target("http://api.sunrise-sunset.org/json").queryParam("lat", 28.569762).queryParam("lng", 77.358981);
		
		Invocation.Builder invocationBuilder = webTarget.request(MediaType.APPLICATION_JSON).accept("application/json");
		Response response = invocationBuilder.get();

		String strResponse = response.readEntity(String.class);
		
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject;
		try {
			jsonObject = (JSONObject) jsonParser.parse(strResponse);
			JSONObject jsonResult = (JSONObject)jsonObject.get("results");
			sunrise = (String)jsonResult.get("sunrise");
			sunset = (String)jsonResult.get("sunset");
			System.out.println(jsonObject.toJSONString());
		}catch (ParseException e) {
			System.out.println(e.getMessage());
		}
		
	}
	
	@RequestMapping(value="/smart-light-phase-submit.htm")  
	public @ResponseBody String processPhase(@ModelAttribute("phase") Phase phase,BindingResult result) {  
		
		String phaseId=phase.getPhaseId();
		String button=phase.getButton();
		String message = "state"+":"+phaseId+":"+button;
		System.out.println("come inside the mehtod processPhase:"+message);
		KafkaUtils.sendMessage(message);
		
        return "index";  
    }  

	@RequestMapping(value="/smart-light-phase-intensity-submit.htm")  
	public @ResponseBody String processPhaseIntensity(@ModelAttribute("action") Action action,BindingResult result) {  
		String phaseName=action.getPhaseName();
		Integer intensity=action.getIntensity();
		String message = "dim"+":"+phaseName+":"+intensity;
		System.out.println("come inside the mehtod processPhaseIntensity:"+message);
		KafkaUtils.sendMessage(message);
        return "index";  
    }  

}

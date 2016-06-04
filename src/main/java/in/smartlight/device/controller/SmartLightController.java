package in.smartlight.device.controller;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import in.smartlight.device.bean.Action;
import in.smartlight.device.bean.Phase;

@Controller
public class SmartLightController {
	
	private Phase allPhase;
	private Phase phase1;
	private Phase phase2;
	private Action allAction;
	private Action action1;
	private Action action2;
	
	@RequestMapping("/default")
	public String greetInHindi(ModelMap map){
		map.addAttribute("allPhase", allPhase);
		map.addAttribute("phase1", phase1);
		map.addAttribute("phase2", phase2);
		map.addAttribute("allAction", allAction);
		map.addAttribute("action1", action1);
		map.addAttribute("action2", action2);
		return "index";
	}
	
	@PostConstruct
	public void init(){
		phase1 = new Phase("Phase1", 4, 0, 240, 0.01, 100.0);
		phase2 = new Phase("Phase2", 4, 0, 240, 0.01, 100.0);
		allPhase = new Phase("All Phase", 8, 0,  240, 0.01, 200.0);
		allAction = new Action("All Phase", 100, true);
		action1 = new Action("Phase1", 100, true);
		action2 = new Action("Phase2", 100, true);
		
		getSunRiseSet();
	}

	private void getSunRiseSet() {
		
		
	}

}

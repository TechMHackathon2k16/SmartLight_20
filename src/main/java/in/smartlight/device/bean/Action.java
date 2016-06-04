package in.smartlight.device.bean;

public class Action {

	private String phaseName;
	private Integer intensity;
	private Boolean state;
	
	public Action() {
		// TODO Auto-generated constructor stub
	}

	public Action(String phaseName, Integer intensity, Boolean state) {
		super();
		this.phaseName = phaseName;
		this.intensity = intensity;
		this.state = state;
	}

	public String getPhaseName() {
		return phaseName;
	}

	public void setPhaseName(String phaseName) {
		this.phaseName = phaseName;
	}

	public Integer getIntensity() {
		return intensity;
	}

	public void setIntensity(Integer intensity) {
		this.intensity = intensity;
	}

	public Boolean getState() {
		return state;
	}

	public void setState(Boolean state) {
		this.state = state;
	}

	@Override
	public String toString() {
		return "Action [phaseName=" + phaseName + ", intensity=" + intensity + ", state=" + state + "]";
	}
	
}

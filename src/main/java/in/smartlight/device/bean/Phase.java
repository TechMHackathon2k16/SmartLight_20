package in.smartlight.device.bean;

public class Phase {

	private String phaseId;
	private Integer numOfLamp;
	private Integer errorLamp;
	private Integer voltage;
	private Double current;
	private Double power;
	private String button;

	public Phase() {
		// TODO Auto-generated constructor stub
	}

	public Phase(String phaseId, Integer numOfLamp, Integer errorLamp, Integer voltage, Double current, Double power, String button) {
		super();
		this.phaseId = phaseId;
		this.numOfLamp = numOfLamp;
		this.errorLamp = errorLamp;
		this.voltage = voltage;
		this.current = current;
		this.power = power;
		this.button = button;
	}

	public String getPhaseId() {
		return phaseId;
	}

	public void setPhaseId(String phaseId) {
		this.phaseId = phaseId;
	}

	public Integer getNumOfLamp() {
		return numOfLamp;
	}

	public void setNumOfLamp(Integer numOfLamp) {
		this.numOfLamp = numOfLamp;
	}
	
	public Integer getErrorLamp() {
		return errorLamp;
	}

	public void setErrorLamp(Integer errorLamp) {
		this.errorLamp = errorLamp;
	}

	public Integer getVoltage() {
		return voltage;
	}

	public void setVoltage(Integer voltage) {
		this.voltage = voltage;
	}

	public Double getCurrent() {
		return current;
	}

	public void setCurrent(Double current) {
		this.current = current;
	}

	public Double getPower() {
		return power;
	}

	public void setPower(Double power) {
		this.power = power;
	}
	
	public String getButton() {
		return button;
	}
	
	public void setButton(String button) {
		this.button = button;
	}

	@Override
	public String toString() {
		return "Phase [phaseId=" + phaseId + ", numOfLamp=" + numOfLamp + ", errorLamp=" + errorLamp + ", voltage=" + voltage + ", current="
				+ current + ", power=" + power + "]";
	}
}

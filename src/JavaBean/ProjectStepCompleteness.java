package JavaBean;

public class ProjectStepCompleteness {
	private String stepId;
	private String stepTitle;
	private String completeness;
	private String username;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getStepId() {
		return stepId;
	}
	public void setStepId(String stepId) {
		this.stepId = stepId;
	}
	public String getStepTitle() {
		return stepTitle;
	}
	public void setStepTitle(String stepTitle) {
		this.stepTitle = stepTitle;
	}
	public String getCompleteness() {
		return completeness;
	}
	public void setCompleteness(String completeness) {
		this.completeness = completeness;
	}
	
}

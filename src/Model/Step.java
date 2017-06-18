package Model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Step {
    private int id;
    private Integer pId;
    private String stepTitle;
    private String stepContent;
    private Integer deadlineHours;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "pId")
    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    @Basic
    @Column(name = "stepTitle")
    public String getStepTitle() {
        return stepTitle;
    }

    public void setStepTitle(String stepTitle) {
        this.stepTitle = stepTitle;
    }

    @Basic
    @Column(name = "stepContent")
    public String getStepContent() {
        return stepContent;
    }

    public void setStepContent(String stepContent) {
        this.stepContent = stepContent;
    }

    @Basic
    @Column(name = "deadlineHours")
    public Integer getDeadlineHours() {
        return deadlineHours;
    }

    public void setDeadlineHours(Integer deadlineHours) {
        this.deadlineHours = deadlineHours;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Step step = (Step) o;

        if (id != step.id) return false;
        if (pId != null ? !pId.equals(step.pId) : step.pId != null) return false;
        if (stepTitle != null ? !stepTitle.equals(step.stepTitle) : step.stepTitle != null) return false;
        if (stepContent != null ? !stepContent.equals(step.stepContent) : step.stepContent != null) return false;
        if (deadlineHours != null ? !deadlineHours.equals(step.deadlineHours) : step.deadlineHours != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (pId != null ? pId.hashCode() : 0);
        result = 31 * result + (stepTitle != null ? stepTitle.hashCode() : 0);
        result = 31 * result + (stepContent != null ? stepContent.hashCode() : 0);
        result = 31 * result + (deadlineHours != null ? deadlineHours.hashCode() : 0);
        return result;
    }
}

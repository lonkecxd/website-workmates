package Model;

import javax.persistence.*;

@Entity
@Table(name = "U_S_Roles", schema = "dbo", catalog = "WorkMates")
public class USRoles {
    private Integer uId;
    private Integer stepId;
    private Integer roleId;
    private int id;
    private String completeness;

    @Basic
    @Column(name = "uId")
    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    @Basic
    @Column(name = "stepId")
    public Integer getStepId() {
        return stepId;
    }

    public void setStepId(Integer stepId) {
        this.stepId = stepId;
    }

    @Basic
    @Column(name = "roleId")
    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "completeness")
    public String getCompleteness() {
        return completeness;
    }

    public void setCompleteness(String completeness) {
        this.completeness = completeness;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        USRoles usRoles = (USRoles) o;

        if (id != usRoles.id) return false;
        if (uId != null ? !uId.equals(usRoles.uId) : usRoles.uId != null) return false;
        if (stepId != null ? !stepId.equals(usRoles.stepId) : usRoles.stepId != null) return false;
        if (roleId != null ? !roleId.equals(usRoles.roleId) : usRoles.roleId != null) return false;
        if (completeness != null ? !completeness.equals(usRoles.completeness) : usRoles.completeness != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = uId != null ? uId.hashCode() : 0;
        result = 31 * result + (stepId != null ? stepId.hashCode() : 0);
        result = 31 * result + (roleId != null ? roleId.hashCode() : 0);
        result = 31 * result + id;
        result = 31 * result + (completeness != null ? completeness.hashCode() : 0);
        return result;
    }
}

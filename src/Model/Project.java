package Model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class Project {
    private int id;
    private Integer masterId;
    private Timestamp createdTime;
    private Integer totalHours;
    private Boolean isRewarded;
    private Integer rewardedCoin;
    private String title;
    private String description;
    private Integer projectAreaId;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "masterId")
    public Integer getMasterId() {
        return masterId;
    }

    public void setMasterId(Integer masterId) {
        this.masterId = masterId;
    }

    @Basic
    @Column(name = "createdTime")
    public Timestamp getCreatedTime() {
        return createdTime;
    }

    public void setCreatedTime(Timestamp createdTime) {
        this.createdTime = createdTime;
    }

    @Basic
    @Column(name = "totalHours")
    public Integer getTotalHours() {
        return totalHours;
    }

    public void setTotalHours(Integer totalHours) {
        this.totalHours = totalHours;
    }

    @Basic
    @Column(name = "isRewarded")
    public Boolean getRewarded() {
        return isRewarded;
    }

    public void setRewarded(Boolean rewarded) {
        isRewarded = rewarded;
    }

    @Basic
    @Column(name = "rewardedCoin")
    public Integer getRewardedCoin() {
        return rewardedCoin;
    }

    public void setRewardedCoin(Integer rewardedCoin) {
        this.rewardedCoin = rewardedCoin;
    }

    @Basic
    @Column(name = "title")
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "projectAreaId")
    public Integer getProjectAreaId() {
        return projectAreaId;
    }

    public void setProjectAreaId(Integer projectAreaId) {
        this.projectAreaId = projectAreaId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Project project = (Project) o;

        if (id != project.id) return false;
        if (masterId != null ? !masterId.equals(project.masterId) : project.masterId != null) return false;
        if (createdTime != null ? !createdTime.equals(project.createdTime) : project.createdTime != null) return false;
        if (totalHours != null ? !totalHours.equals(project.totalHours) : project.totalHours != null) return false;
        if (isRewarded != null ? !isRewarded.equals(project.isRewarded) : project.isRewarded != null) return false;
        if (rewardedCoin != null ? !rewardedCoin.equals(project.rewardedCoin) : project.rewardedCoin != null)
            return false;
        if (title != null ? !title.equals(project.title) : project.title != null) return false;
        if (description != null ? !description.equals(project.description) : project.description != null) return false;
        if (projectAreaId != null ? !projectAreaId.equals(project.projectAreaId) : project.projectAreaId != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (masterId != null ? masterId.hashCode() : 0);
        result = 31 * result + (createdTime != null ? createdTime.hashCode() : 0);
        result = 31 * result + (totalHours != null ? totalHours.hashCode() : 0);
        result = 31 * result + (isRewarded != null ? isRewarded.hashCode() : 0);
        result = 31 * result + (rewardedCoin != null ? rewardedCoin.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (projectAreaId != null ? projectAreaId.hashCode() : 0);
        return result;
    }
}

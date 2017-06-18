package Model;

import javax.persistence.*;

@Entity
@Table(name = "Project_Content", schema = "dbo", catalog = "WorkMates")
public class ProjectContent {
    private int id;
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

        ProjectContent that = (ProjectContent) o;

        if (id != that.id) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (description != null ? !description.equals(that.description) : that.description != null) return false;
        if (projectAreaId != null ? !projectAreaId.equals(that.projectAreaId) : that.projectAreaId != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        result = 31 * result + (projectAreaId != null ? projectAreaId.hashCode() : 0);
        return result;
    }
}

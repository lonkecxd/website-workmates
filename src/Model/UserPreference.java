package Model;

import javax.persistence.*;

@Entity
@Table(name = "User_Preference", schema = "dbo", catalog = "WorkMates")
public class UserPreference {
    private int id;
    private Integer age;
    private String sex;
    private Integer studyAreaId;
    private String university;
    private Integer cityId;
    private Integer photoSrc;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "age")
    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    @Basic
    @Column(name = "sex")
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "studyAreaId")
    public Integer getStudyAreaId() {
        return studyAreaId;
    }

    public void setStudyAreaId(Integer studyAreaId) {
        this.studyAreaId = studyAreaId;
    }

    @Basic
    @Column(name = "university")
    public String getUniversity() {
        return university;
    }

    public void setUniversity(String university) {
        this.university = university;
    }

    @Basic
    @Column(name = "cityId")
    public Integer getCityId() {
        return cityId;
    }

    public void setCityId(Integer cityId) {
        this.cityId = cityId;
    }

    @Basic
    @Column(name = "photoSRC")
    public Integer getPhotoSrc() {
        return photoSrc;
    }

    public void setPhotoSrc(Integer photoSrc) {
        this.photoSrc = photoSrc;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserPreference that = (UserPreference) o;

        if (id != that.id) return false;
        if (age != null ? !age.equals(that.age) : that.age != null) return false;
        if (sex != null ? !sex.equals(that.sex) : that.sex != null) return false;
        if (studyAreaId != null ? !studyAreaId.equals(that.studyAreaId) : that.studyAreaId != null) return false;
        if (university != null ? !university.equals(that.university) : that.university != null) return false;
        if (cityId != null ? !cityId.equals(that.cityId) : that.cityId != null) return false;
        if (photoSrc != null ? !photoSrc.equals(that.photoSrc) : that.photoSrc != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (age != null ? age.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (studyAreaId != null ? studyAreaId.hashCode() : 0);
        result = 31 * result + (university != null ? university.hashCode() : 0);
        result = 31 * result + (cityId != null ? cityId.hashCode() : 0);
        result = 31 * result + (photoSrc != null ? photoSrc.hashCode() : 0);
        return result;
    }
}

package Model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;

@Entity
public class UserInfo {
    private int id;
    private String username;
    private String password;
    private String email;
    private Timestamp birthday;
    private String sex;
    private Integer studyAreaId;
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
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "birthday")
    public Timestamp getBirthday() {
        return birthday;
    }

    public void setBirthday(Timestamp birthday) {
        this.birthday = birthday;
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

        UserInfo userInfo = (UserInfo) o;

        if (id != userInfo.id) return false;
        if (username != null ? !username.equals(userInfo.username) : userInfo.username != null) return false;
        if (password != null ? !password.equals(userInfo.password) : userInfo.password != null) return false;
        if (email != null ? !email.equals(userInfo.email) : userInfo.email != null) return false;
        if (birthday != null ? !birthday.equals(userInfo.birthday) : userInfo.birthday != null) return false;
        if (sex != null ? !sex.equals(userInfo.sex) : userInfo.sex != null) return false;
        if (studyAreaId != null ? !studyAreaId.equals(userInfo.studyAreaId) : userInfo.studyAreaId != null)
            return false;
        if (photoSrc != null ? !photoSrc.equals(userInfo.photoSrc) : userInfo.photoSrc != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (username != null ? username.hashCode() : 0);
        result = 31 * result + (password != null ? password.hashCode() : 0);
        result = 31 * result + (email != null ? email.hashCode() : 0);
        result = 31 * result + (birthday != null ? birthday.hashCode() : 0);
        result = 31 * result + (sex != null ? sex.hashCode() : 0);
        result = 31 * result + (studyAreaId != null ? studyAreaId.hashCode() : 0);
        result = 31 * result + (photoSrc != null ? photoSrc.hashCode() : 0);
        return result;
    }
}

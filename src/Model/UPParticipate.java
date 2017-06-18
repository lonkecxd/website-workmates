package Model;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "U_P_Participate", schema = "dbo", catalog = "WorkMates")
public class UPParticipate {
    private Integer uId;
    private Integer pId;
    private Timestamp joinTime;
    private int id;

    @Basic
    @Column(name = "uId")
    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
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
    @Column(name = "joinTime")
    public Timestamp getJoinTime() {
        return joinTime;
    }

    public void setJoinTime(Timestamp joinTime) {
        this.joinTime = joinTime;
    }

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UPParticipate that = (UPParticipate) o;

        if (id != that.id) return false;
        if (uId != null ? !uId.equals(that.uId) : that.uId != null) return false;
        if (pId != null ? !pId.equals(that.pId) : that.pId != null) return false;
        if (joinTime != null ? !joinTime.equals(that.joinTime) : that.joinTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = uId != null ? uId.hashCode() : 0;
        result = 31 * result + (pId != null ? pId.hashCode() : 0);
        result = 31 * result + (joinTime != null ? joinTime.hashCode() : 0);
        result = 31 * result + id;
        return result;
    }
}

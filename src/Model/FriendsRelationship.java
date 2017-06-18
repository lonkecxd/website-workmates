package Model;

import javax.persistence.*;

@Entity
@Table(name = "Friends_Relationship", schema = "dbo", catalog = "WorkMates")
public class FriendsRelationship {
    private int id;
    private Integer masterId;
    private Integer friendId;

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
    @Column(name = "friendId")
    public Integer getFriendId() {
        return friendId;
    }

    public void setFriendId(Integer friendId) {
        this.friendId = friendId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FriendsRelationship that = (FriendsRelationship) o;

        if (id != that.id) return false;
        if (masterId != null ? !masterId.equals(that.masterId) : that.masterId != null) return false;
        if (friendId != null ? !friendId.equals(that.friendId) : that.friendId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (masterId != null ? masterId.hashCode() : 0);
        result = 31 * result + (friendId != null ? friendId.hashCode() : 0);
        return result;
    }
}

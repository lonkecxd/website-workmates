package Model;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "Friends_Message", schema = "dbo", catalog = "WorkMates")
public class FriendsMessage {
    private int id;
    private Integer sendId;
    private Integer recieverId;
    private String message;
    private Boolean isRecieved;
    private Timestamp sendTime;

    @Id
    @Column(name = "id")
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "sendId")
    public Integer getSendId() {
        return sendId;
    }

    public void setSendId(Integer sendId) {
        this.sendId = sendId;
    }

    @Basic
    @Column(name = "recieverId")
    public Integer getRecieverId() {
        return recieverId;
    }

    public void setRecieverId(Integer recieverId) {
        this.recieverId = recieverId;
    }

    @Basic
    @Column(name = "message")
    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Basic
    @Column(name = "isRecieved")
    public Boolean getRecieved() {
        return isRecieved;
    }

    public void setRecieved(Boolean recieved) {
        isRecieved = recieved;
    }

    @Basic
    @Column(name = "sendTime")
    public Timestamp getSendTime() {
        return sendTime;
    }

    public void setSendTime(Timestamp sendTime) {
        this.sendTime = sendTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        FriendsMessage that = (FriendsMessage) o;

        if (id != that.id) return false;
        if (sendId != null ? !sendId.equals(that.sendId) : that.sendId != null) return false;
        if (recieverId != null ? !recieverId.equals(that.recieverId) : that.recieverId != null) return false;
        if (message != null ? !message.equals(that.message) : that.message != null) return false;
        if (sendTime != null ? !sendTime.equals(that.sendTime) : that.sendTime != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (sendId != null ? sendId.hashCode() : 0);
        result = 31 * result + (recieverId != null ? recieverId.hashCode() : 0);
        result = 31 * result + (message != null ? message.hashCode() : 0);
        result = 31 * result + (sendTime != null ? sendTime.hashCode() : 0);
        return result;
    }
}

package IDAO;

import Model.UserInfo;

import java.util.List;

public interface IUserDAO {
    String validateLogin(String username, String password);

    void validateRegister(UserInfo user);

    List<UserInfo> queryFriends(UserInfo user);
//    void saveFriends();

//    void queryAllfriends();
}

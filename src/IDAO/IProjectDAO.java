package IDAO;

import Model.Project;
import Model.UserInfo;

import java.util.List;

public interface IProjectDAO {
    List<Project> queryCreatedProjects(UserInfo user);
    List<Project> queryJoinProjects(UserInfo user);
}

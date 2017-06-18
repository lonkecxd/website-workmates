package Action;

import Helper.HibernateSessionFactory;
import Model.Project;
import com.opensymphony.xwork2.ModelDriven;
import org.hibernate.Session;
import DB.DB;

public class ProjectAction implements ModelDriven<Project> {

    Project project = new Project();

    @Override
    public Project getModel() {
        return project;
    }

    public String UpdateProject(){
        try {
            DB db = new DB();
            db.addProject(project.getRewardedCoin(), project.getTitle(), project.getDescription());
            return "success";
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }


}

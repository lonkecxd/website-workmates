package UnitTest;

import Model.UserInfo;
import org.jboss.arquillian.container.test.api.Deployment;
import org.jboss.arquillian.junit.Arquillian;
import org.jboss.shrinkwrap.api.ShrinkWrap;
import org.jboss.shrinkwrap.api.asset.EmptyAsset;
import org.jboss.shrinkwrap.api.spec.JavaArchive;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;

import static org.junit.Assert.*;

@RunWith(Arquillian.class)
public class ProjectDAOTest {
    @Test
    public void queryCreatedProjects() throws Exception {
    }

    @Test
    public void queryJoinProjects() throws Exception {
        UserInfo user = new UserInfo();
        user.setId(1);
        Assert.assertNotNull(user);
    }

    @Deployment
    public static JavaArchive createDeployment() {
        return ShrinkWrap.create(JavaArchive.class)
                .addClass(DAO.ProjectDAO.class)
                .addAsManifestResource(EmptyAsset.INSTANCE, "beans.xml");
    }

}

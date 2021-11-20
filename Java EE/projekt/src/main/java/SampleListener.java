import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener("/sesja")
public class SampleListener implements HttpSessionListener {
	
	  public void sessionDestroyed(HttpSessionEvent session) {
	        System.out.println("Sesja skasowana");
	    }
	
	 public void sessionCreated(HttpSessionEvent session) {
	        System.out.println("Sesja utworzona " + session.getSession().getId());
	    }
}
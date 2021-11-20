import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
@WebListener	
public class RequestListener implements ServletRequestListener {
	
	  public void requestDestroyed(ServletRequestEvent requestListener) {
	        System.out.println("Request usuniêty");
	    }

	    public void requestInitialized(ServletRequestEvent requestListener) {
	        System.out.println("Request zainicjowany");
	    }
}
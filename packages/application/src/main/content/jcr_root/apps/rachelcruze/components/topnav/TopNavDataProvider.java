package apps.rachelcruze.components.topnav;

import com.adobe.cq.sightly.WCMUse;
import org.apache.sling.api.resource.ValueMap;
//import java.util.List;
import com.day.cq.wcm.api.Page;

public class TopNavDataProvider extends WCMUse {

    //private List<Page> navLinks
    private Page basePage;

    @Override
    public void activate() {
        ValueMap properties = getProperties();
        //basePage = getCurrentPage().getAbsoluteParent(2);
        String rootPath = properties.get("rootPath", getCurrentPage().getAbsoluteParent(2).getPath());
        basePage = getPageManager().getPage(rootPath);
        /*Iterator<Page> children = rootPage.listChildren(new PageFilter(request));
        while (children.hasNext()) {
            Page child = children.next();
            navLinks.add(child);
        }*/
    }

    public Page getBasePage() {
        return basePage;
    }

    /*public List<Page> getNavLinks() {
        return navLinks;
    }*/
}
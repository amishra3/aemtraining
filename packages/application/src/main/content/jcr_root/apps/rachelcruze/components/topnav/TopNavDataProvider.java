package apps.rachelcruze.components.topnav;

import com.adobe.cq.sightly.WCMUse;
import org.apache.sling.api.resource.ValueMap;
import com.day.cq.wcm.api.Page;

public class TopNavDataProvider extends WCMUse {
  Page rootPage = null;

  @Override
  public void activate() {
    String rootPath = getProperties().get("rootPage", getCurrentPage().getAbsoluteParent(2).getPath());
    rootPage = getPageManager().getPage(rootPath);
  }

  public Page getRootPage() {
    return rootPage;
  }
}

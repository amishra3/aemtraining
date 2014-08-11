package apps.rachelcruze.components.topiclist;

import com.adobe.cq.sightly.WCMUse;
import org.apache.sling.api.resource.ValueMap;
import com.day.cq.wcm.api.Page;

public class TopicListDataProvider extends WCMUse {

    private Page topicsPage = null;

    @Override
    public void activate() {
        ValueMap properties = getProperties();
        String topicsPagePath = properties.get("topicsPage", "");
        if(!topicsPagePath.equals("")) {
            topicsPage = getPageManager().getPage(topicsPagePath);
        }
    }

    public Page getTopicsPage() {
        return topicsPage;
    }
}
package apps.rachelcruze.components.socialbar;

import com.adobe.cq.sightly.WCMUse;
import org.apache.sling.api.resource.ValueMap;
import com.day.cq.wcm.api.Page;
import org.slf4j.LoggerFactory;

public class SocialBarDataProvider extends WCMUse {

    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(SocialBarDataProvider.class);
    
    @Override
    public void activate() {
        ValueMap properties = getProperties();

    }
}

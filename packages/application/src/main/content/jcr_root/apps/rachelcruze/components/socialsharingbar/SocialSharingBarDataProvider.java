package apps.rachelcruze.components.socialsharingbar;

import com.adobe.cq.sightly.WCMUse;
import org.apache.sling.api.resource.ValueMap;
import org.slf4j.LoggerFactory;

public class SocialSharingBarDataProvider extends WCMUse {

    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(SocialSharingBarDataProvider.class);
    
    boolean inIparsys=false;
    
    @Override
    public void activate() {
        inIparsys = "foundation/components/iparsys".equals(this.getResource().getParent().getResourceType());
        logger.error("inIparsys is: "+ inIparsys);

    }

    public boolean isInIparsys() {
        return inIparsys;
    }
    
}

package apps.rachelcruze.components.bottomnav;

import com.adobe.cq.sightly.WCMUse;
import org.apache.sling.api.resource.ValueMap;
import com.day.cq.wcm.api.Page;
import com.day.cq.wcm.api.PageManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;
import org.slf4j.LoggerFactory;

public class BottomNavDataProvider extends WCMUse {

    private static final org.slf4j.Logger logger = LoggerFactory.getLogger(BottomNavDataProvider.class);
    
    Page parentPage;
    @Override
    public void activate() {
        ValueMap properties = getProperties();
        String navRoot = properties.get("navroot", String.class);
        if(navRoot == null){//set default value
            navRoot = getCurrentPage().getAbsoluteParent(2).getPath();
        }
        parentPage= getPageManager().getContainingPage(navRoot);
        //String rootPage;

    }

    public Iterator<Page> getNaveItems() {
        
        ArrayList<Page> retList=new ArrayList<Page>();
        Iterator<Page> pages = parentPage.listChildren();
        
        while(pages.hasNext()){
            Page p = pages.next();
            Boolean showInNav = p.getProperties().get("showInBottomNav", Boolean.class);
            ValueMap properties = p.getProperties();
            if(showInNav != null && showInNav){//this condition needs to be uncommented when the showInBottomNav has been placed into content
               retList.add(p);
            }
        }
        
        return retList.iterator();
       
    }


}

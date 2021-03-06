package apps.rachelcruze.components.logo;

import com.adobe.cq.sightly.WCMUse;
import org.apache.sling.api.resource.ValueMap;
import com.day.cq.commons.inherit.HierarchyNodeInheritanceValueMap;

public class LogoDataProvider extends WCMUse {

    private String logoText = null;
    private String linkTo = null;

    @Override
    public void activate() {
        HierarchyNodeInheritanceValueMap componentMap = new HierarchyNodeInheritanceValueMap(getResource());
        ValueMap properties = getProperties();

        logoText = properties.get("logoText", "");

        if("".equals(logoText)) {
            logoText = getInheritedProperty("logoText", componentMap, properties);
        }

        linkTo = properties.get("linkTo", "");

        if("".equals(linkTo)) {
            linkTo = getInheritedProperty("linkTo", componentMap, properties);
        }

    }

    private String getInheritedProperty(String property, HierarchyNodeInheritanceValueMap componentMap, ValueMap properties) {
        String propertyValue = properties.get(property, "");
        if("".equals(propertyValue)) {
            propertyValue = componentMap.getInherited(property, "");
        }
        return propertyValue;
    }

    public String getLogoText() {
        return logoText;
    }

    public String getLinkTo() {
        return linkTo;
    }
}
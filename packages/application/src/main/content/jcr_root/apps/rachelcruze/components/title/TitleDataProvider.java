package apps.rachelcruze.components.title;

import com.adobe.cq.sightly.WCMUse;
import org.apache.sling.api.resource.ValueMap;
import org.apache.commons.lang3.StringEscapeUtils;
import com.day.cq.commons.Doctype;
import com.day.cq.commons.DiffInfo;
import com.day.cq.commons.DiffService;
import org.apache.sling.api.resource.ResourceUtil;
import com.day.cq.wcm.api.NameConstants;

public class TitleDataProvider extends WCMUse {
    private String titleText = null;
    private String tag = null;
    private String preset = null;
    private String linkTo = null;

    @Override
    public void activate() {
        ValueMap properties = getProperties();

        String title = properties.get("jcr:title", "");
        preset = properties.get("preset", "");
        linkTo = properties.get("linkTo", null);

        //String title = properties.get(NameConstants.PN_TITLE, String.class);
        if (title == null || title.equals("")) {
            title = getResourcePage().getPageTitle();
        }
        if (title == null || title.equals("")) {
            title = getResourcePage().getTitle();
        }
        if (title == null || title.equals("")) {
            title = getResourcePage().getName();
        }

        // escape title
        //title = xssAPI.filterHTML(title);

        String diffOutput = null;
        DiffInfo diffInfo = getResource().adaptTo(DiffInfo.class);
        if (diffInfo != null) {
          DiffService diffService = getSlingScriptHelper().getService(DiffService.class);
          ValueMap map = ResourceUtil.getValueMap(diffInfo.getContent());
          String diffText = map.get(NameConstants.PN_TITLE, "");
          // if the paragraph has no own title, we use the current page title(!)
          if (diffText == null || diffText.equals("")) {
              diffText = title;
          } else {
              //diffText = xssAPI.filterHTML(diffText);
              diffText = diffText;
          }
          diffOutput = diffInfo.getDiffOutput(diffService, title, diffText, false);
          if (title.equals(diffOutput)) {
              diffOutput = null;
          }
        }
        String defType = getCurrentStyle().get("defaultType", "h1");
        tag = properties.get("type", defType);

        if (diffOutput == null) {
            titleText = title;
        } else {
            // we need to display the diff output
            // don't escape diff output
            titleText = diffOutput;
        }
    }

    public String getTitleText() {
        return titleText;
    }
    public String getTag() {
        return tag;
    }
    public String getPreset() {
        return preset;
    }
    public String getLinkTo() {
        return linkTo;
    }

}
package apps.rachelcruze.components.aboutmebox;

import com.adobe.cq.sightly.WCMUse;
import com.day.cq.wcm.api.WCMMode;
import org.apache.sling.api.resource.ValueMap;
import com.day.cq.wcm.foundation.Image;
import com.day.cq.wcm.api.components.DropTarget;
import com.day.cq.wcm.foundation.Placeholder;
import com.day.cq.commons.Doctype;

public class AboutMeBoxDataProvider extends WCMUse {

    private Image image = null;
    private String placeholder = null;

    @Override
    public void activate() {
        boolean isAuthoringUIModeTouch = Placeholder.isAuthoringUIModeTouch(getRequest());
        System.out.println("amb");
        image = new Image(getResource(), "image");

        if (isAuthoringUIModeTouch) {
            image.setNoPlaceholder(true);
        }

        //drop target css class = dd prefix + name of the drop target in the edit config
        String ddClassName = DropTarget.CSS_CLASS_PREFIX + "image";

        if (image.hasContent() || getWcmMode().isEdit()) {
            image.loadStyleData(getCurrentStyle());
            // add design information if not default (i.e. for reference paras)
//            if (!getCurrentDesign().equals(resourceDesign)) {
//                image.setSuffix(getCurrentDesign().getId());
//            }
            image.addCssClass(ddClassName);
            image.setSelector(".img");
            image.setDoctype(Doctype.fromRequest(getRequest()));

            //String divId = "cq-textimage-jsp-" + getResource().getPath();
            String imageHeight = image.get(image.getItemName(Image.PN_HEIGHT));
        }

        placeholder = (isAuthoringUIModeTouch && !image.hasContent())
                ? Placeholder.getDefaultPlaceholder(getRequest(), getComponent(), "", ddClassName)
                : "";
    }

    public Image getImage() {
        return image;
    }

    public String getPlaceholder() {
        return placeholder;
    }
}
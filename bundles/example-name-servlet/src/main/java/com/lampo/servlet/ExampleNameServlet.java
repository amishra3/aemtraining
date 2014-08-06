package com.lampo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Properties;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Reference;
import org.apache.felix.scr.annotations.Service;
import org.apache.sling.api.SlingHttpServletRequest;
import org.apache.sling.api.SlingHttpServletResponse;
import org.apache.sling.api.servlets.SlingSafeMethodsServlet;
import org.apache.sling.commons.json.JSONArray;
import org.apache.sling.commons.json.JSONException;
import org.apache.sling.commons.json.io.JSONStringer;
import org.apache.sling.commons.json.JSONException;
import com.lampo.service.ExampleNameService;

@Component(immediate = true, metatype = true, label = "CrawlServlet")
@Service
@Properties({
    @Property(name = "sling.servlet.paths", value = "/bin/example/names"),
    @Property(name = "sling.servlet.methods", value = "GET")
})
public class ExampleNameServlet extends SlingSafeMethodsServlet {
    
    private final Logger logger = Logger.getLogger(ExampleNameServlet.class.getName());
    @Reference
    private ExampleNameService exampleNameService;
    
    @Override
    protected void doGet(SlingHttpServletRequest request, SlingHttpServletResponse response)
            throws ServletException, IOException {
        final PrintWriter writer = response.getWriter();
        final String[] namesJson;
        final JSONStringer jsonStringer = new JSONStringer();
        final JSONArray names;
        
        try {
            namesJson = exampleNameService.getNames();
            names = new JSONArray(Arrays.asList(namesJson));        
            jsonStringer.object().key("names").value(names).endObject();
            writer.print(jsonStringer.toString());
        } catch (JSONException ex) {
            logger.log(Level.SEVERE, "error parsing json", ex);
            writer.print("{'error': 'error parsing names'}");
        }

        response.setContentType("application/json;charset=utf-8");
    }
}
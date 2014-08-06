package com.lampo.impl;

import java.util.Dictionary;
import java.util.logging.Logger;
import org.apache.felix.scr.annotations.Activate;
import org.apache.felix.scr.annotations.Component;
import org.apache.felix.scr.annotations.Property;
import org.apache.felix.scr.annotations.Service;
import org.apache.felix.scr.annotations.PropertyUnbounded;
import org.apache.sling.commons.osgi.PropertiesUtil;
import org.osgi.service.component.ComponentContext;
import com.lampo.service.ExampleNameService;

@Component(immediate = true, metatype = true, label = "Example Service")
@Service
public class ExampleNameServiceImpl implements ExampleNameService {

    private final Logger logger = Logger.getLogger(ExampleNameServiceImpl.class.getName());
    /* example property */
    @Property(label = "Example Names Property", description = "property description goes here", unbounded = PropertyUnbounded.ARRAY)
    private static final String DEFAULT_NAMES = "prop.names";
    private String[] names;

    @Override
    public String[] getNames() {
        return names;
    }

    @Override
    public void setNames(String[] names) {
        this.names = names;
    }
    
    @Activate
    protected void activate(ComponentContext ctx) {
        final Dictionary<?, ?> properties = ctx.getProperties();
        names = PropertiesUtil.toStringArray(properties.get(DEFAULT_NAMES), new String[0]);
    }
}
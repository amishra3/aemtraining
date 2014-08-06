package com.lampo;

import com.lampo.impl.ExampleNameServiceImpl;
import org.junit.Assert;
import org.junit.Test;

public class ExampleNameTest {

    @Test
    public void testGettingNamesArray() {
        ExampleNameServiceImpl ex = new ExampleNameServiceImpl();
        String name1 = "Batman";
        String name2 = "Robin";
        ex.setNames(new String[]{name1, name2});
        
        String[] expected = {name1, name2};
        String[] actual = ex.getNames();

        Assert.assertArrayEquals("Name should be lower case", expected, actual);
    }
}

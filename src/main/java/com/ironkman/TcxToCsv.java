/**
 * Copyright (c) 2014 by Kamen Yotov
 */

package com.ironkman;

import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;
import java.io.File;
import java.io.InputStream;

public class TcxToCsv {
    public static void main(String... args)
            throws TransformerException
    {
        TransformerFactory factory = TransformerFactory.newInstance();
        InputStream xslStream = TcxToCsv.class.getResourceAsStream("/TcxToCsv.xsl");
        Source xslSource = new StreamSource(xslStream);
        Transformer transformer = factory.newTransformer(xslSource);

        Source xmlSource = new StreamSource(new File(args[0]));
        transformer.transform(xmlSource, new StreamResult(System.out));
    }
}

/*
 * Biblioteca de codigo fonte criada por Rafael Pereira
 * Proibido o uso sem autorizacao formal do autor
 *
 * rpoliveirati@gmail.com
 */
package br.com.pucrio.inf.biobd.outertuning.bib.configuration;

import javax.servlet.ServletContext;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Properties;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Configuration {

    public static final String PARAMETERS = "/WEB-INF/parameters";

    private static Properties prop;

    private final ServletContext context;

    public Configuration() {
        this(null);
    }

    public Configuration(ServletContext context) {
        this.context = context;
        this.getPropertiesFromFile();
    }

    private void getPropertiesFromFile() {
        if (Configuration.prop == null) {
            try {
                Configuration.prop = new Properties();
                Properties propTemp = new Properties();
                Set<String> paths = context.getResourcePaths(PARAMETERS);
                for (String path : paths) {
                    if (path.endsWith(".properties")) {
                        try (InputStream is = context.getResourceAsStream(path)) {
                            propTemp.load(is);
                            propTemp.values().stream().map(Object::toString).filter(s -> s.endsWith(".properties"))
                                    .map(this::readProp)
                                    .forEach(prop::putAll);
                            prop.putAll(propTemp);
                        }
                    }
                }
            } catch (IOException e) {
                System.err.print(e);
            }
        }
    }

    private Properties readProp(String value) {
        try (InputStream is = context.getResourceAsStream(PARAMETERS + value)) {
            Properties temp = new Properties();
            temp.load(is);
            return temp;
        } catch (IOException e) {
            System.err.print(e);
            return null;
        }
    }

    public URI getResourceURI(String property) {
        try {
            return this.context.getResource("/WEB-INF/" + property).toURI();
        } catch (MalformedURLException | URISyntaxException e) {
            return null;
        }
    }

    public String clearNameFile(String nameFile) {
        String name = nameFile.toLowerCase().replace("http://", "");
        name = name.toLowerCase().replace("/", ".");
        name = name.toLowerCase().replace("?", "_");
        name = name.toLowerCase().replace(" ", "_");
        name = name.replaceAll("[^\\p{ASCII}]", "");
        return name;
    }

    protected String removerNl(String frase) {
        String padrao = "\\s{2,}";
        Pattern regPat = Pattern.compile(padrao);
        Matcher matcher = regPat.matcher(frase);
        String res = matcher.replaceAll(" ").trim();
        return res.replaceAll("(\n|\r)+", " ");
    }

    public void setProperty(String key, String value) {
        prop.setProperty(key, value);
    }

    public String getProperty(String key) {
        return prop.getProperty(key);
    }

    public boolean containsKey(String key) {
        return prop.containsKey(key);
    }

}

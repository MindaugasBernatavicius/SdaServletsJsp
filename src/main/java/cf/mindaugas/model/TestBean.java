package cf.mindaugas.model;


import java.util.ArrayList;
import java.util.List;

public class TestBean {
    private String message = "No message specified";
    private List<String> someCollection;

    public String getMessage() {
        return(message);
    }
    public void setMessage(String message) {
        this.message = message;
    }

    public List<String> getSomeCollection() {
        return new ArrayList(){{ add("ABC"); add("DEF"); add("DEF"); }};
    }

    public void setSomeCollection(List<String> someCollection) {
        this.someCollection = someCollection;
    }
}
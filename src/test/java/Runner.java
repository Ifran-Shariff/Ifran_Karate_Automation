import com.intuit.karate.junit5.Karate;

public class Runner {
    @Karate.Test
    public Karate Run(){
        return Karate.run("KarateTest/queryParameter.feature").relativeTo(getClass());

    }
}

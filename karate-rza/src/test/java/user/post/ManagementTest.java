package user.post;

import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class ManagementTest {
    @Test
    void testParallel(){
        Runner.path("classpath:user").tags("~@ignore").parallel(4);
    }
}

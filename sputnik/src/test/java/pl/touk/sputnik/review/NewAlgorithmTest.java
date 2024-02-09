import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertThrows;

import org.junit.Test;

public class NewAlgorithmTest {
    @Test
    public void testAdd() {
        NewAlgorithm algorithm = new NewAlgorithm();
        assertEquals(5, algorithm.add(2, 3));
        assertEquals(-1, algorithm.add(-4, 3));
        assertEquals(0, algorithm.add(0, 0));
    }

    @Test
    public void testSubtract() {
        NewAlgorithm algorithm = new NewAlgorithm();
        assertEquals(-1, algorithm.subtract(2, 3));
        assertEquals(-7, algorithm.subtract(-4, 3));
        assertEquals(0, algorithm.subtract(0, 0));
    }

    @Test
    public void testMultiply() {
        NewAlgorithm algorithm = new NewAlgorithm();
        assertEquals(6, algorithm.multiply(2, 3));
        assertEquals(-12, algorithm.multiply(-4, 3));
        assertEquals(0, algorithm.multiply(0, 0));
    }

    @Test
    public void testDivide() {
        NewAlgorithm algorithm = new NewAlgorithm();
        assertEquals(2, algorithm.divide(6, 3));
        assertEquals(-2, algorithm.divide(-6, 3));
        assertEquals(0, algorithm.divide(0, 5));

        // Test division by zero
        assertThrows(IllegalArgumentException.class, () -> algorithm.divide(6, 0));
    }

    @Test
    public void testModulo() {
        NewAlgorithm algorithm = new NewAlgorithm();
        assertEquals(1, algorithm.modulo(6, 5));
        assertEquals(3, algorithm.modulo(10, 7));

        // Test modulo by zero
        assertThrows(IllegalArgumentException.class, () -> algorithm.modulo(6, 0));
    }
}

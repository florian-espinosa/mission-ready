public class MathClass {

    // Add 2 numbers 20 + 30 = 50
    public static void addTwoNumbers() {
        Integer firstNum = 20;
        Integer secondNum = 30;
        Integer output = firstNum + secondNum;
        System.debug(output);
    }
    
    public static void addTwoDecimals() {
        Decimal firstNum = 100.30;
        Decimal secondNum = 200.20;
        Decimal output = firstNum + secondNum;
        System.debug(output);
    }
    
    public static void addDecimals(Decimal num1, Decimal num2) {
        Decimal output = num1 + num2;
        System.debug(output);
    }
    
    public static void multiplyTwoNumbers() {
        Integer firstNum = 100;
        Integer secondNum = 20;
        Integer output = firstNum*secondNum;
        System.debug(output);
    }
    
    public static void multiplyNumbers(Integer num1, Integer num2) {
        Integer output = num1*num2;
        System.debug(output);
    }
    
    public static void mathExercise() {
    	Double num1 = Math.random();
    	System.debug('num1 value: ' + num1);
    	num1 = (num1 * 2) + 4;
    	Double num2 = Math.round(num1);
    	System.debug('num2 value: ' + num2);
    	System.debug('larger value: ' + Math.max(num1,num2));

        Decimal num3 = num2.intValue();
        System.debug('floor value: '+Math.floor(num3));
        
	}
    
}
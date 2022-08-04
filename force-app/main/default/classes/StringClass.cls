public class StringClass {
    
    /*
    // printing colors
    public static void printColor() {
        String color = 'Black';
        color = color + ' & White';
        System.debug(color);
    }
    */
    
    public static void printCountry() {
        String country1 = 'New Zealand';
        String country2 = 'Australia';
        String country3 = 'India';
        String country4 = 'Canada';
        String output = country1+'--'+country2+'--'+country3+'--'+country4;
        System.debug(output);
        System.debug(output.length());
        System.debug(output.toLowerCase());
        System.debug(output.toUpperCase());
        System.debug('Location of Z:' + output.indexOf('Z'));
    }
	
}
public class Mission5 {
    public static void dingDong() {
        // Create a List and store inputs 12, 20, 30, 17
        List<Integer> inputs = new List<Integer>{12,20,30,17};
        Integer num;
        String message;
        // Loop through the List
        for (Integer ctr=0; ctr < inputs.size(); ctr++) {
            // Display “Ding” if “input” is multiples of 3, 
            // “Dong” if it is multiples of 5,
            // "DingDong" if multiples of both 3 and 5,
            // Returns the input number if neither multiples of 3 or 5
            num = inputs.get(ctr);
            message = String.valueOf(num);
            if (Math.mod(num,3) == 0) {
                message = 'Ding';
            }
            if (Math.mod(num,5) == 0) {
                message = 'Dong';
            }
            if (Math.mod(num,3) == 0 && Math.mod(num,5) == 0) {
                message = 'DingDong';
            }     
            System.debug(message);
        }
    }
}

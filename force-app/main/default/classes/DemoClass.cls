public with sharing class DemoClass {
    // check eligibility
    public static void checkBonus() {
        Integer rating = 9;
        Integer bonus;
        if (rating == 10) {
            bonus = 10000;
        } else if (rating >= 5 && rating <= 9) {
            bonus = 5000;
        } else {
            bonus = 100;
        }
        System.debug('Bonus is '+bonus);
    }

    public static void checkBonus(Integer rating) {
        Integer bonus;
        if (rating == 10) {
            bonus = 10000;
        } else if (rating >= 5 && rating <= 9) {
            bonus = 5000;
        } else {
            bonus = 100;
        }
        System.debug('Bonus is '+bonus);
    }

    public static void displayNumbers() {
        List<Integer> numberList = new List<Integer>();
        numberList.add(1);
        numberList.add(2);
        numberList.add(3);
        numberList.add(4);
        numberList.add(5);
        numberList.add(6);
        numberList.add(7);
        numberList.add(8);
        numberList.add(9);
        numberList.add(10);
        System.debug(numberList);
    }

}

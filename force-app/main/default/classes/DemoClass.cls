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
    
}

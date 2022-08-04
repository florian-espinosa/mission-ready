public class CheckCustomerType {
    public static void checkDiscount() {
        String customerType = 'Premium';
        Decimal discountRate;
        Boolean premiumSupport;
        if (customerType=='Premium') {
            discountRate = 0.1;
            premiumSupport = true;
        } else {
            discountRate = 0.05;
            premiumSupport = false;            
        }
        System.debug('Discount Rate: ' + discountRate);
        System.debug('Premium Support?: ' + premiumSupport);
    }

    public static void checkDiscountSwitch() {
        String customerType = 'Premium';
        Decimal discountRate;
        Boolean premiumSupport;
        switch on customerType {
            when 'Premium' {
                discountRate = 0.1;
                premiumSupport = true;            
            }
            when else {
                discountRate = 0.05;
                premiumSupport = false;           
            }
        }
        System.debug('Discount Rate: ' + discountRate);
        System.debug('Premium Support?: ' + premiumSupport);
    }

}

public class LoopClass {
    public static void whileLoop() {
        Integer age = 1;

        while (age < 18) {
            System.debug('You are not old enough at ' + age);
            age++;
        }
        System.debug('You are good to go at ' + age);
    }

    public static void doLoop() {
        Integer age = 10;
        do  {
            System.debug('You are not old enough at ' + age);
            age++;
        } while (age < 18);
        System.debug('You are good to go at ' + age);
    }

    public static void forLoop() {
        Integer age = 10;
        Integer ctr;
        for (ctr=1; ctr < age; ctr++) {
            System.debug('You are not old enough at ' + ctr);
        }

        System.debug('You are good to go at ' + ctr);
    }

    public static void evenLoop() {
        Integer num;
        for (num=1; num <= 20; num++) {
            if (Math.mod(num,2) == 0) {
                System.debug(num + ' is an even number.');
            }

        }
    }

    public static void switchLoop() {
        String dayOfWeek = 'Fri';
        switch on dayOfWeek {
            when 'Fri' {
                System.debug('Friday drinks');
            }
            when 'Sat' {
                System.debug('Sports day');
            }
            when 'Sun' {
                System.debug('Family day');
            }
            when else {
                System.debug('Exciting work');               
            }
        }
    }

    public static void sumNumbers() {
        Integer sum = 0;
        for (Integer num = 1; num <= 100; num++) {
            sum = sum + num;
        }
        System.debug(sum);
    }

}

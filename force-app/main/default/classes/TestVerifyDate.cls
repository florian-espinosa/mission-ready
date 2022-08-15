@isTest
private class TestVerifyDate {
    @isTest static void TestDateWithin30Days() {
        Date startDate = Date.newInstance(2022, 08, 13);
        Date endDate = Date.newInstance(2022, 08, 15);
        Date retDate = VerifyDate.CheckDates(startDate, endDate);
        System.assertEquals(endDate, retDate);
    }

    @isTest static void TestNotDateWithin30Days() {
        Date startDate = Date.newInstance(2022, 08, 13);
        Date endDate = Date.newInstance(2022, 10, 15);
        Date endOfMonth = Date.newInstance(2022, 08, 31);
        Date retDate = VerifyDate.CheckDates(startDate, endDate);
        System.assertEquals(endOfMonth, retDate);
    }

    @isTest static void TestSameDates() {
        Date startDate = Date.newInstance(2022, 08, 13);
        Date endDate = Date.newInstance(2022, 08, 13);
        Date retDate = VerifyDate.CheckDates(startDate, endDate);
        System.assertEquals(endDate, retDate);
    }

}

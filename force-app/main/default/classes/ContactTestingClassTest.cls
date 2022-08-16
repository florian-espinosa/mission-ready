@isTest
private class ContactTestingClassTest {
    @isTest static void testCreateContact() {
        Test.startTest();
        ContactTestingClass.CreateContact();

        List<Contact> conList = [SELECT Id, Name FROM Contact];
        System.debug(conList);

        String Name;
        for (Contact con : conList) {
            Name = con.Name;
        }
        System.assertEquals('Test 1', Name);
        Test.stopTest();
    }
}

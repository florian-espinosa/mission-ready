public with sharing class ContactTestingClass {
    public static void CreateContact() {
        Contact con = new Contact();
        con.FirstName = 'Test';
        con.LastName = 'Contact1';
        insert con;
        System.debug(con);
    }
    public static void CreateContactWithInputParameters(String varFirstName, String varLastName) {
        Contact con = new Contact();
        con.FirstName = varFirstName;
        con.LastName = varLastName;
        insert con;
        System.debug(con);
    }
    public static void GetContacts() {
        List<Contact> conList = [SELECT Id, FirstName, LastName FROM Contact WHERE CreatedDate = TODAY];
        System.debug(conList);
    }
}

public with sharing class CreateContacts {
    public static void createContacts() {
        List<Account> accList = [SELECT Id FROM Account WHERE Name = 'Testing Account'];
        List<Contact> conList = new List<Contact>();
        for (Account acc : accList) {
            Contact conRec = new Contact();
            conRec.FirstName = 'Tester';
            conRec.LastName = 'Contact';
            conRec.AccountId = acc.Id;
            conList.add(conRec);
        }
        insert conList;
        System.debug(conList);
    }
}

public with sharing class SObjectClass {
    public static void createContact() {
        Contact contactRec = new Contact();
        contactRec.FirstName = 'John';
        contactRec.LastName = 'Pitt';
        contactRec.MobilePhone = '12345';
        contactRec.Email = 'test@missionready.com';
        contactRec.MailingStreet = '10a Beeche Place';
        contactRec.MailingCity = 'Birkdale';
        insert contactRec;
        System.debug(contactRec);
    }

    public static void createBulkContacts() {

        List<Contact> contactRecs = new List<Contact>();
        Contact contactRec = new Contact();
        contactRec.FirstName = 'Florian';
        contactRec.LastName = 'Espinosa';
        contactRec.MobilePhone = '12345';
        contactRec.Email = 'florian@missionready.com';
        contactRec.MailingStreet = '1/103L Glengarry Road, Glen Eden';
        contactRec.MailingCity = 'Auckland';
        contactRecs.add(contactRec);
        Contact contactRec2 = new Contact();
        contactRec2.FirstName = 'John';
        contactRec2.LastName = 'Smith';
        contactRec2.MobilePhone = '12345';
        contactRec2.Email = 'test2@missionready.com';
        contactRec2.MailingStreet = '10b Beeche Place';
        contactRec2.MailingCity = 'Birkdale';
        contactRecs.add(contactRec2);      
        insert contactRecs;
        System.debug(contactRecs);
    }  

    public static void createOppWithAcc() {
        Opportunity oppRec = new Opportunity();
        oppRec.Name = 'New Opportunity';
        oppRec.CloseDate = Date.today();
        oppRec.StageName = 'Qualification';
        oppRec.AccountId = '0015i00000MDEl1AAH';
        insert oppRec;
        System.debug(oppRec);
    }


}

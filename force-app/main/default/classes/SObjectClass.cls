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

    public static void createAccConOpp() {
        Account accRec = new Account();
        accRec.Name = 'Demo Account';
        accRec.Rating = 'Hot';
        insert accRec;

        Contact conRec = new Contact();
        conRec.FirstName = 'Florian';
        conRec.LastName = 'Espinosa';
        conRec.AccountId = accRec.Id;
        insert conRec;

        Opportunity oppRec = new Opportunity();
        oppRec.Name = 'New Opportunity';
        oppRec.CloseDate = Date.today();
        oppRec.StageName = 'Qualification';
        oppRec.ContactId = conRec.Id;
        oppRec.AccountId = accRec.Id;
        insert oppRec;

        System.debug(accRec);
        System.debug(conRec);
        System.debug(oppRec);
    }

    public static void updateContacts() {
        Contact conRec = new Contact();
        conRec.FirstName = 'Test1';
        conRec.LastName = 'Test';
        insert conRec;
        Contact conRec2 = new Contact();
        conRec2.FirstName = 'Test2';
        conRec2.LastName = 'Test';
        insert conRec2;
        Contact conRec3 = new Contact();
        conRec3.FirstName = 'Test3';
        conRec3.LastName = 'Test';
        insert conRec3;
        Contact conRec4 = new Contact();
        conRec4.FirstName = 'Test4';
        conRec4.LastName = 'Test';
        insert conRec4;
        Contact conRec5 = new Contact();
        conRec5.FirstName = 'Test5';
        conRec5.LastName = 'Test';
        insert conRec5;

        Contact con = new Contact(Id = conRec.Id);
        con.Title = 'Developer';
        update con;
        Contact con2 = new Contact(Id = conRec2.Id);
        con2.Title = 'Developer';
        update con2;
        Contact con3 = new Contact(Id = conRec3.Id);
        con3.Title = 'Developer';
        update con3;
        Contact con4 = new Contact(Id = conRec4.Id);
        con4.Title = 'Developer';
        update con4;
        Contact con5 = new Contact(Id = conRec5.Id);
        con5.Title = 'Developer';
        update con5;
    }

    public static void bulkContacts() {
        List<Contact> contactList = new List<Contact>();
        Contact conRec = new Contact();
        conRec.FirstName = 'Test1';
        conRec.LastName = 'Test';
        contactList.add(conRec);
        Contact conRec2 = new Contact();
        conRec2.FirstName = 'Test1';
        conRec2.LastName = 'Test';
        contactList.add(conRec2);
        Contact conRec3 = new Contact();
        conRec3.FirstName = 'Test1';
        conRec3.LastName = 'Test';
        contactList.add(conRec3);
        insert contactList;
        System.debug(contactList);

        List<Contact> updatedContact = new List<Contact>();
        for (Contact con : contactList) {
            con.Department = 'Testing Lab';
            updatedContact.add(con);
        }
        update updatedContact;
        System.debug(updatedContact);
    }

    public static void createUpdateLeads() {
        List<Lead> leadList = new List<Lead>();
        Lead leadRec = new Lead();
        leadRec.FirstName = 'Testing';
        leadRec.LastName = 'Customer';
        leadRec.Company = 'ANZ Bank';
        leadRec.Status = 'Open - Not Contacted';
        leadList.add(leadRec);
        Lead leadRec2 = new Lead();
        leadRec2.FirstName = 'Testing';
        leadRec2.LastName = 'Customer';
        leadRec2.Company = 'Toyota New Zealand';
        leadRec2.Status = 'Open - Not Contacted';
        leadList.add(leadRec2);
        insert leadList;
        System.debug(leadList);

        List<Lead> updatedList = new List<Lead>();
        for (Lead rec : leadList) {
            rec.Rating = 'Hot';
            updatedList.add(rec);
        }
        update updatedList;
        System.debug(updatedList);
    }

    public static void getAccounts() {
        // SELECT Id, Name FROM Account
        List<Account> accList = [SELECT Id, Name FROM Account LIMIT 5];
        System.debug(accList);
        List<Account> updatedList = new List<Account>();
        for (Account acc : accList) {
            acc.Type = 'Customer - Direct';
            updatedList.add(acc);
        }
        update updatedList;
        System.debug(updatedList);

    }

    public static void getUpdateOpps() {
        // SELECT  Id, Name, CloseDate FROM Opportunity LIMIT 5
        List<Opportunity> oppList = [SELECT  Id, Name FROM Opportunity LIMIT 5];
        System.debug(oppList);
        List<Opportunity> updatedList = new List<Opportunity>();
        for (Opportunity opp : oppList) {
            opp.CloseDate= Date.today();
            updatedList.add(opp);
        }
        update updatedList;
        System.debug(updatedList);
    }

    public static void createOppWithAcc2() {
        Opportunity oppRec = new Opportunity();
        oppRec.Name = 'New Opportunity';
        oppRec.CloseDate = Date.today();
        oppRec.StageName = 'Qualification';
        oppRec.AccountId = '0015i00000MDEl1AAH';
        insert oppRec;
        System.debug(oppRec);
    }

    public static void createAccCon() {
        // Create account 1
        Account accRec = new Account();
        accRec.Name = 'Warehouse';
        // Create account 2
        Account accRec2 = new Account();
        accRec2.Name = 'Noel Leeming';
        // Create account list
        List<Account> accList = new List<Account>();
        // Populate the list and insert records
        accList.add(accRec);
        accList.add(accRec2);
        insert accList;
        // Create contact 1
        Contact conRec = new Contact();
        conRec.FirstName = 'Warehouse';
        conRec.LastName = 'Sales Engineer';
        conRec.AccountId = accRec.Id;
        // Create contact 2
        Contact conRec2 = new Contact();
        conRec2.FirstName = 'Noel Leeming';
        conRec2.LastName = 'Sales Engineer';
        conRec2.AccountId = accRec2.Id;
        // Create contact list 
        List<Contact> conList = new List<Contact>();
        // Populate list and insert records
        conList.add(conRec);
        conList.add(conRec2);
        insert conList;
        // Create list using SOQL
        List<Contact> conList2 = [SELECT Id  FROM  Contact WHERE CreatedDate = TODAY];
        // Create dump list
        List<Contact> updatedList = new List<Contact>();
        for (Contact rec : conList2) {
            // Update department
            rec.Department = 'Household Appliances';
            // Add record in dump list
            updatedList.add(rec);
        }
        // Update records using dump list
        update updatedList;

        System.debug(accList);
        System.debug(conList);
        System.debug(updatedList);
    }

    public static void updateContactCountry(String accountId){
        
        List<Contact> conList = [SELECT Id,Department,MailingCountry,AccountId FROM Contact where AccountId =: accountId and  Department= 'Household Applicances'  ];
           
          List<Contact> contactToUpdate = new List<Contact>();
          for (Contact con:conList){
              con.MailingCountry = 'New Zealand';    
              contactToUpdate.add(con);
          }  
          update contactToUpdate;
          
    }

    public static void createOpp(String varStage, Decimal varAmount, String varType, String varAccountId) {
        Opportunity newOpp = new Opportunity();
        newOpp.Name = 'New Opp';
        newOpp.StageName = varStage;
        newOpp.Amount = varAmount;
        newOpp.Type = varType;
        newOpp.AccountId = varAccountId;
        newOpp.CloseDate = Date.today();
        insert newOpp;

        Opportunity oppDet = [SELECT Name, StageName, Amount, Type, AccountId 
                              FROM Opportunity WHERE id = :newOpp.Id];
        System.debug(oppDet);
    }

}

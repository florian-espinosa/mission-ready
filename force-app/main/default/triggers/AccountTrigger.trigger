trigger AccountTrigger on Account (before insert, before update,after insert,after update) {
    // when Account is created then Rating should always be Hot
    for(Account acc:Trigger.new){
        If(Trigger.isBefore){
            If(Trigger.isInsert){
                if(acc.Name == 'Michael Hill'){
                    acc.Rating = 'Hot';
                    acc.Type = 'Other';
                }
            }
            If(Trigger.isUpdate){
                if(acc.Rating == 'Cold'){
                    acc.Type = 'Prospect';
                }
            }
        }
        
       // When Account is created with Name as "Testing Account" then contact should be created with Name as "Tester Contact"
       List<Contact> conList = new List<Contact>();
       If(Trigger.isAfter){
           If(Trigger.isInsert){
               Contact con = new Contact();
               con.FirstName = 'Tester';
               con.LastName = 'Contact';
               con.AccountId = acc.Id;
               conList.add(con);
               
               insert conList;
           }
           If(Trigger.isUpdate){
           
           
           }
       }
        
        
    }



}
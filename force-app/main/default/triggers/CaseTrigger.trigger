trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
    for (Case caseRec : Trigger.new) {
        if (Trigger.isAfter) {
            if (Trigger.isUpdate) {
                if (caseRec.Priority == 'High') {
                    List<Account> accList = [SELECT Id FROM Account WHERE Id = :caseRec.Id];
                    List<Account> accUpdList = new List<Account>();
                    for (Account accRec : accList) {
                        accRec.Rating = 'Hot';
                        accUpdList.add(accRec);
                    }
                    update accUpdList;
                }
            }
            if (Trigger.isInsert) {
                if (caseRec.Priority == 'Low') {
                    Account acc = new Account();
                    acc.Name = 'Partner Account';
                    acc.Type = 'Customer Direct';
                    insert acc;
                    Case updCase = [SELECT Id FROM CASE WHERE Id = :caseRec.Id];
                    updCase.AccountId = acc.Id;
                    update updCase;
                    
                }
            }            
        }
    }
}
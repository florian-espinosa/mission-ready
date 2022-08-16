trigger ContactTrigger on Contact (after insert, after update) {
    for (Contact con : Trigger.new) {
        if (con.FirstName == 'Warehouse' && con.LastName == 'Group') {
            Opportunity opp = new Opportunity();
            opp.Name = 'Golden Oppty';
            opp.ContactId = con.Id;
            insert opp;
        }
    }
}
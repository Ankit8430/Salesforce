public with sharing class updatePhoneOnContactUsingMap {
    public static void updatePhoneOnContact() {
        List<Account> accList=[Select Id,Phone,Name from Account where createddate=LAST_WEEK and Phone!=null];
        Map<Id,Account> accMaptoId=new Map<ID,Account>(accList);
        List<Contact> conList=[Select Id,Phone,AccountId from contact where AccountId IN: accMaptoId.keySet()];
        List<Contact> updatedContact=new List<Contact>();

        if(!conList.isEmpty()){
            for(Contact con:conList){
                con.Phone=accMaptoId.get(con.AccountId).Phone;
                updatedContact.add(con);
            }
        }
        if(!updatedContact.isEmpty()){
            update updatedContact;
        }
    }
}
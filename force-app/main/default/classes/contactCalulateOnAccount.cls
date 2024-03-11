public with sharing class contactCalulateOnAccount {
    @future
    public static void countContact(List<Id> accIds){
        List<Account>accList=[Select Id,Total_Contact__c,(Select Id from contacts) from Account where Id=:accIds];
        for(Account acc:accList){
            acc.Total_Contact__c=acc.Contacts.size();
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}
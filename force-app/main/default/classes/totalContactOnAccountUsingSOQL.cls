public with sharing class totalContactOnAccountUsingSOQL {
    public static void totalContactOnAccount() {
        List<Account> accList=[Select Id,Total_Contact__c,(Select Id from Contacts) from Account where CreatedDate=LAST_WEEK];
        for(Account acc:accList){
            acc.total_Contact__C=acc.Contacts.size();
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}
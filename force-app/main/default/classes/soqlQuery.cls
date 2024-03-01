public with sharing class soqlQuery {
    public static void standarObjectQueryPtoC(){
        List<Account> accList=[Select Id,Name,(Select Id,lastName from Contacts) from Account];
        for(Account acc:accList){
            System.debug('Account Id ==> '+acc.Id+' Account Name ==> '+acc.Name);
            for(Contact con:acc.Contacts){
                System.debug('Contact Id ==> '+con.Id+' LastName ==> '+con.LastName);
            }
        }
    }
    public static void standarObjectQueryCtoP(){
        List<Contact> conList=[Select ID,Name,AccountId,Account.Name from Contact];
        for(Contact con:conList){
            System.debug('Contact Id => '+con.Id+' Contact Name => '+con.Name+' Account Id => '+con.AccountId+' Account Name => '+con.Account.Name);
        }
    }
    public static void customObjectQueryCtoP(){
        List<feedback__c> feedList=[Select Id,Name,Customer__c,Customer__r.Name from feedback__c];
        for(feedback__c feed:feedList){
            System.debug('Id --> '+feed.id+' Name --> '+feed.Name+' Customer --> '+feed.Customer__c+' Customer Name --> '+feed.Customer__r.NAme);
        }
    }
    public static void customObjectPtoC(){
        List<Account__c>accList=[Select Id,Name,Total_Feedback_Rating__c,(Select Name from Feedbacks__r) from Account__c];
        for(Account__C acc:accList){
            System.debug('Name => '+acc.Name+' Total Feedback Rating => '+acc.Total_Feedback_Rating__c);
            for(Feedback__c feed:acc.Feedbacks__r){
                System.debug(feed.Name);
            }
        }
    }
}
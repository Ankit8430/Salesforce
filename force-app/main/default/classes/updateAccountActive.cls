public with sharing class updateAccountActive implements Database.Batchable<sObject>,Database.Stateful {
    public integer record=0;
   public Database.QueryLocator start(Database.BatchableContext bc){
    return Database.getQueryLocator([Select ID,Active__c from Account]);
   }
   public void execute(Database.BatchableContext bc,List<Account>accList){
        for(Account acc:accList){
            acc.Active__c='No';
        }
        if(!accList.isEmpty()){
            update accList;
        }
        record+=accList.size();
   }
   public void finish(Database.BatchableContext bc){
    System.debug('Total Record --> '+record);
   }
}
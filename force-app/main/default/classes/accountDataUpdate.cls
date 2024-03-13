public with sharing class accountDataUpdate implements Database.Batchable<sObject>,Database.stateful {
    public integer record=0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select Id from Account where CreatedDate=THIS_YEAR]);
    }
    public void execute(Database.BatchableContext bc,List<Account>accList){
        for(Account acc:accList){
            acc.Active__C='Yes';
        }
        if(!accList.isEmpty()){
            update accList;
        }
        record+=accList.size();
    }
    public void finish(Database.BatchableContext bc){
        System.debug('Total Record -->'+record);
    }
}
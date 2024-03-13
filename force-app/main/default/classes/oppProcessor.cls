public with sharing class oppProcessor implements Database.Batchable<sObject>,Database.stateful {
    public integer record=0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select Id,Name from Opportunity]);
    }
    public void execute(Database.BatchableContext bc,List<Opportunity>oppList){
        for(Opportunity op:oppList){
            op.LeadSource='Web';
        }
        if(!oppList.isEmpty()){
            update oppList;
        }
        record+=oppList.size();
    }
    public void finish(Database.BatchableContext bc){
        System.debug('Total Record --> '+record);
    }
}
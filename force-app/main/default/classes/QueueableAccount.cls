public with sharing class QueueableAccount implements Queueable {
    @TestVisible private static Boolean queueableAccountRun = true; 
    Map<Lead,Account> mapLeadAndAccount=new Map<Lead,Account>();
    List<lead>leadList;
    public QueueableAccount(List<Lead>leadList){
        this.leadList=leadList;
    }
    public void execute(QueueableContext context){
        for(Lead lead:leadList){
            Account acc=new Account(
                Name=lead.Company,
                Industry=lead.Industry,
                BillingStreet=lead.street,
                BillingCity=lead.City,
                BillingState=lead.State,
                BillingPostalCode=lead.PostalCode,
                BillingCountry=lead.Country);
            mapLeadAndAccount.put(lead,acc);
        }
        insert mapLeadAndAccount.values();

        if(queueableAccountRun){
            QueueableContact qc=new QueueableContact(mapLeadAndAccount);
            System.enqueueJob(qc);
        }
    }
}
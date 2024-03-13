public with sharing class MailToNewContact implements Database.Batchable<sObject>,Database.stateful {
    public integer record=0;
    Map<Id,Contact> IdMapContact=new Map<Id,Contact>();
    public MailToNewContact(Map<Id,Contact> IdMapContact){
        this.IdMapContact=IdMapContact;
    }
    public Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select Id,FirstName,LastName,Email from Contact where Id IN:IdMapContact.keySet()]);
    }
    public void execute(Database.batchableContext bc,List<Contact>conList){
        for(Contact con:conList){
            Messaging.SingleEmailMessage email=new Messaging.SingleEmailMessage();
            email.setToAddresses(new String[] {con.Email});
            email.setSubject('Welcom Mail');
            email.setPlainTextBody('Welcome Your Contact is created Successfully in Salesforce');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{email});
        }
        record+=conList.size();
    }
    public void finish(Database.BatchableContext bc){
        System.debug('Total Record --> '+record);
    }
}
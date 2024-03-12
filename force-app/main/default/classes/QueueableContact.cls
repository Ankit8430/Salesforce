public with sharing class QueueableContact implements Queueable {
    Map<Lead,Account> mapLeadAndAccount=new Map<Lead,Account>();
    public QueueableContact(Map<Lead,Account> mapLeadAndAccount) {
        this.mapLeadAndAccount=mapLeadAndAccount;
    }
    public void execute(QueueableContext context){
        List<Contact>conList=new List<Contact>();
        for(Lead lead:mapLeadAndAccount.keySet()){
            conList.add(new Contact(FirstName=lead.FirstName,LastName=lead.LastName,AccountId=mapLeadAndAccount.get(Lead).id));
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
}
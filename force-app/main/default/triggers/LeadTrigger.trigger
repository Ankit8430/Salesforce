trigger LeadTrigger on Lead (After insert) {
    if(Trigger.isAfter && Trigger.isInsert){
        QueueableAccount Qa=new QueueableAccount(Trigger.new);
        System.enqueueJob(Qa);
    }
}
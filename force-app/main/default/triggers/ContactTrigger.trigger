trigger ContactTrigger on Contact (before insert,before Update) {
    if(Trigger.isBefore && Trigger.isInsert){
        //ContactTriggerHandler.preventDuplicateRecord(Trigger.new,null);
    }
    if(Trigger.isBefore && Trigger.isUpdate){
        //ContactTriggerHandler.preventDuplicateRecord(Trigger.new,Trigger.oldMap);
    }
}
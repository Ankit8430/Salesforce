trigger ContactTrigger on Contact (after insert) {
    if(Trigger.isInsert && Trigger.isAfter){
        ContactTriggerHandler.sendEmailNotification(Trigger.new);
    }
}
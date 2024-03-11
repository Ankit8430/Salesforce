trigger TaskTrigger on Task (before delete) {
    if(Trigger.isBefore && Trigger.isDelete){
        TaskTriggerHandler.onlySystemAdimDeleteTask(Trigger.old);
    }
}
trigger AccountTrigger on Account (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
            //QueueableAccounTriggerHandler queueableAccount=new QueueableAccounTriggerHandler(Trigger.new);
            //system.enqueueJob(queueableAccount);
             //AccountTriggerHandler.createAccountandCopyShippingAddress(Trigger.new);
           // AccountTriggerHandler.beforeInsert(Trigger.new);
        }
        if(Trigger.isUpdate){
            //AccountTriggerHandler.totalAmountofRelatedOpp(Trigger.new);
           // AccountTriggerHandler.beforeUpdate(Trigger.new,Trigger.oldMap);
        }
        if(Trigger.isDelete){
            //AccountTriggerHandler.beforeDelete(Trigger.old);
        }
    }
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            //AccountTriggerHandler.updateClientContactFieldOnAccount(Trigger.new);
             //AccountTriggerHandler.sendMailToSystemAdmin(Trigger.new);
           // AccountTriggerHandler.afterInsert(Trigger.new);
        }
        if(Trigger.isUpdate){
            //AccountTriggerHandler.updateMultiPicklistContactAccToAccount(Trigger.new,Trigger.oldMap);
            //AccountTriggerHandler.updateMaillingAddressRelatedAllContact(Trigger.new,Trigger.oldMap);
   			//AccountTriggerHandler.sendEmailToAllContactWhenAccountTypeIsUpdate(Trigger.new,Trigger.oldMap);
            //AccountTriggerHandler.updateAlltheOpportunity(Trigger.new,Trigger.oldMap);
            //AccountTriggerHandler.afterUpdate(Trigger.new,Trigger.oldMap);
        }
        if(Trigger.isDelete){
            //AccountTriggerHandler.afterDelete(Trigger.old);
        }
        if(Trigger.isUndelete){
            //AccountTriggerHandler.afterUndelete(Trigger.new);
        }
    }
}
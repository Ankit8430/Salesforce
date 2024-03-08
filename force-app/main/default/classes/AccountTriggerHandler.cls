public class AccountTriggerHandler {
    public static void updateMultiPicklistContactAccToAccount(List<Account>accList,Map<Id,Account>accMap){
        Set<Id>accIds=new Set<Id>();
        for(Account acc:accList){
            if(accMap!=null && acc.MultiSelectPickList__c!=accMap.get(acc.id).MultiSelectPickList__c){
                accIds.add(acc.id);
            }
        }
        List<Contact> conList=[Select Id,Account.MultiSelectPickList__c,AccountID from Contact where AccountId IN:accIds];
        for(Contact con:conList){
            con.MultiSelectPickList__c=con.Account.MultiSelectPickList__c;
        }
        if(!conList.isEmpty()){
            update conList;
        }
    }
    /*public static void updateMaillingAddressRelatedAllContact(List<Account> accList,Map<Id,Account>accMap){
        Set<Id>accIds=new Set<Id>();
        for(Account acc:accList){
            if(accMap!=null && acc.BillingCity!=accMap.get(acc.id).BillingCity){
                accIds.add(acc.id);
            }
        }
        List<Contact> conList=[Select Id,AccountId,Account.BillingCity from Contact where AccountId IN:accIds];
        for(Contact con:conList){
            con.MailingCity=con.Account.BillingCity;
        }
        if(!conList.isEmpty()){
            update conList;
        }
    }
    public static void sendEmailToAllContactWhenAccountTypeIsUpdate(List<Account>accList,Map<Id,Account>accMap){
        Set<Id>accIds=new Set<Id>();
        for(Account acc:accList){
            if(accMap!=null && acc.Type!=accMap.get(acc.id).Type){
                accIds.add(acc.id);
            }
        }
        List<Contact>conList=[Select Id,Email,AccountId,Account.Name from Contact where AccountId IN:accIds];
        System.debug(conList);
        List<Messaging.Email> emailList=new List<Messaging.Email>();
        for(Contact con:conList){
            if(con.Email!=null){
                Messaging.SingleEmailMessage emailMsg=new Messaging.SingleEmailMessage();
                String[] toAddress=new String[]{con.Email};
                emailMsg.setToAddresses(toAddress);
                String emailSub='Account Update Info';
                emailMsg.setSubject(emailSub);
                String display='Ankit Gupta';
                emailMsg.setSenderDisplayName(display);
                String content='Your account information has been updated successfully. <br/><br/>'+
                   				'Account Name:'+con.Account.Name;
                emailMsg.setHtmlBody(content);
                emailList.add(emailMsg);
            }
        }
        Messaging.sendEmail(emailList);
    }
   public static void updateClientContactFieldOnAccount(List<Account>accList){
        List<Contact> conList=new List<Contact>();
        List<Account>accUpdateList=new List<Account>();
        Map<Id,Account>accMap=new Map<Id,Account>();
        for(Account acc:accList){
          conList.add(new Contact(LastName=acc.Name,AccountId=acc.id));
            accMap.put(acc.id,acc);
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        for(Contact con:conList){
            if(accMap.containsKey(con.AccountId)){
                accUpdateList.add(new Account(Id=con.AccountId,Client_Contact__c=con.Id));
            }
        }
        if(!accUpdateList.isEmpty()){
            update accUpdateList;
        }
    }
    public static void totalAmountofRelatedOpp(List<Account>accList){
        Set<Id> ids=new Set<Id>();
        Map<Id,Decimal> accIdToDecimal=new Map<Id,Decimal>();
        for(Account acc:accList){
            ids.add(acc.id);
        }
        for(Opportunity opp:[Select Id,Amount,AccountId from Opportunity where AccountId IN:ids]){
             Decimal total=0;
             if(accIdToDecimal.containsKey(opp.AccountId)){
                total=accIdToDecimal.get(opp.id);
            }
            if(opp.Amount!=null){
                total+=opp.Amount;
            }
           accIdToDecimal.put(opp.AccountId,total);
        }
        for(Account acc:accList){
            if(accIdToDecimal.containsKey(acc.id)){
                acc.Total_Opportunity_Amount__c=accIdToDecimal.get(acc.id);
            }
        }
    }
    public static void sendMailToSystemAdmin(List<Account>accList){
        List<Messaging.Email> emailList=new List<Messaging.Email>();
        User userInfo=[Select Id,Name,Email,Profile.Name from User where Profile.Name='System Administrator'];
        for(Account acc:accList){
            if(userInfo.Email!=null){
                Messaging.SingleEmailMessage emailMsg=new Messaging.SingleEmailMessage();
                String[] toAddress=new String[]{userInfo.Email};
                emailMsg.setToAddresses(toAddress);
                String emailSub='Welcome '+acc.Name;
                emailMsg.setSubject(emailSub);
                String displayName='Ankit Gupta';
                emailMsg.setSenderDisplayName(displayName);
                String content='An account has been created and the name is '+acc.Name;
                emailMsg.setHtmlBody(content);
                emailList.add(emailMsg);
            }
        }
    }
    public static void createAccountandCopyShippingAddress(List<Account>accList){
        for(Account acc:accList){
                acc.ShippingStreet=acc.BillingStreet;
                acc.ShippingState=acc.BillingState;
                acc.ShippingCity=acc.BillingCity;
                acc.ShippingCountry=acc.BillingCountry;
                acc.ShippingPostalCode=acc.BillingPostalCode;
            
        }
    }
    public static void updateAlltheOpportunity(List<Account>accList,Map<Id,Account>accMap){
        Set<Id>accIds=new Set<Id>();
        for(Account acc:accList){
            accIds.add(acc.id);
        }
        List<Opportunity>updateOppList=new List<Opportunity>();
        DateTime dat=System.now()+30;
        for(Opportunity opp:[Select Id,StageName,CloseDate,Name,AccountId from Opportunity where AccountId IN: accIds]){
            if(opp.CloseDate<dat && opp.StageName!='Close Won'){
              	updateOppList.add(new Opportunity(Id=opp.id,AccountId=opp.AccountId,StageName='Close Lost'));
            }
        }
        if(!updateOppList.isEmpty()){
            update updateOppList;
        }
    }
    public static void beforeInsert(List<Account>accList){
        for(Account acc:accList){
            if(acc.Industry==null || acc.Industry=='Media'){
                acc.Rating='Hot';
            }else{
                acc.Rating='Cold';
            }
        }
    }
    public static void afterInsert(List<Account>accList){
        List<Contact> conList=new List<Contact>();
        for(Account acc:accList){
            conList.add(new Contact(LastName='Contact '+acc.Name,AccountID=acc.id));
        }
        if(!conList.isEmpty()){
            insert conList;
        }
    }
    public static void beforeUpdate(List<Account>accList,Map<Id,Account>accMap){
        for(Account acc:accList){
            if(accMap!=null && acc.Phone!=accMap.get(acc.Id).Phone){
                acc.Description='Phone has been Updated.';
            }
        }
    }
    public static void afterUpdate(List<Account> accList,Map<Id,Account>accMap){
		Map<Id,Account>accIdtoMap=new Map<Id,Account>();
        for(Account acc:accList){
            if(accMap!=null && acc.Phone!=accMap.get(acc.id).Phone){
                accIdtoMap.put(acc.id,acc);
            }
        }
		List<Contact> conList=new List<Contact>();
        for(Contact con:[Select Id,AccountId,Phone from Contact where AccountID IN:accIdtoMap.keySet()]){
            conList.add(new Contact(Id=con.id,Phone=accIdtoMap.get(con.AccountID).Phone));
        }        
        if(!conList.isEmpty()){
            update conList;
        }
    }
    public static void beforeDelete(List<Account>accList){
        for(Account acc:accList){
            if(acc.Active__c=='Yes'){
               // acc.addError('Account Can not be delete beacuse Account is active');
            }
        }
    }
    public static void afterDelete(List<Account>accList){
        List<Contact> conList=new List<Contact>();
        for(Account acc:accList){
            for(Contact con:[Select Id,AccountId from Contact where AccountId=:acc.id]){
                conList.add(con);
            }
        }
        if(!conList.isEmpty()){
            delete conList;
        }
    }
    public static void afterUndelete(List<Account>accList){
        List<Account>accListUpdate=new List<Account>();
        for(Account acc:accList){
            accListUpdate.add(new Account(Id=acc.id,Active__C='Yes'));
        }
        if(!accListUpdate.isEmpty()){
            undelete accListUpdate;
        }
    }*/
}
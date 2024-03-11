public with sharing class countCaseAcctoPhonWebandEmailOnAccount {
    @Future
    public static void countCase(List<Id> recordIds){
        List<account>accList=[Select Id,(Select Id,Origin from Cases) from Account where Id=:recordIds];
        Integer phone=0,email=0,web=0;
        for(Account acc:accList){
            phone=0;email=0;web=0;
            for(Case cas:acc.Cases){
                if(cas.Origin=='Phone'){
                    phone++;
                }if(cas.Origin=='Email'){
                    email++;
                }if(cas.Origin=='Web'){
                    web++;
                }
            }
            acc.Total_Email_On_Case__c=email;
            acc.Total_Phone_on_Case__c=phone;
            acc.Total_Web_on_Case__c=web;
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}
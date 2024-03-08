public with sharing class ContactTriggerHandler {
   public static void preventDuplicateRecord(List<Contact>conList,Map<Id,Contact>conMap){
        Map<String,Contact>emailMap=new Map<String,Contact>();
      	Map<String,Contact>phoneMap=new Map<String,Contact>();
       for(Contact con:conList){
            emailMap.put(con.Email,con);
            phoneMap.put(con.Phone,con);
       }
       for(Contact con:conList){
           if(conMap!=null && conMap.get(con.id).Email!=null){
               emailMap.put(conMap.get(con.id).Email,con);
           }if(conMap!=null && conMap.get(con.id).Phone!=null){
               emailMap.put(conMap.get(con.id).Phone,con);
           }
       }
       List<Contact> exitingContact=[Select Id,Name,Phone,Email from Contact where Email IN: emailMap.keySet() OR Phone IN: phoneMap.keySet()];
       String errorMessage='';
       Map<Contact,String> stringConMap=new Map<Contact,String>();
       for(Contact conRecord:exitingContact){
           if(conRecord.Email!=null && emailMap.get(conRecord.Email)!=null){
               errorMessage+='email';
           }
           if(conRecord.Phone!=null && emailMap.get(conRecord.Phone)!=null){
               errorMessage+='Phone';
           }
           stringConMap.put(conRecord,errorMessage);
       }
   }
}
public with sharing class createAccountRecordWithAnotherOrg {
    public static void createAccountRecord(String name,String phone,String email){
        if(schema.sObjectType.Account__c.isAccessible()){
            if(schema.sObjectType.Account__c.fields.Name.isAccessible() &&
               schema.sObjectType.Account__c.fields.Phone__c.isAccessible()&&
               schema.sObjectType.Account__c.fields.Email__C.isAccessible()){
                try{
                    Account__c acc=new Account__c(
                        Name=name,
                        Phone__c=phone,
                        Email__c=email
                    );
                    insert acc;
                }
                catch(Exception e){
                    System.debug(e.getMessage());
                }
            }
        }
        createAccountRecordInAnother(name,phone,email);
    }
    @future(callout=true)
    private static void createAccountRecordInAnother(String name,String phone,String email){
        calloutAccount.createAccountRecordInAnotherOrg(name,phone,email);
    }
}
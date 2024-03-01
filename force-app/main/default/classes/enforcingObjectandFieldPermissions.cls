public with sharing class enforcingObjectandFieldPermissions {
    public static void enforcingObjectandFieldPermissionsInsert() {
        List<Account> accList=new List<Account>();
        if(Schema.sObjectType.Account.isAccessible() && Schema.sObjectType.Account.fields.Name.isAccessible()){
            for(Integer i=1;i<=5;i++){
                Account acc=new Account(Name='Ankit'+i);
                accList.add(acc);
            }
        }
        if(!accList.isEmpty()){
            insert accList;
        }
    }
    public static void enforcingObjectandFieldPermissionsUpdate(){
     if(Schema.SObjectType.Account.isAccessible()){
            if(Schema.SObjectType.Account.fields.Id.isAccessible() &&
            Schema.SobjectType.Account.fields.Name.isAccessible() &&
            Schema.sObjectType.Account.fields.Phone.isAccessible()){
                List<Account>accList=[Select Id,Name,Phone from Account where CreatedDate=TODAY];
                for(Account acc:accList){
                    acc.Phone='8899031727';
                }
                if(!accList.isEmpty()){
                    update accList;
                }
            }
        }
    }
    public static void enforcingObjectandFieldPermissionsDelete(){
        if(Schema.SObjectType.Account.isAccessible()){
            if(Schema.SObjectType.Account.fields.Id.isAccessible() &&
            Schema.SObjectType.Account.fields.Name.isAccessible() &&
            Schema.SObjectType.Account.fields.Phone.isAccessible()){
                List<Account>accList=[Select Id,Name,Phone from Account where createddate=today];
                if(!accList.isEmpty()){
                    delete accList;
                }
            }
        }
    }
    public static void enforcingObjectandFieldPermissionsUndelete(){
        if(Schema.SObjectType.Account.isAccessible()){
            if(schema.SobjectType.Account.fields.Id.isAccessible() && 
            Schema.SObjectType.Account.fields.Name.isAccessible()){
                List<Account> accList=[Select Id,Name from Account where CreatedDate=TODAY All Rows];
                if(!accList.isEmpty()){
                    undelete accList;
                }
            }
        }
    }
}
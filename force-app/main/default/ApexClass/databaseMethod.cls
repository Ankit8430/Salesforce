public with sharing class databaseMethod {
  public static void databaseInsertMethod(){
    List<Contact> conList=new List<Contact>();
    for(Integer i=1;i<=10;i++){
        conList.add(new Contact(LastName='Gupta'+i));
    }
    conList.add(new Contact());
    conList.add(new Contact(LastName='Gupta12'));
    conList.add(new Contact());
    Database.SaveResult[] saveResultList=Database.insert(conList,false);

    for(Database.SaveResult save:saveResultList){
        if(save.isSuccess()){
            System.debug('Successfully ==> '+save.getId());
        }else{
            for(Database.Error error:save.getErrors()){
                System.debug('Following Error');
                System.debug(error.statuscode+' : '+error.getMessage());
                System.debug('Contact Field '+error.getFields());
            }
        }
    }
  }
  public static void databaseUpdateMethod(){
    List<Contact> conList=[Select Id,LastName,Phone from Contact];
    List<Contact> updateConList=new List<Contact>();
    for(Contact con:conList){
        con.Phone='8899031727';
        updateConList.add(con);
    }
    Database.SaveResult [] updateSaveResult=Database.update(updateConList,false);
    for(Database.SaveResult save:updateSaveResult){
        if(save.isSuccess()){
            System.debug('Successfully updated ==> '+save.getId());
        }else{
            for(Database.Error error:save.getErrors()){
                System.debug('Error ==>');
                System.debug(error.statuscode+' : '+error.getMessage());
                System.debug('Contact Field ==>'+error.getFields());
            }
        }
    }
  }
  public static void databaseUpsertMethod(){
    List<Contact> conList=[Select Id,Email from Contact];
    List<Contact> upsertConList=new List<Contact>();
    for(Contact con:conList){
        con.Email='ankitgu8430@gmail.com';
        upsertConList.add(con);
    }
    upsertConList.add(new Contact());
    upsertConList.add(new Contact(lastName='Ankit'));
    
    Database.UpsertResult[] upsertList=Database.upsert(upsertConList, false);
    for(Database.UpsertResult upsertRes:upsertList){
        if(upsertRes.isSuccess()){
            System.debug('Successfully Upsert ==> '+upsertRes.getId());
        }else{
            for(Database.Error error:upsertRes.getErrors()){
                System.debug('Error ==>');
                System.debug(error.statuscode+' : '+error.getMessage());
                System.debug('Contact Field ==>'+error.getFields());
            }
        }
    }
  }
  public static void databaseDeleteMethod(){
    List<Account> accList=[Select Id from Account];
    Database.DeleteResult[] deleteResList=Database.delete(accList,false);
    for(Database.DeleteResult deleteRes:deleteResList){
        if(deleteRes.isSuccess()){
            System.debug('Sucessfully Delete ==> '+deleteRes.getId());
        }else{
            for(Database.Error error:deleteRes.getErrors()){
                System.debug('Error ==>');
                System.debug(error.statuscode+' : '+error.getMessage());
                System.debug('Account Field ==>'+error.getFields());
            }
        }
    }
  }
  public static void dataseUndeleteMethod(){
    List<Account>accList=[Select Id from Account];
    Database.UndeleteResult[] undeleteResList=Database.undelete(accList,false);
    for(Database.UndeleteResult undeleteRes:undeleteResList){
        if(undeleteRes.isSuccess()){
            System.debug('Successfull Undelete ==> '+undeleteRes.getId());
        }else{
            for(Database.Error error:undeleteRes.getErrors()){
                System.debug('Error ==>');
                System.debug(error.statuscode+' : '+error.getMessage());
                System.debug('Account Field ==>'+error.getFields());
            }
        }
    }
  }
}
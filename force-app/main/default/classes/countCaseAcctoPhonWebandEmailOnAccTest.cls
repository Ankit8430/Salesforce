@isTest
public with sharing class countCaseAcctoPhonWebandEmailOnAccTest {
   @isTest
   private static void countCaseTest(){
    List<Account>accList=new List<Account>();
    List<Case>caseList=new List<Case>();
    List<ID> recordIds=new List<ID>();
    for(Integer i=1;i<=5;i++){
        accList.add(new Account(Name='Ankit'+i));
    }
    if(!accList.isEmpty()){
        insert accList;
    }
    for(Account acc:accList){
        for(Integer i=1;i<=3;i++){
            caseList.add(new Case(AccountId=acc.id,Status='New',Origin='Phone'));
        }
        for(Integer i=1;i<=3;i++){
            caseList.add(new Case(AccountId=acc.id,Status='New',Origin='Email'));
        }
        for(Integer i=1;i<=3;i++){
            caseList.add(new Case(AccountId=acc.id,Status='New',Origin='Web'));
        }
     }
     if(!caseList.isEmpty()){
        insert caseList;
     }
     for(Account acc:accList){
        recordIds.add(acc.id);
     }
     Test.startTest();
     countCaseAcctoPhonWebandEmailOnAccount.countCase(recordIds);
     Test.stopTest();
     List<Account> updateAccList=[Select Id,Total_Email_On_Case__c from Account where Id=:accList[0].Id];
     System.assertEquals(3, updateAccList[0].Total_Email_On_Case__c);
   }
}
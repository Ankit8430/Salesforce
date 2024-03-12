@isTest
public with sharing class updateParentAccountTest {
    @isTest
    private static void executeTest(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<=5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
         insert accList;
        }
        Account parentAcc=new Account(Name='Ankit Gupta');
        Test.startTest();
        updateParentAccount up=new updateParentAccount(accList,parentAcc.id);
        Id jobId=System.enqueueJob(up);
        Test.stopTest();
    }
}
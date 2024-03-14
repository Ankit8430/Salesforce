@isTest
public with sharing class createAccountRecordWithAnotherOrgTest {
    @isTest
    private static void createAccountRecordWithAnotherOrgTestTest(){
        Account__c acc=new Account__c(Name='Ankit',Phone__c='8899031727',Email__c='ankitgu@gmail.com');
        insert acc;
        Test.startTest();
        createAccountRecordWithAnotherOrg.createAccountRecord(acc.Name,acc.Phone__C,acc.email__C);
        Test.stopTest();
    }
}
@isTest
public with sharing class testSetupTest {
    @TestSetup
    private static void setup(){
        Account acc=new Account(Name='Ankit');
        insert acc;
    }
    @isTest
    private static void updatePhone(){
        test.startTest();
        Account acc=[Select Id,Name,Phone from Account where Name='Ankit'];
        acc.Phone='8899031727';
        update acc;
        test.stopTest();
    }
}
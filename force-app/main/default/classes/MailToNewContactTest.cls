@isTest
public with sharing class MailToNewContactTest {
    @isTest
    private static void test(){
        List<Contact>conList=new List<Contact>();
        for(Integer i=2;i<=300;i++){
            conList.add(new Contact(LastName='Con '+i,Email='ankitgu8430@gmail.com'));
        }
        Test.startTest();
        if(!conList.isEmpty()){
            insert conList;
        }
        Test.stopTest();
    }
}
@isTEst
public with sharing class contactCalulateOnAccountTest {
    @isTest
    private static void coutContactTest(){
        List<Account>accList=new List<Account>();
        List<contact>conList=new List<Contact>();
        List<Id>accIds=new List<Id>();
        for(Integer i=1;i<=5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        for(Account acc:accList){
            conList.add(new Contact(LastName=acc.Name,AccountId=acc.id));
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        for(Account acc:accList){
            accIds.add(acc.id);
        }
        Test.startTest();
        contactCalulateOnAccount.countContact(accIds);
        Test.stopTest();
        List<Account>UpdateAccList=[Select Id,Total_Contact__c,(Select Id from contacts) from Account where Id=:accList[0].Id];
        System.assertEquals(1,UpdateAccList[0].Total_Contact__c);
    }
}
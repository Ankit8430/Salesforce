@isTest
public with sharing class accountDataUpdateTest {
    @isTest
    private static void test(){
        List<Account>accList=new List<Account>();
        for(Integer i=1;i<=5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        Test.startTest();
        accountDataUpdate ad=new accountDataUpdate();
        Id accIDs=Database.executeBatch(ad);
        Test.stopTest();
    }
}
@isTest
public with sharing class updateRatingUsingFutureTest {
    @isTest
    private static void updateRatingTest(){
        List<Account>accList=new List<Account>();
        List<Id>recordIds=new List<Id>();
        for(Integer i=1;i<=5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        for(Account acc:accList){
            recordIds.add(acc.id);
        }
        Test.startTest();
        updateRatingUsingFuture.updateRating(recordIds);
        Test.stopTest();
    }
}
@isTest
public with sharing class oppProcessorTest {
    @isTest
    private static void  oppProcessorBatchTest(){
        List<Opportunity>oppList=new List<Opportunity>();
        for(Integer i=0;i<=5;i++){
            oppList.add(new Opportunity(Name='Opp'+i,StageName='Prosecpting',CloseDate=System.today()));
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
        Test.startTest();
        oppProcessor op=new oppProcessor();
        Id oppIds=Database.executeBatch(op);
        Test.stopTest();
    }
}
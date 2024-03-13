@isTest
public with sharing class dailyOppProcessTest {
   @isTest
   private static void test(){
    String sch='0 0 0 ? * * *';
     List<Opportunity> oppList=new List<Opportunity>();
     for(Integer i=0;i<=5;i++){
        oppList.add(new Opportunity(Name='Opp'+i,StageName='Prospecting',CloseDate=System.today()));
     }
     if(!oppList.isEmpty()){
        insert oppList;
     }
     Test.startTest();
     String jobId=System.Schedule('Opp1',sch,new dailyOppProcess());
     Test.stopTest();
   }
}
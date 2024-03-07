@isTest
public class OpportunityTriggerHandlerTest {
	@isTest
    private static void afterInsert(){
        List<Opportunity>oppList=new List<Opportunity>();
        Account acc=new Account(Name='Ankit');
        insert acc;
        for(Integer i=0;i<=5;i++){
            oppList.add(new Opportunity(Name='Opp '+i,StageName='Prospecting',CloseDate=System.today(),Amount=1000,AccountId=acc.id));
        }
        Test.startTest();
        if(!oppList.isEmpty()){
           insert oppList;
        }
        Test.StopTest();
    }
    @isTest
    private static void afterUpdate(){
        Account acc1=new Account(Name='Ankit1');
        insert acc1;
        List<Opportunity>oppList=new List<Opportunity>();
        for(Integer i=0;i<5;i++){
            oppList.add(new Opportunity(Name='Opp  Test '+i,StageName='Prospecting',CloseDate=System.today(),Amount=1000,AccountId=acc1.id));
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
        Test.startTest();
        for(Opportunity opp:oppList){
            opp.Amount=2000;
        }
        if(!oppList.isEmpty()){
            update oppList;
        }
        Test.StopTest();
    }
    @isTest
    private static void afterDelete(){
        Account acc2=new Account(Name='Ankit2');
        insert acc2;
        List<Opportunity>oppList=new List<Opportunity>();
        for(Integer i=0;i<5;i++){
            oppList.add(new Opportunity(Name='Opp '+i,StageName='Prospecting',closeDate=System.today(),AccountId=acc2.id,Amount=1000));
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
        Test.startTest();
         delete oppList;
        Test.stopTest();
    }
}
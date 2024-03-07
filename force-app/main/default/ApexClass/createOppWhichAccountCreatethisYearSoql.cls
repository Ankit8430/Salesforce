public with sharing class createOppWhichAccountCreatethisYearSoql {
    public static void createOppWhichAccountCreatethisYear(){
        List<Account> accList=[Select Id,Name from Account where CreatedDate=THIS_YEAR];
        List<Opportunity> opplist=new List<Opportunity>();
        if(!accList.isEmpty()){
            for(Account acc:accList){
                Opportunity opp=new Opportunity();
                opp.Name=acc.Name;
                opp.StageName='Prospecting';
                opp.AccountId=acc.Id;
                opp.CloseDate=System.today();
                oppList.add(opp);
            }
        }
        if(!opplist.isEmpty()){
            insert opplist;
        }
    }
}
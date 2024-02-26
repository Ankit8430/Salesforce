public with sharing class TotalAmountOpp {
    public static Decimal totalAmount(List<Opportunity>oppList){
        Decimal sum=0;
        for(Opportunity opp:oppList){
            sum+=opp.Amount;
        }
        return sum;
    }
    public static void createOpp(){
        List<Opportunity>oppList=new List<Opportunity>();
        for(Integer i=1;i<=10;i++){
            Opportunity op=new Opportunity(Name='Opp'+i,StageName='Prospecting',CloseDate=System.today()+20,Amount=1000);
            oppList.add(op);
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
        Decimal totalAmount=totalAmount(oppList);
        System.debug(totalAmount);
    }
}
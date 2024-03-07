public with sharing class updateOppDescriptionUsingSOQL {
    public static void updateOppDescription() {
        List<Opportunity> oppList=[Select Id,StageName,Description from Opportunity where CreatedDate=LAST_WEEK];
        List<Opportunity> updateOppList=new List<Opportunity>();
        for(Opportunity opp:oppList){
            if(opp.StageName=='Closed Won'){
                opp.Description='Opportunity is Closed Won';
            }else if(opp.StageName=='Closed Lost'){
                opp.Description='Opportunity is Closed Lost';
            }
            updateOppList.add(opp);
        }
        if(!updateOppList.isEmpty()){
            update updateOppList;
        }
    }
}
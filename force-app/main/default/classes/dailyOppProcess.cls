public with sharing class dailyOppProcess implements Schedulable {
 public void execute(SchedulableContext context){
    List<Opportunity> oppList=[Select Id,LeadSource from Opportunity];
    for(Opportunity opp:oppList){
        opp.LeadSource='Email';
    }
    if(!oppList.isEmpty()){
        update oppList;
    }
 }
}
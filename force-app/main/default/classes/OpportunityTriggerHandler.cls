public class OpportunityTriggerHandler {
    public static void afterInsert(List<Opportunity>oppList){
        List<Account>accList=new List<Account>();
        Set<Id>accIds=new Set<ID>();
        for(Opportunity opp:oppList){
            if(opp.Amount!=null){
                accIds.add(opp.AccountId);
            }
        }
        accList=calculateAnnualRevenue(accIds);
        if(!accList.isEmpty()){
            update accList;
        }
    }
    public static void afterUpdate(List<Opportunity>oppList,Map<Id,Opportunity>oppMap){
        List<Account>accList=new List<Account>();
        Set<Id>accIds=new Set<Id>();
        for(Opportunity opp:oppList){
            if(oppMap!=null && opp.Amount!=oppMap.get(opp.id).Amount){
                accIds.add(opp.AccountId);
            }
        }
        accList=calculateAnnualRevenue(accIds);
        if(!accList.isEmpty()){
            update accList;
        }
    }
    public static void afterDelete(List<Opportunity>oppList){
        List<Account>accList=new List<Account>();
        Set<Id>accIds=new Set<Id>();
        for(Opportunity opp:oppList){
            if(opp.Amount!=null){
                accIds.add(opp.AccountId);
            }
        }
        accList=calculateAnnualRevenue(accIds);
        if(!accList.isEmpty()){
            update accList;
        }
    }
    public static List<Account> calculateAnnualRevenue(Set<Id>ids){
        List<Account>accToBeUpdate=new List<Account>();
        Map<Id,Decimal> accIdAnnualRevenue=new Map<Id,Decimal>();
        for(Opportunity opp:[Select ID,Amount,AccountId from Opportunity where AccountId IN:ids]){
            Decimal total=0;
            if(accIdAnnualRevenue.containsKey(opp.AccountId)){
                total=accIdAnnualRevenue.get(opp.AccountId);
            }
            if(opp.Amount!=null){
                total+=opp.Amount;
            }
            accIdAnnualRevenue.put(opp.AccountId,total);
            if(!accIdAnnualRevenue.isEmpty()){
                for(Id i:accIdAnnualRevenue.keySet()){
                    accToBeUpdate.add(new Account(Id=i,AnnualRevenue=accIdAnnualRevenue.get(i)));
                }
            }
        }
        return accToBeUpdate;
    }
}
public class AccountAction {
	@InvocableMethod
    public static List<Decimal> updateAccRevenue(List<ID> ids){
        List<Opportunity> oppList=[Select ID,AccountId, Amount from Opportunity Where Id=:ids[0]];
        List<Account> accList=[Select Id,AnnualRevenue from Account Where Id=:oppList[0].accountId and AnnualRevenue!=null];
		List<Decimal> annualReve=new List<Decimal>();
        
        accList[0].AnnualRevenue=accList[0].AnnualRevenue+oppList[0].Amount;
        
        update accList;
        annualReve.add(accList[0].AnnualRevenue);
        return annualReve;
    }
}
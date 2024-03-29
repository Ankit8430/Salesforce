public class AccountController {
	@AuraEnabled
    public static List<Account> getAccounts(){
        List<Account>accList=[Select Id,Name,Phone from Account Limit 10];
        return accList;
    }
}
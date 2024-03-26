public with sharing class AccountControllerWithWire {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccList(){
        return [Select Id,Name,Type,Phone from Account];
    }
}
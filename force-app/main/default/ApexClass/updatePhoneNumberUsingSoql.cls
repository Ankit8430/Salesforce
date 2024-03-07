public with sharing class updatePhoneNumberUsingSoql {
    public  static void updatePhoneNumber() {
        List<Account> accList=[Select Id,Name,Phone from Account where CreatedDate=LAST_WEEK];
        for(Account acc:accList){
            acc.Phone='8130071081';
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}
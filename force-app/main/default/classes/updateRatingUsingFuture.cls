public with sharing class updateRatingUsingFuture {
   @future
   public static void updateRating(List<Id>recordIds){
    List<Account>accList=[Select Id,Rating from Account where Id=:recordIds];
    for(Account acc:accList){
        acc.Rating='Cold';
    }
    if(!accList.isEmpty()){
        update accList;
    }
   }
}
public class FeedbackAction {
	@InvocableMethod
    public static void updateDate(List<Id> ids){
        List<feedback__c> updatefeedList=new List<Feedback__C>();
        for(feedback__c feed:[Select Id,feedback_date__c from Feedback__c where id=:ids]){
            feed.Feedback_Date__c=System.today();
            updatefeedList.add(feed);
        }
        update updatefeedList;
    }
}
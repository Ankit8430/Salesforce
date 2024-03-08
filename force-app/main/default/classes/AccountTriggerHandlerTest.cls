@isTest
public class AccountTriggerHandlerTest {
    @isTest
    private static void updateMultiPicklistContactAccToAccount(){
        List<Account>accList=new List<Account>();
        List<Contact>conList=new List<Contact>();
        
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        for(Account acc:accList){
            conList.add(new Contact(LastName=acc.Name,AccountId=acc.id));
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        Test.startTest();
        for(Account acc:accList){
            acc.MultiSelectPickList__c='A;B';
        }
        if(!accList.isEmpty()){
            update accList;
        }
        Test.stopTest();
    }
    /*@isTest
    private static void updateMaillingAddressRelatedAllContact(){
        List<Account> accList=new List<Account>();
        List<Contact>conList=new List<Contact>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        for(Account acc:accList){
            conList.add(new Contact(LastName=acc.Name,AccountId=acc.id));
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        Test.startTest();
        for(Account acc:accList){
            acc.BillingCity='FZD';
        }
        if(!accList.isEmpty()){
            update accList;
        }
        Test.stopTest();
    }
    @isTest
    private static void sendEmailToAllContactWhenAccountTypeIsUpdateTest(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        List<Contact> conList=new List<Contact>();
        for(Account acc:accList){
            conList.add(new Contact(LastName='Gupta',AccountId=acc.id,Email='ankitgu8430@gmail.com'));
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        Test.startTest();
        for(Account acc:accList){
            acc.Type='Technology Partner';
        }
        update accList;
        Test.StopTest();
    }
    @isTEst
    private static void updateClientContactFieldOnAccount(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit '+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
    }
    @isTest
    private static void totalAmountofRelatedOpp(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'));
        }
        if(!acclist.isEmpty()){
            insert accList;
        }
        List<Opportunity> oppList=new List<Opportunity>();
        for(Account acc:accList){
            oppList.add(new Opportunity(Name='Opp '+acc.Name,StageName='Prospecting',Closedate=System.today(),Amount=1000,AccountId=acc.id));
        }
        if(!oppList.isEmpty()){
                insert oppList;    
        }
        Test.startTest();
        for(Account acc:accList){
            acc.Phone='8899031727';
        }
        update accList;
        Test.StopTest();
    }
    @isTest
    private static void sendMailToSystemAdminTest(){
        User userInfo=[Select Id,Name,Email,Profile.Name from User where Profile.Name='System Administrator'];
        System.runAs(userInfo){
            Account acc=new Account(Name='Ankit');
            insert acc;
        }
    }
    @isTest
    private static void createAccountandCopyShippingAddressTest(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit',BillingStreet='212,Karbala Main Road',BillingCity='Firozabad',BillingState='Uttar Pradesh',
                                   BillingPostalCode='283203',BillingCountry='Indida'));
        }
        Test.startTest();
        if(!accList.isEmpty()){
            insert accList;
        }
        Test.StopTest();
    }
    @isTest
    private static void updateAlltheOpportunityTest(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        List<Opportunity>oppList=new List<Opportunity>();
        for(Account acc:accList){
            oppList.add(new Opportunity(Name='Opp '+acc.Name,StageName='Prospecting',CloseDate=System.today()+20,AccountId=acc.id));
        }
        if(!oppList.isEmpty()){
            insert oppList;
        }
        Test.startTest();
        for(Account acc:accList){
            acc.Phone='8899031727';
        }
        if(!accList.isEmpty()){
            update accList;
        }
        Test.stopTest();
        
    }
	@isTest
    private static void beforeInsert(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        accList.add(new Account(Name='Ankit',Industry='Other'));
        Test.startTest();
        if(!accList.isEmpty()){
            insert accList;
        }
        Test.StopTest();
    }
    @isTest
    private static void afterInsert(){
        List<Account> accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        Test.startTest();
        if(!accList.isEmpty()){
            insert accList;
        }
        Test.StopTest();
    }
    @isTest
    private static void beforeUpdate(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit '+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        Test.startTest();
        for(Account acc:accList){
            acc.Phone='8899031727';
        }
        if(!accList.isEmpty()){
            update accList;
        }
        Test.stopTest();
    }
    @isTest
    private static void afterUpdate(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        List<Contact>conList=new List<Contact>();
        for(Account acc:accList){
            conList.add(new Contact(LastName='Contact'+acc.Name,AccountId=acc.id));
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        Test.startTest();
        for(Account acc:accList){
            acc.Phone='8899031727';
        }
        if(!accList.isEmpty()){
            update accList;
        }
        Test.StopTest();
    }
    @isTest
    private static void beforeDelete(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
          accList.add(new Account(Name='Ankit',Active__c='Yes'));
        if(!accList.isEmpty()){
            insert accList;
        }
        Test.startTest();
        delete accList;
        Test.stopTest();
    }
    @isTest
    private static void afterDelete(){
        List<Account>accList=new List<Account>();
        List<Contact>conList=new List<Contact>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        for(Account acc:accList){
            conList.add(new Contact(LastName='Con '+acc.Name,AccountId=acc.id));
        }
        if(!conList.isEmpty()){
            insert conList;
        }
        Test.startTest();
        delete accList;
        Test.stopTest();
    }
    @isTest
    private static void afterUndelete(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        accList.add(new Account(Name='Ankit Gupta'));
        if(!accList.isEmpty()){
            insert accList;
        }
        delete accList;
        Test.StartTest();
        undelete accList;
        Test.StopTest();
    }*/
}
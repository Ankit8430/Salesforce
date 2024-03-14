@isTEst
public with sharing class updateAccountActiveSchedulableTest {
    @isTEst
    public static void excetueTest(){
        List<Account>accList=new List<Account>();
        for(Integer i=0;i<=5;i++){
            accList.add(new Account(Name='Ankit'+i));
        }
        if(!accList.isEmpty()){
            insert accList;
        }
        Test.startTest();
        String sch='0 0 0 ? * * *';
        updateAccountActiveSchedulable uAAS=new updateAccountActiveSchedulable();
        System.Schedule('uAAS',sch,uAAS);
        Test.stopTest();
    }
}
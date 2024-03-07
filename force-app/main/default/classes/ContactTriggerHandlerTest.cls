@isTest
public class ContactTriggerHandlerTest {
	@isTest
    private static void sendEmailNotification(){
        List<Contact>conList=new List<Contact>();
        for(Integer i=1;i<5;i++){
            conList.add(new Contact(LastName='Con '+i,Email='ankitgu8430@gmail.com'));
        }
        Test.startTest();
        if(!conList.isEmpty()){
            insert conList;
        }
        Test.stopTest();
    }
}
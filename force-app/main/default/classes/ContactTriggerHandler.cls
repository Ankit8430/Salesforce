public class ContactTriggerHandler {
    public static void sendEmailNotification(List<Contact>conList){
        List<Messaging.Email> emailList=new List<Messaging.Email>();
        for(Contact con:conList){
            if(con.Email!=null){
                Messaging.SingleEmailMessage emailMsg=new Messaging.SingleEmailMessage();
                String[] toAddress=new String[]{con.Email};
                emailMsg.setToAddresses(toAddress);
                String emailSub='Welcome '+con.firstName;
                emailMsg.setSubject(emailSub);
                String displayName='Ankit Gupta';
                emailMsg.setSenderDisplayName(displayName);
                String content='Hi '+con.firstName+'<br/><br/>'+
                    'Happy Learning <br/><br/>'+
                    'Thank you';
                emailMsg.setHtmlBody(content);
                emailList.add(emailMsg);
            }
        }
        Messaging.sendEmail(emailList);
    }
}
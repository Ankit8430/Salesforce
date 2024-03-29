public class contactController {
	@AuraEnabled
    public static List<Contact> getContacts(Id recordId){
        List<Contact> conList=[Select Id,FirstName,LastName,Phone,Email from Contact where AccountId=:recordId];
        return conList;
    }
}
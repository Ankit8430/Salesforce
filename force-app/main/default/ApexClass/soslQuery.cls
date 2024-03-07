public with sharing class soslQuery {
  public static void soslQueryBasic(){
    List<List<SObject>> searchList=[Find 'Cloud' IN ALL FIELDS RETURNING Account(Name),Contact(FirstName,LastName,Email)];
    List<Account> accList=new List<Account>();
    List<Contact> conList=new List<Contact>();

    accList=(List<Account>)searchList[0];
    conList=(List<Contact>)searchList[1];

    for(Account acc:accList){
        System.debug('Account Name '+acc.Name);
    }
    for(Contact con:conList){
        System.debug('Contact First Name '+con.FirstName+' Contact Last Name '+con.lastName+' Contact Email '+con.Email);
    }
  }
}
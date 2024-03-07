public with sharing class updatePhoneOnContacUsingSOQL {
    public static void updatePhoneOnContac() {
        List<Contact> conList=[Select Id,Phone,Account.Phone from Contact where createddate=LAST_WEEK];
        List<Contact> updateConList=new List<Contact>();
        for(Contact con:conList){
            if(con.Phone==null){
                con.Phone=con.Account.Phone;
                updateConList.add(con);
            }
        }
        if(!updateConList.isEmpty()){
            update updateConList;
        }
    }
}
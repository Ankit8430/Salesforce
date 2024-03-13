trigger mainTrigger on Contact (after insert) {
    if(Trigger.isAfter && Trigger.isInsert){
        Map<Id,Contact> IdMapContact=new Map<Id,Contact>();
        for(Contact con:Trigger.new){
            if(con.Email!=null){
                IdMapContact.put(con.id,con);
            }
        }
        if(!IdMapContact.isEmpty()){
            Database.executeBatch(new MailToNewContact(IdMapContact));
        }
    }
}
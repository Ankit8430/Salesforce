public with sharing class dmlOperations {
    public static void operations(){
        try{
            //Insert DML Operations
            Account acc=new Account(Name='Shri Chandra Gupta');
            insert acc;
            System.debug(acc);
            //Update DML Operations
            Account acc1=[Select Id,Name,Phone from Account where Name='Shri Chandra Gupta' limit 1];
            acc1.Phone='8899031727';
            update acc1;
            System.debug(acc1);
            //Delete DML Operations.
            Account delAcc=[Select Id,Name,Phone from Account where Name='Shri Chandra Gupta' limit 1];
            System.debug(delAcc);
            delete delAcc;
        }catch(Exception e){
            System.debug(e.getMessage());
        }
    }
}
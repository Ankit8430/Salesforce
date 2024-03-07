public with sharing class sObjectType {
  public static void sObjectDataType(){
    //Standar Object;
    Account acc=new Account(Name='Ankit Gupta',Phone='8899031727');
    insert acc;
    System.debug(acc);


    //Custom Object;
    Demo__c demo=new Demo__c(Name='Demo1',Phone__C='8899031727');
    insert demo;
    System.debug(demo);

    //Generaic SObjec;
    sObject obj;
        //Stadnard Objec
        obj=new Account(Name='Aman Gupta');
        Account acc1 =(Account)obj;
        System.debug(acc1);

        //Custom Object
        obj=new Demo__c(Name='Demo2');
        Demo__c demo1=(Demo__c)obj;
        System.debug(demo1);
  }
}
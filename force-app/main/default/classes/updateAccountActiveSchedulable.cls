public with sharing class updateAccountActiveSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        updateAccountActive uAA=new updateAccountActive();
        Database.executeBatch(uAA);
    }
}
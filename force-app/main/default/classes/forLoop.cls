public with sharing class forLoop {
   public static void forLoopTypes(){
    //Traditional
    for(Integer i=1;i<=10;i++){
        System.debug(i);
    }

    //List Or Set For Loop
    List<Integer> listInteger=new List<Integer>{1,2,3,4,5};
    for(Integer val:listInteger){
        System.debug(val);
    }

    //SOQL Query
    for(Account acc:[Select Id,Name from Account limit 10]){
        System.debug('ID => '+acc.Id+' Name => '+acc.Name);
    }
   }
}
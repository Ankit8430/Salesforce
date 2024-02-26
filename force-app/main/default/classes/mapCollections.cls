public with sharing class mapCollections {
   public static void basicMapCollections(){
    Map<Integer,String> mapIntToString=new Map<Integer,String>();
    mapIntToString.put(1,'Ankit');
    mapIntToString.put(2,'Aman');
    mapIntToString.put(3,'Naman');
    mapIntToString.put(4,'Shivang');
    mapIntToString.put(5,'Shivani');
    System.debug('Get Key and Values');
    for(Integer key:mapIntToString.keySet()){
        System.debug('Key => '+key+' Value => '+mapIntToString.get(key));
    }
   }
   public static void getKeyAndValueFromObject(){
    Map<Id,Account> mapIdToAcc=new Map<Id,Account>([Select Id,Name from Account limit 10]);
    for(Id ids:mapIdToAcc.keySet()){
        System.debug('Id => '+ids+' Name => '+mapIdToAcc.get(ids).Name);
    }
   }
   public static void listSetMap(){
        List<Account> accList=new List<Account>();
        accList=[Select Id,Name from Account limit 10];
        Set<Id> accIds=new Set<Id>();
        Map<Id,Account> accMapIdToAcc=new Map<Id,Account>(accList);

        if(!accList.isEmpty()){
            for(Account acc:accList){
                accIds.add(acc.id);
            }
        }

        if(!accIds.isEmpty()){
            for(Id ids:accIds){
                System.debug('Id => '+accMapIdToAcc.get(ids).id+' Name ==> '+accMapIdToAcc.get(ids).Name);
            }
        }
   }
}
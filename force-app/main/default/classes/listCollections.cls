public with sharing class listCollections {
    public static void listCollectionsType(){
        //Simple List Collections
        List<Integer> listInteger=new List<Integer>();
        listInteger.add(1);
        listInteger.add(2);
        listInteger.add(3);
        listInteger.add(4);
        listInteger.add(5);

        System.debug(listInteger);
        listInteger.add(1,11);
        System.debug(listInteger);
        List<Integer> listInteger1=new List<Integer>{6,7,8,9,10};
        listInteger.addAll(listInteger1);
        System.debug(listInteger1);
        System.debug(listInteger);
        for(Integer i:listInteger){
            System.debug(i);
        }

        //Object List;
        List<Demo__c> demoList=new List<Demo__c>();
        for(Integer i=1;i<=10;i++){
            Demo__c demo=new Demo__c(Name='Demo'+i);
            demoList.add(demo);
        }
        if(!demoList.isEmpty()){
            insert demoList;
        }


        //Fetch Object in List
        List<demo__c> demoList1=new List<demo__c>([Select Id,Name from demo__c]);
        for(demo__c dem:demoList1){
            System.debug('ID => '+dem.id+' Name => '+dem.Name);
        }
    }
}
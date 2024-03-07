public with sharing class setCollection {
    public static void setCollectionType() {
        //Simple Set
        Set<Integer> set1=new Set<Integer>();
        set1.add(1);
        set1.add(2);
        set1.add(3);
        set1.add(4);
        set1.add(5);
        System.debug(set1);
        List<Integer> listInteger=new List<Integer>{1,2,3,4,5,6,7};
        set1.addAll(listInteger);
        System.debug(set1);
        if(!set1.isEmpty()){
           for(Integer i:set1){
            System.debug(i);
           }
        }
        //Object Set
        List<Demo__C> listDemo=new List<Demo__c>([Select Id from Demo__c]);
        Set<Id> setIds=new Set<Id>();
        for(Demo__C demo:listDemo){
            setIds.add(demo.id);
        }
        if(!setIds.isEmpty()){
            for(Id ids:setIds){
                System.debug('ID => '+ids);
            }
        }
    }
}
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
    public static List<Integer> findUniqueElements(List<Integer> arr){
        List<Integer> uniqueList=new List<Integer>();
        arr.sort();
        uniqueList.add(arr[0]);
        Integer i=0,j=1;
        while(j<arr.size()-1){
            if(arr[i]==arr[j]){
                i++;
                j++;
            }else{
                i++;j++;
                if(arr[i]!=arr[j]){
                    uniqueList.add(arr[i]);
                }else{
                    i++;j++;
                }
            }
        }
        if(arr[arr.size()-2]!=arr[arr.size()-1]){
            uniqueList.add(arr[arr.size()-1]);
        }
        return uniqueList;
    }
    public static void inputList(){
        List<Integer> inputList = new List<Integer>{1, 2, 3, 4, 2, 3, 5, 6, 1, 7, 8, 9, 9, 10};
        List<Integer> uniqueElements = findUniqueElements(inputList);
        System.debug('Unique Elements: ' + uniqueElements); // Output should be [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    }
}    
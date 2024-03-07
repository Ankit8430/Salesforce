public with sharing class primitiveDataType {
    public static void primiteData(){
        Integer i=10;
        System.debug('Integer => '+i);
        Double double1=3.145;
        System.debug('Double => '+double1);
        String firstName='Ankit';
        System.debug('String => '+firstName);
        Date date1=System.today();
        System.debug('Date => '+date1);
        Integer n=10;
        Boolean isEven1=Math.mod(n, 2)==0?true:false;
        System.debug(isEven1);
    }
}
public with sharing class breakAndContinue {
    public static void breakAndContinueConcept(){
        System.debug('Break');
        for(Integer i=0;i<=10;i++){
            if(i==5){
                break;
            }
            System.debug(i);
        }
        System.debug('Continue');
        for(Integer i=0;i<=10;i++){
            if(i==5){
                continue;
            }
            System.debug(i);
        }
    }
}
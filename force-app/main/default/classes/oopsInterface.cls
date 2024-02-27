public with sharing class oopsInterface {
    public   interface  apexInterface{
        void show();
    }
    
    public class apexImp implements apexInterface{
        public void show(){
            System.debug('Show');
        }
    }
    public static void callClass(){
        apexImp ap=new apexImp();
        ap.show();
    }
}
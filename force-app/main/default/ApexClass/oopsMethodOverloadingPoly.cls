public with sharing class oopsMethodOverloadingPoly {
    public class Sum{
        public void add(Integer a){
            System.debug(a+5);
        }
        public void add(Integer a,Integer b){
            System.debug(a+b);
        }
    }
    public static void callSum(){
        Sum s=new Sum();
        s.add(5);
        s.add(5,5);
    }
}
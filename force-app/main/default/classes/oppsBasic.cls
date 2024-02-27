public with sharing class oppsBasic {
    public class Animal{
        public string name;
        public void setName(String Name){
            this.name=Name;
        }
        public void getName(){
            System.debug(this.name);
        }
    }
    public static void callClass(){
        oppsBasic.Animal ani=new oppsBasic.Animal();
        ani.setName('Dog');
        ani.getName();
    }
}

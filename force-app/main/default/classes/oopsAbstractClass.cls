public with sharing class oopsAbstractClass {
    public abstract class ApexAbstract{
        public ApexAbstract(){}
        public abstract void show();
        public void display(){
            System.debug('Parend Display');
        }
    }
    public class ApexAbstractChildClass extends ApexAbstract{
        public override void show(){
            System.debug('Show');
        }
    }
    public static void callClass(){
        ApexAbstractChildClass ap=new ApexAbstractChildClass();
        ap.display();
        ap.show();
    }
}
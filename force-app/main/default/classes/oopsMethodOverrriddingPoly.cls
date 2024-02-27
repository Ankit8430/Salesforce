public with sharing class oopsMethodOverrriddingPoly {
    public virtual class Parent{
        public virtual void display(){
            System.debug('Parent Class');
        }
    }
    public  class Child extends Parent{
        public override void display(){
            System.debug('Child Class');
        }
    } 
    public static void callClasses(){
        Parent p=new Parent();
        p.display();

        Child c=new Child();
        c.display();
    }
}
public with sharing class oopsSingleInheritance {
    public virtual class Animal{
        public void eat(){
            System.debug('Eat');
        }
    }
    public class horse extends Animal{
       public void run(){
            System.debug('Run');
       }
    }
    public static void callClasses(){
        System.debug('Parent Class');
        Animal an=new Animal();
        an.eat();

        System.debug('Child Class');
        horse hr=new horse();
        hr.run();
        hr.eat();
    }
}
public with sharing class oopshierarchialInheritance {
    public virtual class Animal{
        public void eat(){
            System.debug('Eat');
        }
    }
    public class Horse extends Animal{
        public void run(){
            System.debug('Run');
        }
    }
    public class Dog extends Animal{
        public void walk(){
            System.debug('Walk');
        }
    }

    public static void callClass(){
        System.debug('Animal Class');
        Animal an=new Animal();
        an.eat();

        System.debug('Horse Class');
        Horse hr=new Horse();
        hr.eat();
        hr.run();

        System.debug('Dog Class');
        Dog dg=new Dog();
        dg.eat();
        dg.walk();
    }
}
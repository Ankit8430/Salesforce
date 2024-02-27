public with sharing class oopsMultilevelInheritance {
    public virtual class Animal{
        public void walk(){
            System.debug('Walk');
        }
    }
    public virtual class Dog extends Animal{
       public void run(){
            System.debug('Run');
       }
    }
    public class tuppy extends Dog{
        public void eat(){
            System.debug('Eat');
        }
    }
    public static void callClasses(){
        System.debug('Aniaml Class');
        Animal an=new Animal();
        an.walk();

        System.debug('Dog Class');
        Dog dg=new Dog();
        dg.walk();
        dg.run();

        System.debug('Tuppy Class');
        tuppy tu=new tuppy();
        tu.walk();
        tu.run();
        tu.eat();

    }
}
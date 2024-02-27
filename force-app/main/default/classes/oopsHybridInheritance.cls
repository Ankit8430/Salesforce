public with sharing class oopsHybridInheritance {
  public virtual class Animal{
    public void name(String Name){
        System.debug(Name+' Class');
    }
  }
  public virtual class Horse extends Animal{
    public void run(){
        System.debug('Run Horse');
    }
  }
  public virtual class Dog extends Animal{
    public void run(){
        System.debug('Run Dog');
    }
  }
  public class Tuppy extends Dog{
        public void eat(){
            System.debug('Eat Dog');
        }
  }
  public class Horse1 extends Horse{
        public void eat(){
            System.debug('Eat Horse');
        }
    }

    public static void callClass(){
        Animal an=new Animal();
        an.name('Animal');

        Horse hr=new Horse();
        hr.name('Horse');
        hr.run();

        Horse1 hr1=new Horse1();
        hr1.name('Horse 1');
        hr1.run();
        hr1.eat();

        Dog dg=new Dog();
        dg.name('Dog');
        dg.run();

        Tuppy tu=new Tuppy();
        tu.name('Tuppy');
        tu.run();
        tu.eat();
    }
}
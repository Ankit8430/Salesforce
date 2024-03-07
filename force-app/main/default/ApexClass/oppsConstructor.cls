public with sharing class oppsConstructor {
    public class Animal{
        public String name;
        //Non Parameter Constructor
        Animal(){
            System.debug('Non-Parameter Constructor');
        }
        //Parameter Constructor
        Animal(String parameter){
            System.debug(parameter+' Constructor');
        }
        //Copy Constructor
        Animal(Animal an){
            System.debug('Copy Constructor');
        }
        public void setName(String Name){
            this.name=Name;
        }
        public String getName(){
            return this.name;
        }
    }
    public static void callClass(){
        //Non Parameter Constructor
        Animal ani=new Animal();
        ani.setName('Dog');
        System.debug(ani.getName());

        //Parameter Constructor
        Animal ani1=new Animal('Parameter');
        ani.setName('Cat');
        System.debug(ani.getName());

        //Copy Constructor
        Animal ani2=new Animal(ani);
        System.debug(ani2.getName());
    }
}
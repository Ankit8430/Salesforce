public with sharing class oopsMultipleInheritanceUsingInterface {
    public interface A{
        void show();
    }
    public interface B{
        void dance();
    }
    public class C implements A,B{
        public void show(){
            System.debug('Show');
        }
        public void dance(){
            System.debug('Dance');
        }
        public void eat(){
            System.debug('Eat');
        }
    }
    public static void callClass(){
        C c=new C();
        c.show();
        c.dance();
        c.eat();
    }
}
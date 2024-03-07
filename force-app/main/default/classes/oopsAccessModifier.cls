global with sharing class oopsAccessModifier {
    global static String name;
    public class Student{
        public Integer age;
        private String gender;
        protected Integer numOfchild;
        
        public void getDetails(){
            System.debug('Name => '+name+' Age => '+this.age+' Gender => '+this.gender+' Number of Child ==> '+this.numOfchild);
        }
    }
    public static void callStudentClass(){
        Student stu=new Student();
        name='Ankit';
        stu.age=20;
        stu.gender='Male';
        stu.numOfchild=5;

        stu.getDetails();
    }
}
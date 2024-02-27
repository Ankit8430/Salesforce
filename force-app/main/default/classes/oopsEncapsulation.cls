public with sharing class oopsEncapsulation {
    public class Student{
        public String Name;
        public String age;
        public String gender;

        public void setDetails(String Name,String age,String gender){
            this.Name=Name;
            this.age=age;
            this.gender=gender;
        }
        public  Map<String,String> getDetails(){
            Map<String,String> mapStudent=new Map<String,String>();
            mapStudent.put('Name',this.Name);
            mapStudent.put('Age',this.age);
            mapStudent.put('Gender',this.gender);
            return mapStudent;
        }
    }
    public static void callClass(){
        Student stu=new Student();
        stu.setDetails('Ankit', '22', 'Male');
        Map<String,String> mapStudent=stu.getDetails();

        for(String key:mapStudent.keySet()){
            System.debug(key+' : '+mapStudent.get(key));
        }       
    }
}
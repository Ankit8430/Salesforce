public class TaskTriggerHandler {
    public static void onlySystemAdimDeleteTask(List<Task> taskList){
        User userInfo=[Select Id, Profile.Name from User where Profile.Name!='System Administrator'];
        System.runAs(userInfo){
            for(Task tas:tasklist){
                tas.addError('System Administrator only can be delete');
            }
        }
    }
}
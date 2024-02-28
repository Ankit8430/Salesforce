public with sharing class updateTotalSalaryonAccountfromEmpSOQL {
    public static void updateTotalSalaryonAccountfromEmp() {
        List<Account> accList=[Select Id,Total_Salary__c,(Select Id,Salary__C from Employee__r) from Account where createddate=LAST_WEEK];
        for(Account acc:accList){
            Decimal totalSalary=0;
            for(Employee__c emp:acc.Employee__c){
                totalSalary+=emp.Salary__C;
            }
            acc.Total_Salary__c=totalSalary;
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}
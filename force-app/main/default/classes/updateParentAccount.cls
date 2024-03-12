public with sharing class updateParentAccount implements Queueable {
    private List<Account>accList;
    private Id parentId;
    public updateParentAccount(List<Account>accList,Id parentId){
        this.accList=accList;
        this.parentId=parentId;
    }
    public void execute(QueueableContext context){
        for(Account acc:accList){
            acc.ParentId=parentId;
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}
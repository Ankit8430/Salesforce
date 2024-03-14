public with sharing class calloutAccount {
    public static void createAccountRecordInAnotherOrg(String name,String phone,String email){
        Http http=new Http();
        HttpRequest request=new HttpRequest();

        request.setEndpoint('callout:SFDCB/services/data/v52.0/sobjects/My_Account__c');
        request.setMethod('POST');
        request.setHeader('Content-Type','application/json;charset=UTF-8');
        request.setBody('{"Name":"'+name+'","Phone__c":"'+phone+'","Email__C":"'+email+'"}');
        HttpResponse response=http.send(request);
        System.debug(response.getStatusCode());
        if(response.getStatusCode()==201){
            System.debug(response.getBody());
        }
    }
}
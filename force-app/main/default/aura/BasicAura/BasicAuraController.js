({
	doInit : function(component, event, helper) {
		var action=component.get('c.getAccounts');
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==="SUCCESS"){
                component.set("v.accList",response.getReturnValue());
            }
        });
        $A.enqueueAction(action);
	},
    clickMe1:function(component,event,helper){
        component.set("v.msg","Click Me 1");
    },
    clickMe2:function(component,event,helper){
        component.set("v.msg","Click Me 2");
    }
})
({
	doAction : function(component, event, helper) {
		var inputCmp=component.find("inputCmp");
        var value=inputCmp.get("v.value");
        component.set("v.flagHeader",true);
        if(value>=75){
            component.set("v.flag1",true);
        }else if(value>=50 && value<75){
            component.set("v.flag2",true);
        }else{
            component.set("v.flag1",false);
        }
	}
})
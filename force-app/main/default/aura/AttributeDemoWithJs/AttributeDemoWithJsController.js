({
    doInit:function(component,event,helper){
        component.set("v.Message1","Button 1 Initialization");
    },
	handleClick : function(component, event, helper) {
		//component.set("v.Message1","Button clicked");
		var btn=event.getSource();
        var msg=btn.get("v.label");
        if(msg=="Click Me"){
                component.set("v.Message1","Button 1 Clicked");
        }else{
            component.set("v.Message1","Button 2 Clicked");
        }
	}
})
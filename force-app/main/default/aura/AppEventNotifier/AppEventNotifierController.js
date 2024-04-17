({
    //Step 3: Fire Application Event.
	fireAppEvent : function(component, event, helper) {
        var appEvent=$A.get("e.c:ApplicationEvent");
        appEvent.setParams({
            "message":"Value from Application Event Notifier"
        });
        appEvent.fire();
	}
})
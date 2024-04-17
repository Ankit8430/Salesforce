({
	updateChild : function(component, event, helper) {
		component.set("v.childAttribute","Update Child Value")
	},
    onChildVarChange : function(component, event, helper) {
		console.log("Child Value has been Changed");
        console.log("Old Value: "+event.getParam("oldValue"));
        console.log("New Value: "+event.getParam("value"));
	}
})
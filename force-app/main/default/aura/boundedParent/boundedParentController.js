({
	updateParent : function(component, event, helper) {
		component.set("v.parentAttribute","Update Parent Value");
	},
    onParentVarChangeParent : function(component, event, helper) {
		console.log("Parent Value has been Changed");
        console.log("Old Value: "+event.getParam("oldValue"));
        console.log("New Value: "+event.getParam("value"));
	}
})
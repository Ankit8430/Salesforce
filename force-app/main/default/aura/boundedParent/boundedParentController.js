({
	updateParent : function(component, event, helper) {
				component.set("v.parentVar","Update Parent Value");
	},
    updateonParentVarChangeParent : function(component, event, helper) {
		console.log("Parent Value has changed");
        console.log("Old Value: "+event.getParam("oldValue"));
        console.log("New Value: "+event.getParam("value"));
	}
})
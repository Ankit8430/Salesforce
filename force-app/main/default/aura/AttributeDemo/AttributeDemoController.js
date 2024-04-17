({
	doInit : function(component, event, helper) {
		component.set("v.Var1","Demo Value from Component's Controller");
        var data={'name':'Ankit Gupta',
                  'email':'ankit@gmail.com'};
        component.set("v.jsObject",data);
        component.set("v.userData",
                      {
                          'myString':'Ankit',
                          'myInteger':2001
                      })
	}
})
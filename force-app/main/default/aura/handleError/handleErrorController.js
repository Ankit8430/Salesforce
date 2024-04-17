({
	throwError : function(component, event, helper) {
        try{
            throw new Error('I can not go on. This is the end');
        }
        catch(e){
            console.log("Error "+e.Message);
        }
		
	}
})
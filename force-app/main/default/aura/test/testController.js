({
    handleClick: function(component, event, helper) {
        let files = component.find("files").get("v.files");
        let action = component.get("c.testMethod");
        
        action.setParams({files});
        $A.enqueueAction(action);

        action.setCallback(this, res => {
            console.log(res.getState());
        })
                
    }
})

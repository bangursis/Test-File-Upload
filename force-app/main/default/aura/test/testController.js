({
    handleClick: function(component, event, helper) {
        let files = component.find("files").get("v.files"),
            action = component.get("c.test");
        
        action.setParams({files});
        $A.enqueueAction(action);

        action.setCallback(this, res => {
            console.log(res.getState());
        })
                
    }
})

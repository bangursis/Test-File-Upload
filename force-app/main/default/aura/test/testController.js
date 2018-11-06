({
    handleClick: function(component, event, helper) {
        let files = component.find("files").get("v.files")[0],
            action = component.get("c.test");
        
        action.setParams({files});
        $A.enqueueAction(action);

        action.setCallback(this, res => {
            component.set(component.find(`img`).set(`src`, files.name));
            console.log(res.getState());
        })
                
    },

    handleChange : function(component, event){
        let files = event.getSource().getParams("v.files");

        console.log(files);
    }
})

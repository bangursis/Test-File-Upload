({
    handleClick: function(component, event, helper) {
        let file = component.find("files").get("v.files")[0];

        helper.readFile(component, file)                
    },
})

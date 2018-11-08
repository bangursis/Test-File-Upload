({
    readFile : function(component, file) {
       let fr = new FileReader();
       
       fr.onload = () => {
           let fileContents = fr.result;
           let base64Mark = `base64,`;
           let dataStart = fileContents.indexOf(base64Mark) + base64Mark.length;

           fileContents = fileContents.substring(dataStart);

           this.upload(component, fileContents);
       }
       
       fr.readAsDataURL(file);
    }, 

    upload : function(component, fileContents){
        let action = component.get("c.test");
        let file = encodeURIComponent(fileContents);
        console.log(`${file.length}   ${fileContents.length}`)
        action.setParams({file});
        $A.enqueueAction(action);

        action.setCallback(this, res => {
            console.log(res.getState());
        })
    }
})

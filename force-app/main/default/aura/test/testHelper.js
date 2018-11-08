({
    readFile : function(component, file) {
       let fr = new FileReader();
       
       fr.onload = () => {
           let fileContents = fr.result,
               base64Mark = `;base64,`,
               splittedContent = fileContents.split(base64Mark);
               fileType = splittedContent[0].replace(`data:`, ``); 

           fileContents = splittedContent[1];
           this.upload(component, fileContents);
       }
       
       fr.readAsDataURL(file);
    }, 

    upload : function(component, fileContents){
        let action = component.get("c.test"),
            file = encodeURIComponent(fileContents);
        console.log(`${file.length}   ${fileContents.length}`)
        action.setParams({file});
        $A.enqueueAction(action);

        action.setCallback(this, res => {
            console.log(res.getState());
        })
    }
})

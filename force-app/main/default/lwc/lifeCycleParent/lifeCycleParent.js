import { LightningElement } from 'lwc';

export default class LifeCycleParent extends LightningElement {
    isChildVisible=false
    constructor(){
        super();
        console.log('Parent Constructor Call')
    }
    connectedCallback(){
        console.log('Parent ConnectedCallback Called')
    }
    renderedCallback(){
        console.log('Parent RenderedCallback Called')
    }
    handleClick(){
        this.isChildVisible=!this.isChildVisible
    }
    errorCallback(error,stack){
        console.log(error.message)
        console.log(stack)
    }
}

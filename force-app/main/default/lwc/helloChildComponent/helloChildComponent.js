import { LightningElement,api } from 'lwc';

export default class HelloChildComponent extends LightningElement {
    closeHandler(){
        const myEvent=new CustomEvent('close')
        this.dispatchEvent(myEvent)
    }
}
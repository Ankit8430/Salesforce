import { LightningElement,track } from 'lwc';

export default class LwcConditionalRendering extends LightningElement {
    @track isEven
    @track num
    changeHandler(event){
        this.num=event.target.value;
    }

    handleClick(){
        this.isEven=this.num%2==0
    }
}
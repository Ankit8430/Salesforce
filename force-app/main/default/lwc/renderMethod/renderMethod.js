import { LightningElement } from 'lwc';
import singinTemplate from './singinTemplate.html'
import singupTemplate from './singupTemplate.html'
import renderTemplate from './renderMethod.html'
export default class RenderMethod extends LightningElement {
    selectedButton=''
    render(){
        return this.selectedButton==='Singup'?singupTemplate:
        this.selectedButton==='Singin'? singinTemplate:
        renderTemplate
    }

    handleClick(event){
        this.selectedButton=event.target.label
    }
    submitHandler(event){
        console.log(`${event.target.label} Successfully`)
    }
}
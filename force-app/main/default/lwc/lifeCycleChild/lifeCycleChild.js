import { LightningElement } from 'lwc';

export default class LifeCycleChild extends LightningElement {
    constructor(){
        super()
        console.log('Child Constructor Called')
    }
    connectedCallback(){
        console.log('Child ConnectedCallback Called')
        throw new Error('Loading of child component failed')
    }
    renderedCallback(){
        console.log('Child RenderedCallback Called');
    }
    disconnectedCallback(){
        alert('Disconnect Callback Called')
    }
} 
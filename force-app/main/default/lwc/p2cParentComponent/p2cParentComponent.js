import { LightningElement, api } from 'lwc';

export default class P2cParentComponent extends LightningElement {
    @api message
    @api cardHeading
    @api name
    @api age
}
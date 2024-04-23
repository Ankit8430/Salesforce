import { LightningElement, track } from 'lwc';

export default class HelloWorldLWC extends LightningElement {
    user=["Ankit","Gupta"]

    get fullName(){
        return this.user[0]+this.user[1];
    }
    num1=10
    num2=20
    get sumOfUser(){
        return this.num1+this.num2
    }
}
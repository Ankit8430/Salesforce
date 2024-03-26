import { LightningElement,wire} from 'lwc';
import getAccList from '@salesforce/apex/AccountControllerWithWire.getAccList';
export default class SimpleLWC extends LightningElement {
 accounts
 fetchData(){
    getAccList()
    .then((result)=>{
        this.accounts=result;
    })
    .catch((error)=>{
        this.error=error;
    });
 }
}
import { LightningElement, wire } from 'lwc';

import getAccount from '@salesforce/apex/LWCgetAccountlar.getAccount';

export default class A8wireDecorator extends LightningElement {


    @wire(getAccount ,{filter:'$filterAccount'}) accountList

    filterAccount='Wise'
    handleArama (event){
        this.filterAccount= event.target.value
    }





    
}
import { LightningElement, track } from 'lwc';

export default class A8trackDecorator extends LightningElement {
// @track birey={
//     name: 'Mahmut',
//     age:'33'

// }

// handleIsim(event){
//     this.birey.name= event.target.value

// }

// handleYas(event){
//     this.birey.age= event.target.value

// }
@track
aileBireyleri = [
{id:1 , ad: 'Hamit', Yas:'46'}    ,
{id:2 , ad:'Fadime', Yas:'40'}
]

yeniAd
yeniYas
yeniId=3

handleIsim (event){

    this.yeniAd= event.target.value

}

handleYas (event){

    this.yeniYas    = event.target.value
    
}
handleClick(event){

    const birey =
    { id: this.yeniId , 
    ad: this.yeniAd,
    Yas:this.yeniYas}   
    this.aileBireyleri.push(birey)
    yeniId++


}




}
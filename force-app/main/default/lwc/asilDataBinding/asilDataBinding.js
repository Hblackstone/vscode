import { LightningElement } from 'lwc';

export default class AsilDataBinding extends LightningElement {

isim= 'Resul'


ad = 'ELIF'

handleinput(event) {
    this.ad =event.target.value;
    }


isim ='ali';
soyisim= 'gel';
fullisim

handleisim(event){
    this.isim= event.detail.value
}

handlesoyisim(event){
    this.soyisim= event.target.value
}


get isimlerbuyukHarf(){
    this.fullisim=this.isim.toUpperCase() +' '+ this.soyisim.toUpperCase();
    return this.fullisim;
}

x=14    
y=26
z=27
handlesayi1(event){
    this.x = event.target.value

}
handlesayi2(event){
    this.y = event.target.value
}


get carpim () {
    this.z=parseInt ( this.x) +parseInt( this.y);
    return this.z;


}





}
import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { LazyloadService } from '../service/lazyload.service';

@Component({
  selector: 'app-shop',
  templateUrl: './shop.component.html',
  styleUrls: ['./shop.component.css']
})
export class ShopComponent implements OnInit {

  @Output() addtocart:EventEmitter<any> = new EventEmitter();

  constructor(private lazyservice:LazyloadService) { }

  ngOnInit(): void {
    this.lazyservice.loadScript('assets/js/main.js').subscribe();
  }

  buyproduct(p:any){
    let carts = sessionStorage.getItem('carts')? JSON.parse(sessionStorage.getItem('carts')|| ""):[];
      
    const itemcarts ={
      product:p, //product nhan 1 doi tuong
      quantity :1
    };
    let flat = false;
    
    carts = carts.map((x: { product: any; quantity: 1; }) =>{ 
      if(x.product.productId == p.productId){
        x.quantity +=1;
        
        flat = true;
      }
      return x;

    })
    if(!flat){
      carts.push(itemcarts);
    }
      
    sessionStorage.setItem('carts', JSON.stringify(carts));
    this.addtocart.emit();
  }


}

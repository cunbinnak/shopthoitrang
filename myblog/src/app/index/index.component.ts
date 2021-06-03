import { Component, OnInit, Output, EventEmitter } from '@angular/core';
import { LazyloadService } from '../service/lazyload.service';
import { ProductserviceService } from '../service/productservice.service';

@Component({
  selector: 'app-index',
  templateUrl: './index.component.html',
  styleUrls: ['./index.component.css']
})
export class IndexComponent implements OnInit {
  
  @Output() addtocart:EventEmitter<any> = new EventEmitter();
  

  productdata:any;

  constructor( private lazyservice:LazyloadService, private product:ProductserviceService) { 
  }

  ngOnInit(): void {
    this.lazyservice.loadScript('assets/js/main.js').subscribe(()=>{});
  
    this.loadproduct();
  }

  loadproduct(){
    this.product.getall().subscribe(res=>{
      this.productdata = res;
    })
  }

  buyproduct(p:any){
    // let cart = sessionStorage.getItem('cart')?JSON.parse.arguments(sessionStorage.getItem('cart')):[];
    
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
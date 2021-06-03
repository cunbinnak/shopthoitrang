import { Component } from '@angular/core';
import { IndexComponent } from './index/index.component';
import { ShopComponent } from './shop/shop.component';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'myblog';

  numberitem:number = 0;
  item: any[] = [];
  onActive(componentRef: any){
    if(componentRef instanceof IndexComponent){
      componentRef.addtocart.subscribe(() =>{
        this.numberitem++;
        console.log(componentRef);
      })
    }
    if(componentRef instanceof ShopComponent){
      componentRef.addtocart.subscribe(()=>{
        this.item = sessionStorage.getItem('carts')?JSON.parse(sessionStorage.getItem('carts')||""):[];
        console.log(componentRef)
      })
    }
  }

}

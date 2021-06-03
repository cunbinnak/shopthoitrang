import { Component, OnInit } from '@angular/core';
import { LazyloadService } from '../service/lazyload.service';

@Component({
  selector: 'app-shoppingcart',
  templateUrl: './shoppingcart.component.html',
  styleUrls: ['./shoppingcart.component.css']
})
export class ShoppingcartComponent implements OnInit {

  constructor(private lazyservice:LazyloadService) { }

  ngOnInit(): void {
    this.lazyservice.loadScript('assets/js/main.js').subscribe(x => console.log(x));
  }

}

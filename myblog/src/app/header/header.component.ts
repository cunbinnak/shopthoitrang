import { Component, Input, OnInit } from '@angular/core';

@Component({
  selector: 'app-header',
  templateUrl: './header.component.html',
  styleUrls: ['./header.component.css']
})
export class HeaderComponent implements OnInit {

  @Input() numberItem:number=1;
  @Input() item:number = 1;
  constructor() { }

  ngOnInit(): void {
  }

}

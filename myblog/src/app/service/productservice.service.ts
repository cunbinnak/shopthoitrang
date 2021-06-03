import { Injectable } from '@angular/core';
import {HttpClient} from '@angular/common/http'
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ProductserviceService {

  constructor(private http: HttpClient) { }

  getall(): Observable<any>{
   return this.http.get('http://localhost:8080/miablog/api/product');
  }

  
}
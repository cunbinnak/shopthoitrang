export class product {

    public productId:string;
    public productName:string;
    public productTitle:string;
    public productDes:string;
    public productImg:string;
    public price:number;
    public createDate :Date;
    public catalogId:number;
    public productStatus:boolean;
     
    constructor(productId: string , productName: string, productTitle: string, productDes: string ,
        productImg: string ,price: number ,createDate: Date ,catalogId: number,productStatus: boolean){
            this.productId = productId,
            this.productName = productName,
            this.productTitle = productTitle,
            this.productDes = productDes,
            this.productImg = productImg,
            this.price = price,
            this.createDate = createDate,
            this.catalogId = catalogId,
            this.productStatus = productStatus
        }
    
        product(){
        }

}

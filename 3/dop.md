// 4. Получить информацию о категории товара с кратким названием wheel-barrow9092.  
docAr = db.products.findOne({slug:"вирента-1020"}).categories_ids  
for(i=0; i<docAr.length; i++){  
    print(db.category.findOne({_id: docAr[i]}))  
}  
![image](https://user-images.githubusercontent.com/72013308/232196216-d1050e7e-b8a4-420e-ac81-d51c6d4c9cf9.png)


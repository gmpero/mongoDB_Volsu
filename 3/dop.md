// 4. Получить информацию о категории товара с кратким названием wheel-barrow9092.  
docAr = db.products.findOne({slug:"вирента-1020"}).categories_ids  
for(i=0; i<docAr.length; i++){  
    print(db.category.findOne({_id: docAr[i]}))  
}  
![image](https://user-images.githubusercontent.com/72013308/232196216-d1050e7e-b8a4-420e-ac81-d51c6d4c9cf9.png)

// 9. Сгруппировать пользователей по приобретаемым ими товарам, ограничить результирующий набор заказами, сделанными в определенный период времени
db.orders.aggregate([
    {$unwind: "$lines_items"}, 
    {$project: {lines_items:1, _id:1, user_id:1, sub_total:1, order_date:1}}, 
    {$match:{order_date:{$gt: new Date("2023-01-01"), $lt: new Date("2024-01-01")}}}, 
    {$group: {_id:"$user_id", total: {$sum: "$sub_total"}, item:{$addToSet:"$lines_items"}}}
])
![image](https://user-images.githubusercontent.com/72013308/232196789-71ad627a-5036-40fd-bbb6-7cbc0d5acd09.png)

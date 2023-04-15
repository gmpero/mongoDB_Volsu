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
  
26.Подсчитать общее число голосов, отданных за все отзывы одного пользователя,  
а также усреднить число голосов по всем отзывам каждого пользователя. ??  
  
db.reviews.aggregate([  
    {$group:{_id: "user_id", total: {$sum: "$likes"}, average:{$avg:'$likes'}}}  
])  
![image](https://user-images.githubusercontent.com/72013308/232200386-3a4ad24a-e82d-483c-b5c5-f636704d0fbd.png)  
  
// 27. Получить статистику по продажам. Сколько товаров продано в каждом месяце?  
  
db.orders.aggregate([  
    {$unwind:"$lines_items"},  
    {$group: {_id:{$month: "$order_date"}, quantity: {$sum: "$lines_items.quantity"}, item:{$addToSet:"$_id"}}}  
])  
![image](https://user-images.githubusercontent.com/72013308/232197115-b3346201-8e04-4377-b7b5-716c4ee1028a.png)  
  
// 30. Отобрать различные теги для товаров из категории «Садовые инструменты»  
  
doc = db.categories.findOne({name:"Gardering Tools"}, {_id:true})  
db.products.distinct("tags", {$or:[{"main_cat_id":doc['_id']}, {"categories_ids":doc['_id']}]})  
![image](https://user-images.githubusercontent.com/72013308/232197258-8daeb7d8-5f35-4973-8fce-f128f7cdb74b.png)



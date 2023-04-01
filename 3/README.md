-- 1. Найти все заказы данного пользователя.  
doc = db.users.findOne({username:"Доктор Ливси", email:"Livsi@gmail.ru"}, {_id:true})  
db.orders.find({"user_id": doc['_id']})  
<img width="932" alt="Screenshot_1" src="https://user-images.githubusercontent.com/72013308/229284352-76393728-9249-481b-a2e9-7fc8386842ae.png">
<img width="950" alt="Screenshot_2" src="https://user-images.githubusercontent.com/72013308/229284362-ca4beb00-31ec-4dca-8be4-92780864f5ce.png">
  
-- 2. Запросить пользователя, которому принадлежит конкретный заказ.  
doc = db.orders.findOne({_id: ObjectId('64033c9e38ed804c65ce7279')}, {_id:false, user_id:true})  
db.users.find({'_id': doc['user_id']})  
![image](https://user-images.githubusercontent.com/72013308/229284473-fdccf43c-22cd-45d9-a9cb-43abf220fec1.png)  
  
-- 3. Запрос находит товар с кратким названием wheel-barrow-9092.  
db.products.find({slug:"вирента-1020"})  
![image](https://user-images.githubusercontent.com/72013308/229284525-bceeb5b1-1ff4-4c8a-bbb2-5bb550329b9c.png)  
  
-- 5. Запрос извлекает все обзоры, относящиеся к данном товару.
doc = db.products.findOne({slug:"вирента-1020"}, {_id:true})  
db.reviews.find({'product_id': doc['_id']})  
![image](https://user-images.githubusercontent.com/72013308/229284668-09f40233-576b-4c7f-a839-0c75aa3f8dd1.png)  
  
-- 6. Отображать отзывы в определенном порядке, например, сортировать результаты запроса по количеству проголосовавших за полезность отзыва.  
db.reviews.find().sort({likes:1}) -- по возрастанию лайков  
![image](https://user-images.githubusercontent.com/72013308/229284718-94e3ed55-9f09-46b5-ab87-f188d92119cc.png)  
![image](https://user-images.githubusercontent.com/72013308/229284788-8b75d72c-ad0b-48b9-87f8-9190285eda15.png)  
![image](https://user-images.githubusercontent.com/72013308/229284815-833c6e89-5afc-40d6-913d-134f5a7cbab0.png)  
  
-- 8. Найти всех пользователей, проживающих в Верхнем Манхэттене.  
db.users.find({"addresses":{$elemMatch:{name:"home", street: "Таймс Сквер"}}})   
![image](https://user-images.githubusercontent.com/72013308/229284886-af250c0a-4b3b-4a25-969b-dbd102c77bf5.png)  
  
-- 10. Построить составной индекс по артикулу и дате покупки
db.orders.createIndex({"lines_items.sku":1, order_date:1}) --?

-- 11. Запрос на поиск всех товаров, принадлежащих хотя бы одной из категорий  
db.products.find({category_ids: {$not:{$size:0}}}, {name:true});  
![image](https://user-images.githubusercontent.com/72013308/229284947-fac5c336-5b2a-4940-ae6d-9e7035c07183.png)  
  
-- 12. Поиск товаров либо синего цвета либо произведенных компанией ACME.  
db.products.find({$or:[{"details.color":"grey"}, {"details.manufactured":"Этюд"}]}, {name:true})  
![image](https://user-images.githubusercontent.com/72013308/229284983-32db0f46-9410-49ab-83dd-10b2bfb467ce.png)






  
  





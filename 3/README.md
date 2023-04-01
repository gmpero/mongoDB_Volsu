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
  
-- 13. Найти все товары, имеющие одновременно теги gift(подарок) и тег garden(сад).  
db.products.find({tags:{$all:["семена", "томаты"]}}, {name:true})  
![image](https://user-images.githubusercontent.com/72013308/229285069-6c118d69-1b09-45cd-be5d-6112f5189d9f.png)

-- 14. Поиск всех товаров производства фирмы ACME без тега gardering (садоводство)
db.products.find({"details.manufactured": "Этюд", tags:{$not:{$in:["томаты"]}}}, {name:true})  
![image](https://user-images.githubusercontent.com/72013308/229285089-7592cbab-3a8e-41e1-9035-a0eccf627f2a.png)

-- 15. Найти всех пользователей, фамилии которых не начинаются с буквы B.  
db.users.find({last_name:{$not:/^M/}}, {first_name:true, last_name:true})  
![image](https://user-images.githubusercontent.com/72013308/229285123-2e600951-acde-4095-9a0c-149938056414.png)  

-- 16. Найти товары, помеченные одним из тегов gift или holiday и одним из тегов gardering или landscaping.
db.products.find({$and:[{tags:{$in:["семена", "дача"]}}, {tags:{$in:["дача", "томаты"]}}]}, {name:true})  
![image](https://user-images.githubusercontent.com/72013308/229285149-0401fdec-d5f0-40f4-83db-a59f73a8455b.png)  
  
-- 17. Запросить товары, для которых не заданы цвета.  
db.products.find({"details.color":{$exists:false}}, {name:true});  
  
-- 18. Поиск товара c тегом “soil”(почва).  
db.products.find({tags:"семена"}, {name:true});  
![image](https://user-images.githubusercontent.com/72013308/229285213-38fb43a4-5fe1-4534-84d1-549b5c7ce5fa.png)  

-- 19. Можно считать, что в нулевом элементе массива addresses всегда хранится основной адрес доставки. Найти всех пользователей, для которых основной адрес доставки находится в Нью- Йорке  
db.users.find({"addresses.0.city":"Нью Йорк"}, {username:true});    
![image](https://user-images.githubusercontent.com/72013308/229285246-17c18b94-02ef-49ae-ae80-f3e940ec11ce.png)  
  
-- 20. Найти всех пользователей, домашний адрес которых находится в Нью-Йорке.  
db.users.find({"addresses":{$elemMatch:{name:"home", city: "Нью Йорк"}}}, {username:true})  
![image](https://user-images.githubusercontent.com/72013308/229285292-470df635-fa68-48ba-a9ed-f4be8187bced.png)  
  
-- 21. Найти пользователей, имеющих ровно три адреса.  
db.users.find({addresses:{$size: 3}});  
![image](https://user-images.githubusercontent.com/72013308/229285320-55e94dd9-6a7c-4c93-b599-5d02d3339ea4.png)  
![image](https://user-images.githubusercontent.com/72013308/229285354-90609380-4645-4eb1-8b03-d554435074bd.png)  
  
-- 22. Запрос на получение отзывов данного пользователя, содержащих в тексте слово best или worst (без учета регистра).  
var doc = db.users.findOne({username:"Mario"});  
db.reviews.find({user_id: doc['_id'], text:{ $regex: /сладкий|вкусный/gi } });  
![image](https://user-images.githubusercontent.com/72013308/229285378-71c28642-2452-4b9a-a832-c898e38cb6fb.png)  
  
-- 23. Найти документы, в которых идентификатор хранится в виде строки.  
db.products.find({_id:{$type: 'string'}});  
![image](https://user-images.githubusercontent.com/72013308/229285413-49152a52-c1ea-4bb5-a902-afbb98bc4d7b.png)  
  
-- 24. Вернуть первые 12 отзывов или последние 5.  
db.reviews.find().sort({$natural:1}).limit(12)  
db.reviews.find().sort({$natural:-1}).limit(5)  
  
-- 25. Пропустить первые 24 отзыва и возвратить не более 12 отзывов.  
db.reviews.find().sort({$natural:1}).skip(24).limit(12)  
  
-- 26. Подсчитать общее число голосов, отданных за все отзывы одного пользователя, а также усреднить число голосов по всем отзывам каждого пользователя.  
db.reviews.aggregate([
    {$group:{_id: "user_id", total: {$sum: "$likes"}, average:{$avg:'$likes'}}}
])  
![image](https://user-images.githubusercontent.com/72013308/229285458-59b1b97c-3b33-4731-990e-922487f2e232.png)  
  
-- 27. Получить статистику по продажам. Сколько товаров продано в каждом месяце?  
db.orders.aggregate([
    {$unwind:"$lines_items"}, 
    {$group: {_id:{$month: "$order_date"}, quantity: {$sum:1}, item:{$addToSet:"$_id"}}}
])  
![image](https://user-images.githubusercontent.com/72013308/229285481-cab86e32-5f90-4263-a370-81d659226025.png)
  
-- 28. Найти отзыв, за который подано наибольшее число голосов.  
db.reviews.find().sort({likes:-1}).limit(1)  
![image](https://user-images.githubusercontent.com/72013308/229285508-7a93a12f-3457-4f38-9d52-6c878b7e37b7.png)  
  
-- 29. Найти отзыв, за который подано наименьшее число голосов.  
db.reviews.find().sort({likes:1}).limit(1)  
![image](https://user-images.githubusercontent.com/72013308/229285533-e8f29a68-9ced-4b51-9a2e-489350fe0a7f.png)

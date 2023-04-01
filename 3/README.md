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
  
  





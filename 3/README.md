-- 1. Найти все заказы данного пользователя.  
doc = db.users.findOne({username:"Доктор Ливси", email:"Livsi@gmail.ru"}, {_id:true})  
db.orders.find({"user_id": doc['_id']})  
<img width="932" alt="Screenshot_1" src="https://user-images.githubusercontent.com/72013308/229284352-76393728-9249-481b-a2e9-7fc8386842ae.png">
<img width="950" alt="Screenshot_2" src="https://user-images.githubusercontent.com/72013308/229284362-ca4beb00-31ec-4dca-8be4-92780864f5ce.png">



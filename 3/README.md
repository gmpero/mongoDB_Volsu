-- 1. Найти все заказы данного пользователя.
doc = db.users.findOne({username:"Доктор Ливси", email:"Livsi@gmail.ru"}, {_id:true})
db.orders.find({"user_id": doc['_id']})


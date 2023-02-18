1. use test
![image](https://user-images.githubusercontent.com/72013308/219759510-e585dd4a-55ca-4ca1-b68f-4bc69dc6d433.png)  
  
2. db.users.insert({username:"jones"})  
![image](https://user-images.githubusercontent.com/72013308/219760057-bd99d2df-7841-410b-8ed3-600d4c901cd1.png)  
  
3. db.users.find()  
![image](https://user-images.githubusercontent.com/72013308/219761172-963ac7d4-40a8-4949-b563-5bf7412929a3.png)  
  
4. db.users.save({username:"smith"}) (Данный метод устарел)  
![image](https://user-images.githubusercontent.com/72013308/219765466-9ddbf4f6-401b-49d1-95aa-25eecd1a0fee.png)
// https://www.mongodb.com/docs/v4.4/reference/method/db.collection.save/  
![image](https://user-images.githubusercontent.com/72013308/219776042-0079d086-b025-4e7b-86f7-24895d387b3a.png)  
  
5. db.users.count()  
![image](https://user-images.githubusercontent.com/72013308/219777228-8b87d9f3-21c1-428c-af6e-c9af4728cbf8.png)    
  
6. db.users.find({username:"jones"})  
![image](https://user-images.githubusercontent.com/72013308/219767120-1a29e5c8-5adf-4945-99f0-de11d947323b.png)  
  
7. db.users.update({username:"smith"}, {$set:{country:"canada"}})  
![image](https://user-images.githubusercontent.com/72013308/219777758-fde15e76-5584-4c93-9221-291a6572ef3a.png)    
  
8. db.users.update({username:"smith"}, {$set:{favorities:{cities:["chicago", "rome"],movies:["matrix", "the sting"]}}})  
![image](https://user-images.githubusercontent.com/72013308/219778147-049c1096-0c71-4fa6-81f0-9ecc23308353.png)    
  
9. db.users.update({username:"smith"}, {$unset:{country:1}})  
![image](https://user-images.githubusercontent.com/72013308/219778449-3e480eb7-e593-4256-b1d0-41a15ab30ca8.png)  
  
10. db.users.update({username:"jones"}, {$set:{favorities:{movies:["rocky", "winter"]}}})  
![image](https://user-images.githubusercontent.com/72013308/219769496-02704991-3a81-4e75-bb5a-882773f3d437.png)  
  
11. db.users.find({"favorities.movies":"matrix"})  
![image](https://user-images.githubusercontent.com/72013308/219778939-3d0356e5-ac83-4863-b4c3-048c016cabd0.png)  
  
12. db.users.update({"favorities.movies":"matrix"}, {$addToSet:{"favorities.movies":"matrix2"}}, false, true)  
![image](https://user-images.githubusercontent.com/72013308/219781743-6038ee2d-2c7b-454d-85fc-092c47fe44a3.png)  
  
13. db.users.remove({"favorities.cities":"rome"})  
![image](https://user-images.githubusercontent.com/72013308/219782070-b8e36df0-2735-4a9a-a7c1-995d90b3d966.png)  
  
14. for(i=0; i<200000; i++){db.number.save({num:i});}  (save - устарел)  
for(i=0; i<200000; i++){db.number.insertOne({num:i});}  
![image](https://user-images.githubusercontent.com/72013308/219785312-d0c94c7b-7b83-4c2a-9c03-11925dc627b6.png)  
  
15. db.number.count()  
![image](https://user-images.githubusercontent.com/72013308/219785436-c87e21a3-693b-4867-a3d3-20b2a4ddfc0a.png)  
  
16. db.number.find({num:500})  
![image](https://user-images.githubusercontent.com/72013308/219785581-5f30905d-ad4c-4110-b92d-b8bd6728319e.png)  
  
17. db.number.find({num:{$gt:199995}})  
![image](https://user-images.githubusercontent.com/72013308/219785776-049e16c8-2eaf-40a2-a057-c639aadfc23f.png)  
  
18. db.number.find({num:{$gt:20, $lt:25}})  
![image](https://user-images.githubusercontent.com/72013308/219785979-a3116e64-4f84-4a86-aada-763893a49981.png)  
  
19. db.number.find({num:{$gt:199995}}).explain()  
![image](https://user-images.githubusercontent.com/72013308/219786538-f29d423c-c9ea-459b-a63d-329f5d8a3ff7.png)
![image](https://user-images.githubusercontent.com/72013308/219786743-e171baa7-0a9a-4bb6-adbb-f919051c08de.png)
![image](https://user-images.githubusercontent.com/72013308/219786839-1778ffd8-28e7-40ba-8bde-a667921fc3ee.png)
  
20. db.number.createIndex({num:1});     db.number.getIndexes();  // проверить поиск с индексом  
![image](https://user-images.githubusercontent.com/72013308/219787020-c99406e4-3dda-4042-b5b7-71e055e8b4f6.png)
  
21. show dbs  
![image](https://user-images.githubusercontent.com/72013308/219843906-a7305a85-cdb2-4cb7-893c-f5fd7cca6144.png)
  
22. show collections  
![image](https://user-images.githubusercontent.com/72013308/219843933-7f8293cf-4328-4a15-a20e-9e93faa4f863.png)
  
23. db.stats()  
![image](https://user-images.githubusercontent.com/72013308/219843950-18e35575-53fe-498b-8a82-2490f9309d2e.png)
  
24. db.help()
![image](https://user-images.githubusercontent.com/72013308/219843991-f2b769bd-c077-4010-a64d-4f76e6a12948.png)
  
25. db.users.help()  
![image](https://user-images.githubusercontent.com/72013308/219844036-525eafd4-70da-4adf-91de-3e4f83ec24b4.png)
  
26. db.number.save
![image](https://user-images.githubusercontent.com/72013308/219844054-6f19aea2-6722-4324-b7f8-d55deb4238dd.png)
  
27. db.users.insert({username:"tom", age:28, languages:["english", "german"]})  
![image](https://user-images.githubusercontent.com/72013308/219844109-b17c2015-92c0-4b8b-a294-ece71793c687.png)
  
28. document=({username:"bill", age:32, languages:["english", "french"]});   db.users.insert(document)  
![image](https://user-images.githubusercontent.com/72013308/219844153-aac839ba-5f7e-41fc-8a46-a5d806df2643.png)
  
29. db.createCollection("profile", {capped:true, size:500, max:150})  
![image](https://user-images.githubusercontent.com/72013308/219844175-e5485734-7a6b-4038-984f-3b0f6101d35d.png)
  
30. db.users.insert({username:"tom", age:32, languages:["english"]})  
![image](https://user-images.githubusercontent.com/72013308/219844192-ebb7c8ab-c235-4458-9ddd-7d99c554242b.png)
  
31. db.users.find({username:"tom"})  
![image](https://user-images.githubusercontent.com/72013308/219844968-a9a2a83b-7e8c-474c-8e33-f00fbb94433b.png)
  
32. db.users.find({languages:"german"})  
![image](https://user-images.githubusercontent.com/72013308/219845001-b302246c-3503-46f8-bea0-b1d630c946e8.png)
  
33. db.users.find({username:"tom", age:32})  
![image](https://user-images.githubusercontent.com/72013308/219845023-013b6ade-485c-478c-92c2-103dff7e4766.png)
  
34. db.users.find({username:"tom"}, {age:1})  
![image](https://user-images.githubusercontent.com/72013308/219845059-ec15c096-1ba3-4b2b-9931-ada8866d9348.png)
  
35. db.users.find({username:"tom"}, {age:true, _id:false})  
![image](https://user-images.githubusercontent.com/72013308/219845120-58be687b-b6b9-47d1-90c5-20aa38d57a64.png)
  
36. db.users.insert({username:"alex", age:28, company:{name:"microsoft", country:"usa"}})  
![image](https://user-images.githubusercontent.com/72013308/219845152-c9d76be8-2dcc-44fc-b0a3-4af0cb63ccc7.png)
  
37. db.users.find().limit(3)  
![image](https://user-images.githubusercontent.com/72013308/219845181-aa073e25-b33a-4d3c-b7de-077e8788a8fe.png)
![image](https://user-images.githubusercontent.com/72013308/219845244-da7e043d-fcaa-4399-90f8-e27a5b6b9683.png)
  
38. db.users.find().skip(2)  
![image](https://user-images.githubusercontent.com/72013308/219845278-639c0ae2-1616-414e-9ab7-ac09fb41565e.png)
![image](https://user-images.githubusercontent.com/72013308/219845285-b8279466-67e4-4953-8dff-5e0813893ae8.png)
  
39. db.users.find().sort({username:1})  
![image](https://user-images.githubusercontent.com/72013308/219845352-e57eef90-462c-4a16-822e-cae8d29d5162.png)
![image](https://user-images.githubusercontent.com/72013308/219845364-0b23ffe1-b7be-4b3a-8168-2d475bc61d04.png)
![image](https://user-images.githubusercontent.com/72013308/219845385-7ed2a2fe-26d9-47b1-8dfa-53693f5d78d4.png)
  
40. db.users.find().sort({username:1}).skip(1).limit(2)  
![image](https://user-images.githubusercontent.com/72013308/219845419-24311897-01e6-4eb2-a229-1271fd9d886a.png)





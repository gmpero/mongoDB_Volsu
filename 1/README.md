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
  
21. 














  


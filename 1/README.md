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
![image](https://user-images.githubusercontent.com/72013308/219765773-d71b70f2-13df-4eec-a9a6-123710a0aec7.png)  
  
6. db.users.find({username:"jones"})  
![image](https://user-images.githubusercontent.com/72013308/219767120-1a29e5c8-5adf-4945-99f0-de11d947323b.png)  
  
7. db.users.update({username:"smith"}, {$set:{country:"canada"}})  
![image](https://user-images.githubusercontent.com/72013308/219767325-dc4ebec3-23d1-48dd-a00c-ce971235548c.png)  
  
8. db.users.update({username:"smith"}, {$set:{favorities:{cities:["chicago", "rome"],movies:["matrix", "the sting"]}}})  
![image](https://user-images.githubusercontent.com/72013308/219768749-f1835294-b1da-4226-a5ff-1097ab4b3d10.png)  
  
9. db.users.update({username:"smith"}, {$unset:{country:1}})  
![image](https://user-images.githubusercontent.com/72013308/219769137-63158133-8708-4591-bc17-de46c69fb9d1.png)  
  
10. db.users.update({username:"jones"}, {$set:{favorities:{movies:["rocky", "winter"]}}})  
![image](https://user-images.githubusercontent.com/72013308/219769496-02704991-3a81-4e75-bb5a-882773f3d437.png)  
  
11. db.users.find({"favorities.movies":"matrix"})  











  


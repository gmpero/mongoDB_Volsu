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
  
41. db.users.find().sort({$natural:-1}).limit  
![image](https://user-images.githubusercontent.com/72013308/219845691-84ad13ad-067a-432a-86cd-e85cba3f31ab.png)
  
42. db.users.find({username:"tom"}, {languages:{$slice:1}})  
![image](https://user-images.githubusercontent.com/72013308/219845735-e92b8c56-bfcd-4998-b05a-d79dabc9b831.png)
  
43. db.users.find({username:"tom"}, {languages:{$slice:[-1,1]}})  
![image](https://user-images.githubusercontent.com/72013308/219845773-e95db6f7-eb47-481b-b885-21c4be1e8db9.png)
  
44. db.users.find({}, {username:1})
![image](https://user-images.githubusercontent.com/72013308/219845797-410a31df-8bd3-4e65-b367-ffff8e8d3806.png)
  
45. db.users.find({},{username:1})   //???????????????
![image](https://user-images.githubusercontent.com/72013308/219845836-f37315fd-ef39-4aea-a233-d3a65f019cb5.png)
  
46. db.users.find({username:"tom"}).count()  
![image](https://user-images.githubusercontent.com/72013308/219845862-b76f67b2-496e-4058-ab8c-c27d413256f4.png)
  
47. db.users.find({username:"tom"}).skip(2).count(true)
![image](https://user-images.githubusercontent.com/72013308/219845891-debe81ed-4eee-4c1f-8de9-c325c579f023.png)
  
48. db.users.distinct("username")
![image](https://user-images.githubusercontent.com/72013308/219845916-da07b541-6db5-4cbe-b82d-4f65434322f9.png)
  
49. db.profile.remove({})  
![image](https://user-images.githubusercontent.com/72013308/219845953-f9bad8cb-a467-4485-90e2-55f630056c4a.png)
  
50. db.profile.drop()
![image](https://user-images.githubusercontent.com/72013308/219845981-930368f4-0ee7-4756-a42e-1f2c58771e22.png)
  
51. db.users.find({username:"tom"}, {languages:{$slice:1}})  
![image](https://user-images.githubusercontent.com/72013308/219846225-8d689c5d-78e2-4ebe-985d-87502ac8dc3d.png)
  
52. db.users.find({username:"tom"}, {languages:{$slice:[-1,1]}})
![image](https://user-images.githubusercontent.com/72013308/219846265-b4942ba3-cba0-4298-9320-1ff1da7c6460.png)
  
53. db.users.find({age:{$ne:22}})  
![image](https://user-images.githubusercontent.com/72013308/219846335-e6c39209-b378-44d6-8e5e-def6f491ab74.png)
![image](https://user-images.githubusercontent.com/72013308/219846356-a28224cc-213b-4aa0-8b16-a10dcfac7ec2.png)
![image](https://user-images.githubusercontent.com/72013308/219846371-6672eb97-1a70-4582-b943-9f076d28b96e.png)
  
54. db.users.find({age:{$in:[22, 32]}})  
![image](https://user-images.githubusercontent.com/72013308/219846407-4c018ae6-8a98-494a-b8df-970392acfb02.png)
  
55. db.users.find({age:{$nin:[22, 32]}})
![image](https://user-images.githubusercontent.com/72013308/219846454-125496ff-5e05-4812-b58a-2afc0eb5cd16.png)
![image](https://user-images.githubusercontent.com/72013308/219846470-71a0d498-ab28-44ac-8665-893b54491d08.png)
  
56. db.users.find({languages:{$all:["english", "french"]}})  
![image](https://user-images.githubusercontent.com/72013308/219846507-5bb20ec1-f3e0-4aa8-ac70-88621be3d026.png)
  
57. db.users.find({$or:[{username:"tom"}, {age:22}]})  
![image](https://user-images.githubusercontent.com/72013308/219846533-bdf2fcf4-cc82-401c-a211-e03f4e5ace00.png)
  
58. db.users.find({username:"tom", $or:[{age:22}, {languages:"german"}]})  
![image](https://user-images.githubusercontent.com/72013308/219846622-d7bc9ea7-3811-48b6-ba7e-4d25fe14ed12.png)
  
59. db.users.find({languages:{$size:2}})
![image](https://user-images.githubusercontent.com/72013308/219846640-1b7b38b8-0ff4-4642-b196-0a9e5e56de94.png)
  
60. db.users.find({company:{$exists:true}})
![image](https://user-images.githubusercontent.com/72013308/219846658-2e0aae85-3de0-45df-8e0a-ddd2f28ddf6e.png)
  
61. db.users.find({username:{$regex:"^b"}})
![image](https://user-images.githubusercontent.com/72013308/219846843-1143f429-2435-412e-814f-d5b199ce3148.png)
  
62. db.users.save({username:"eugene", age:29, languages:["english", "spanish", "french"]}) // устарел
db.users.insertOne({username:"eugene", age:29, languages:["english", "spanish", "french"]})
![image](https://user-images.githubusercontent.com/72013308/219846920-b54beca7-7e0c-4fc8-9164-828328d28b1e.png)
  
63. db.users.update({username:"tom"}, {$set:{username:"tom", age:25, married:false}}, {upsert:true})  
![image](https://user-images.githubusercontent.com/72013308/219847284-652b7b65-b152-4af1-842f-53e70e32bbb4.png)
  
64. db.users.update({username:"eugene", age:29}, {$set:{age:30}})  
![image](https://user-images.githubusercontent.com/72013308/219847311-ccaa3fec-cc28-42c2-875c-855e47cced62.png)
  
65. db.users.update({username:"tom"}, {$set:{username:"tom", age:25, married:false}}, {multi:true})
![image](https://user-images.githubusercontent.com/72013308/219847334-fdf0ddd9-8e1f-4921-94f6-f8c019c11248.png)
  
66. db.users.update({username:"tom"}, {$inc:{salary:100}})
![image](https://user-images.githubusercontent.com/72013308/219847353-b6486322-92f2-4cf7-a90b-7c4244763c7e.png)
  
67. db.users.update({username:"tom"}, {$unset:{salary:1}})
![image](https://user-images.githubusercontent.com/72013308/219847372-35ad6cd4-0ac5-4266-8449-92f4b37b1e1f.png)
  
68. db.users.update({username:"tom"}, {$unset:{salary:1, age:1}})
![image](https://user-images.githubusercontent.com/72013308/219847391-c2f1cdcf-3e27-40d4-876f-dde0e1439790.png)
  
69. db.users.update({username:"tom"}, {$addToSet:{languages:"spanish"}})
![image](https://user-images.githubusercontent.com/72013308/219847412-5989ce23-2552-467e-846b-5b2c1363c354.png)
  
70. db.users.update({username:"tom"}, {$addToSet:{languages:{$each:["russian", "italian"]}}})  
![image](https://user-images.githubusercontent.com/72013308/219847432-0bc8373e-b7cb-4e0a-a121-f81a7ae26877.png)
  
71.

db.category.save({name: "Семена", slug:"gardering-seeds", description: "Семена для сада и огорода"})


db.category.insertOne({
    name:"Семена томатов", 
    slug:"Семена томатов", 
    ancestors:[{
        name:"Семена", 
        _id:ObjectId("640326f338ed804c65ce726a"), 
        slug:"gardering-seeds"}],
    parent_id:ObjectId("640326f338ed804c65ce726a"),
    description:"Лучшие сорта томатов на 2023 год: характеристики, описание и фото. До начала дачного сезона осталось не так много времени, а это значит, что любителям садового отдыха пора запасаться семенами помидоров и заниматься рассадой. Чтобы повысить урожайность, необходимо подобрать правильный посадочный материал. Мы собрали огромный ТОП лучших сортов томатов 2022 года, которые точно не оставят вас равнодушным."})


   -- ТОВАРЫ
db.products.insertOne({
    name:"Томат Розочка", 
    sku:"8787", 
    slug:"розочка-8787", 
    description:"Розочка - среднеспелый гибрид, демонстрирующий лучшие черты в южных регионах с мягким климатом.", 
    details:{
        weight:20, 
        weight_units:"gram", 
        color:["белый"], 
        manufactured:"Этюд"
    }, 
    total_reviews:3, 
    average_reviews:5, 
    pricing:{
        retail:50, 
        sale:45
    }, 
    pricing_history:[
        {
            retail:50, 
            sale:48, 
            start: new Date(2022, 11, 1), 
            end: new Date(2022, 12, 28)
        }, 
        {
            retail:50, 
            sale:46, 
            start: new Date(2022, 12, 29), 
            end: new Date(2022, 12, 3)
        }
    ],  
    main_cat_id:ObjectId("640326f338ed804c65ce726b"), 
    tags:["семена", "томаты"]
})

db.products.insertOne({
    name:"Томат Биф", 
    sku:"9090", 
    slug:"биф-9090", 
    description:"Биф томаты - это группа сортов с крупными, мясистыми сладкими плодами, отличающимися сочной зернистой мякотью с высоким содержанием сахаров и сухих веществ. Мякоть этих помидор мясистая, густая, с повышенным содержанием сахаров и высоким процентом сухого вещества.", 
    details:{
        weight:20, 
        weight_units:"gram", 
        color:["grey"], 
        manufactured:"Этюд"
    }, 
    total_reviews:5, 
    average_reviews:4.5, 
    pricing:{
        retail:50, 
        sale:45
    }, 
    pricing_history:[
        {
            retail:50, 
            sale:40, 
            start: new Date(2022, 11, 1), 
            end: new Date(2022, 12, 28)
        }, 
        {
            retail:40, 
            sale:36, 
            start: new Date(2022, 12, 29), 
            end: new Date(2022, 12, 3)
        }
    ],  
    main_cat_id:ObjectId("640326f338ed804c65ce726b"), 
    tags:["семена", "томаты"]
})

db.products.insertOne({
    name:"Огурец Вирента F-1", 
    sku:"1020", 
    slug:"вирента-1020", 
    description:"Огурец Вирента f1 – это светолюбивый и хорошо адаптируемый гибрид, зеленцы которого белошипые, бугорчатые, без горечи, достигающие в длину 15 см. Плоды сорта идеальны по вкусовым качествам как в качестве консервации, так и в свежем виде. Огурец Вирента устойчив к целому ряду распространенных огуречных болезней. Высадка огурца сорта Вирента может выполняться как рассадным, так и семенным способом.", 
    details:{
        weight:20, 
        weight_units:"gram", 
        color:["grey"], 
        manufactured:"Этюд"
    }, 
    total_reviews:1, 
    average_reviews:4.5, 
    pricing:{
        retail:100, 
        sale:95
    }, 
    pricing_history:[
        {
            retail:50, 
            sale:40, 
            start: new Date(2022, 11, 1), 
            end: new Date(2022, 12, 28)
        }, 
        {
            retail:40, 
            sale:36, 
            start: new Date(2022, 12, 29), 
            end: new Date(2022, 12, 3)
        }
    ],  
    main_cat_id:ObjectId("64032a9d38ed804c65ce726c"), 
    tags:["семена", "томаты"]
})

-- ПОЛЬЗОВАТЕЛИ
db.users.insertOne({
    username:"Mario", 
    email:"mario@gmail.ru", 
    first_name:"Super", 
    last_name:"Mario", 
    hashed_password:"fds87gs97gf7gfd7g87df89g78df9", 
    addresses:[
        {
            name:"home", 
            street:"Таймс Сквер", 
            city:"Нью Йорк", 
            state:"Манхэттен", 
            zip:13473
        },
    ], 
    payment_methods:[
        {
            name:"VISA", 
            last_four:7362,
            crypted_name:"g67rg67df7gfd", 
            expiration_date: new Date(2023, 1, 5)
        }
    ]
})

db.users.save({
    username:"Агент 00Х", 
    email:"agent@gmail.ru", 
    first_name:"Сын", 
    last_name:"Своей эпохи", 
    hashed_password:"fg789s98g7bvcbv78bd897sd87bx7", 
    addresses:[
        {
            name:"home", 
            street:"ул. Секретная", 
            city:"Москва", 
            state:"Московская", 
            zip:93032
        }
    ], 
    payment_methods:[
        {
            name:"VISA", 
            last_four:8754, 
            crypted_name:"fsio6h5ngre", 
            expiration_date: new Date(2023, 1, 6)
        }
    ]
})

db.users.insertOne({
    username:"Доктор Ливси", 
    email:"Livsi@gmail.ru", 
    first_name:"Доктор", 
    last_name:"Ливси", 
    hashed_password:"fg789s98g7bvcbv78bd897sd87bx7", 
    addresses:[
        {
            name:"home", 
            street:"ул. Остров сокровищ", 
            city:"Выдуманный город", 
            state:"обл. старого порта", 
            zip:93032
        }
    ], 
    payment_methods:[
        {
            name:"VISA", 
            last_four:8754, 
            crypted_name:"fsio6h5ngre", 
            expiration_date: new Date(2023, 1, 6)
        }
    ]
})

-- отзывы

db.reviews.insertOne({
    product_id:ObjectId("64032fe338ed804c65ce7270"), 
    date: new Date(2023, 1, 1), 
    title:"Супер сорт - Розочка", 
    text:"Понравились данные томаты, просто класс", 
    rating:5, 
    user_id:ObjectId("6403327338ed804c65ce7273"), 
    username:"Агент 00Х", 
    likes:0, 
    likes_id:[]
})



db.reviews.insertOne({
    product_id:ObjectId("64032f7838ed804c65ce726f"), 
    date: new Date(2023, 1, 1), 
    title:"Огурцы - ТОП", 
    text:"Купил Виренту F-1 и не жалею", 
    rating:5, 
    user_id:ObjectId("6403333638ed804c65ce7274"), 
    username:"Доктор Ливси", 
    likes:1, 
    likes_id:[ObjectId("6403333638ed804c65ce7274")]
})

db.reviews.insertOne({
    product_id:ObjectId("64032fe338ed804c65ce7271"), 
    date: new Date(2023, 1, 1), 
    title:"Томат БИФ - ТОП", 
    text:"Большой красный помидор, сладкий вкусный, жаль что выращивать только надо!", 
    rating:4, 
    user_id:ObjectId("640331a138ed804c65ce7272"), 
    username:"Mario", 
    likes:0, 
    likes_id:[]
})

-- ЗАКАЗЫ
db.orders.insertOne({
    user_id:ObjectId("6403333638ed804c65ce7274"), 
    state:"CART", 
    lines_items:[
        {
            _id:ObjectId("64032f7838ed804c65ce726f"), 
            sku:"1020", 
            name:"Огурец Вирента F-1", 
            quantity:2, 
            pricing:{
                retail:100, 
                sale:95
            }
        }, 
        {
            _id:ObjectId("64032fe338ed804c65ce7270"), 
            sku:"8787", 
            name:"Томат Розочка", 
            quantity:1, 
            pricing:{
                retail:50, 
                sale:45
            }
        }
    ], 
    shipping_address:{
        street :"ул. Остров сокровищ",
        city:"Выдуманный город",
        state:"обл. старого порта",
        zip:93032,
    }, 
    sub_total: 250
})
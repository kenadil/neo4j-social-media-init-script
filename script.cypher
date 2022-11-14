CREATE 
    (papa:User { username: 'Dendi', name: 'Danil Ishutin', age: 32, city: 'Lvov', sex: 'M' }),
    (daxao:User { username: 'Daxak', name: 'Nikita Kuzmin', age: 25, city: 'Moscow', sex: 'M' }),
    (collapse:User {username: 'Collapse', name: 'Magomed Khalilov', age: 20, city: 'Astana', sex: 'M'}),
    (januel:User {username: 'Januel', name: 'Januel Arcilla', age: 24, city: 'Manila', sex: 'M'}),
    (saksa:User {username: 'Saksa', name: 'Martin Sazdov', age: 27, city: 'Skopje', sex: 'M' }),
    (legenda:User {username:'ALOHADANCE', name: 'Ilya Korobkin', age: 25, city: 'Kharkov', sex: 'M'}),
    (golovach:User {username: 'LenaGol0vach', name: 'Golovach Lena', age: 60, city: 'Ulan Ude', sex: 'F'}),
    (pirat:User {username: 'Serega Pirat', name: 'Russell Crowe', age: 30, city: 'Rome', sex: 'M'}),

    (stream:Interests {name: 'Streaming'}),
    (sports:Interests {name: 'Sports'}),
    (business:Interests {name: 'Business'}),

    (papa)-[:FRIENDS_WITH]->(collapse),
    (papa)<-[:FRIENDS_WITH]-(collapse),
    (collapse)-[:FRIENDS_WITH]->(daxao),
    (collapse)<-[:FRIENDS_WITH]-(daxao),
    (legenda)<-[:FRIENDS_WITH]-(papa),
    (legenda)-[:FRIENDS_WITH]->(papa),
    (legenda)-[:FRIENDS_WITH]->(januel),
    (legenda)<-[:FRIENDS_WITH]-(januel),
    (legenda)-[:FRIENDS_WITH]->(saksa),
    (legenda)<-[:FRIENDS_WITH]-(saksa),
    (januel)-[:FRIENDS_WITH]->(saksa),
    (januel)<-[:FRIENDS_WITH]-(saksa),
    (januel)-[:FRIENDS_WITH]->(papa),
    (januel)<-[:FRIENDS_WITH]-(papa),
    (pirat)-[:FRIENDS_WITH]->(collapse),
    (pirat)<-[:FRIENDS_WITH]-(collapse),
    (pirat)-[:FRIENDS_WITH]->(daxao),
    (pirat)<-[:FRIENDS_WITH]-(daxao),

    (daxao)-[:MEMBER_OF]->(sports),
    (collapse)-[:MEMBER_OF]->(sports),
    (januel)-[:MEMBER_OF]->(sports),
    (saksa)-[:MEMBER_OF]->(sports),
    (golovach)-[:MEMBER_OF]->(sports),

    (legenda)-[:MEMBER_OF]->(stream),
    (papa)-[:MEMBER_OF]->(stream),
    (daxao)-[:MEMBER_OF]->(stream),
    (pirat)-[:MEMBER_OF]->(stream),
    (januel)-[:MEMBER_OF]->(stream), 

    (januel)-[:MEMBER_OF]->(business),
    (saksa)-[:MEMBER_OF]->(business),
    (pirat)-[:MEMBER_OF]->(business)



CREATE 
  (king:User {username: 'EvilArthas', name: 'Виталий Цаль', age: 31, city: 'Dnepropetrovsk', sex: 'M'}),
  (ramzes:User {username: 'Ramzes666', name: 'Roman Kushnarev', age: 23, city: 'Moscow', sex: 'M'})

MATCH (n:User)
WHERE n.username="EvilArthas"
  CREATE
    (a:Post {content: 'Покормил собаку 14.1 лет', published: '11.02.2022' }),
    (b:Post {content: 'Оп! Мизантроп', published: '11.05.2022'}),
    (c:Post {content: 'Изи-изи для папизи', published: '11.08.2022'}),
    (c)-[:CREATED_BY]->(n),
    (a)-[:CREATED_BY]->(n),
    (b)-[:CREATED_BY]->(n)

MATCH (n:User)
WHERE n.username="Ramzes666"
  CREATE
    (a:Post {content: 'ВСТАНЬ МИД', published: '11.04.2022'}),
    (a)-[:CREATED_BY]->(n)

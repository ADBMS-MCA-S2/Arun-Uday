> use college
switched to db college
> db.college.insert({name:'amal',course:'ca'})
WriteResult({ "nInserted" : 1 })
> db.college.getIndexes()
[ { "v" : 2, "key" : { "_id" : 1 }, "name" : "_id_" } ]
> db.college.createIndex({name:1})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}
> db.college.getIndexes()
[
        {
                "v" : 2,
                "key" : {
                        "_id" : 1
                },
                "name" : "_id_"
        },
        {
                "v" : 2,
                "key" : {
                        "name" : 1
                },
                "name" : "name_1"
        }
]
> db.college.dropIndex({name:1})
{ "nIndexesWas" : 2, "ok" : 1 }
> db.college.getIndexes()
[ { "v" : 2, "key" : { "_id" : 1 }, "name" : "_id_" } ]

> db.college.createIndex({name:'text'})
{
        "numIndexesBefore" : 1,
        "numIndexesAfter" : 2,
        "createdCollectionAutomatically" : false,
        "ok" : 1
}

> db.college.find({$text:{$search:"amal"}})
{ "_id" : ObjectId("62d49bfd5c6c797916c471fa"), "name" : "amal", "course" : "ca" }

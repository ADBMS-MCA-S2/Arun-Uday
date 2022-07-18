 use student
switched to db student
> db.createCollection("Details")
{ "ok" : 1 }

> db.Details.insert({'id':101,'name':'Abhi','course':'MCA','sem':2})
WriteResult({ "nInserted" : 1 })
> db.Details.insert({'id':102,'name':'Akhil','course':'BCA','sem':6})
WriteResult({ "nInserted" : 1 })
> db.Details.insert({'id':103,'name':'Amal','course':'MSC','sem':6})
WriteResult({ "nInserted" : 1 })
> db.Details.find()
{ "_id" : ObjectId("62a7d9ff87a4f5ad6819da4d"), "id" : 101, "name" : "Abhi", "course" : "MCA", "sem" : 2 }
{ "_id" : ObjectId("62a7da1787a4f5ad6819da4e"), "id" : 102, "name" : "Akhil", "course" : "BCA", "sem" : 6 }
{ "_id" : ObjectId("62a7da2987a4f5ad6819da4f"), "id" : 103, "name" : "Amal", "course" : "MSC", "sem" : 6 }
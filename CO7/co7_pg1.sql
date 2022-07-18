C:\Program Files\MongoDB\Server\5.0\bin>start mongod -replSet qwerty -logpath \Data\rs1\1.log -dbpath \Data\rs1 --port 27018

C:\Program Files\MongoDB\Server\5.0\bin>start mongod -replSet qwerty -logpath \Data\rs2\2.log -dbpath \Data\rs2 --port 27019

C:\Program Files\MongoDB\Server\5.0\bin>start mongod -replSet qwerty -logpath \Data\rs3\3.log -dbpath \Data\rs3 --port 27020


###27018
mongo --port 27018
config={"_id":"qwerty",members:[{_id:0,host:"localhost:27018"},{_id:1,host:"localhost:27019"},{_id:2,host:"localhost:27020"}]}
{
        "_id" : "qwerty",
        "members" : [
                {
                        "_id" : 0,
                        "host" : "localhost:27018"
                },
                {
                        "_id" : 1,
                        "host" : "localhost:27019"
                },
                {
                        "_id" : 2,
                        "host" : "localhost:27020"
                }
        ]
}
> rs.initiate(config)
{ "ok" : 1 }
qwerty:SECONDARY> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
qwerty:PRIMARY>

###27019
mongo --port 27019
> rs.secondaryOk()
qwerty:SECONDARY> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
qwerty:SECONDARY> use college
switched to db college
qwerty:SECONDARY> db.college.insert({name:"arun"})
WriteCommandError({
        "topologyVersion" : {
                "processId" : ObjectId("62d49fde9b7aa821e99ddaad"),
                "counter" : NumberLong(4)
        },
        "ok" : 0,
        "errmsg" : "not master",
        "code" : 10107,
        "codeName" : "NotWritablePrimary",
        "$clusterTime" : {
                "clusterTime" : Timestamp(1658102329, 1),
                "signature" : {
                        "hash" : BinData(0,"AAAAAAAAAAAAAAAAAAAAAAAAAAA="),
                        "keyId" : NumberLong(0)
                }
        },
        "operationTime" : Timestamp(1658102329, 1)
})

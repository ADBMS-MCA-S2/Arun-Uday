> db.createUser({user:"amal",pwd:"123",roles:[{role:'read',db:'college'}]})
Successfully added user: {
        "user" : "amal",
        "roles" : [
                {
                        "role" : "read",
                        "db" : "college"
                }
        ]
}

> show users;
{
        "_id" : "college.amal",
        "userId" : UUID("ab8a395c-ba24-40d1-9007-6de4ce7bef8a"),
        "user" : "amal",
        "db" : "college",
        "roles" : [
                {
                        "role" : "read",
                        "db" : "college"
                }
        ],
        "mechanisms" : [
                "SCRAM-SHA-1",
                "SCRAM-SHA-256"
        ]
}

> show roles
{
        "role" : "userAdmin",
        "db" : "college",
        "isBuiltin" : true,
        "roles" : [ ],
        "inheritedRoles" : [ ]
}
{
        "role" : "dbAdmin",
        "db" : "college",
        "isBuiltin" : true,
        "roles" : [ ],
        "inheritedRoles" : [ ]
}
{
        "role" : "enableSharding",
        "db" : "college",
        "isBuiltin" : true,
        "roles" : [ ],
        "inheritedRoles" : [ ]
}
{
        "role" : "read",
        "db" : "college",
        "isBuiltin" : true,
        "roles" : [ ],
        "inheritedRoles" : [ ]
}
{
        "role" : "dbOwner",
        "db" : "college",
        "isBuiltin" : true,
        "roles" : [ ],
        "inheritedRoles" : [ ]
}
{
        "role" : "readWrite",
        "db" : "college",
        "isBuiltin" : true,
        "roles" : [ ],
        "inheritedRoles" : [ ]
}
C:\Users\Arun>mongodump
2022-07-15T14:25:15.434+0530    writing admin.system.users to dump\admin\system.users.bson
2022-07-15T14:25:15.442+0530    done dumping admin.system.users (1 document)
2022-07-15T14:25:15.443+0530    writing admin.system.version to dump\admin\system.version.bson
2022-07-15T14:25:15.447+0530    done dumping admin.system.version (2 documents)
2022-07-15T14:25:15.447+0530    writing employee.employees to dump\employee\employees.bson
2022-07-15T14:25:15.450+0530    done dumping employee.employees (3 documents)

C:\Users\Arun>mongorestore ./dump/
2022-07-15T14:25:42.362+0530    preparing collections to restore from
2022-07-15T14:25:42.375+0530    reading metadata for employee.employees from dump\employee\employees.metadata.json
2022-07-15T14:25:42.401+0530    restoring employee.employees from dump\employee\employees.bson
2022-07-15T14:25:42.421+0530    finished restoring employee.employees (3 documents, 0 failures)
2022-07-15T14:25:42.421+0530    restoring users from dump\admin\system.users.bson
2022-07-15T14:25:42.456+0530    no indexes to restore for collection employee.employees
2022-07-15T14:25:42.456+0530    3 document(s) restored successfully. 0 document(s) failed to restore.

C:\Users\Arun>mongodump --db=employee
2022-07-15T14:26:17.220+0530    writing employee.employees to dump\employee\employees.bson
2022-07-15T14:26:17.230+0530    done dumping employee.employees (3 documents)
C:\Users\Arun>mongorestore --db employee dump/employee
2022-07-15T14:27:03.383+0530    building a list of collections to restore from dump\employee dir
2022-07-15T14:27:03.387+0530    reading metadata for employee.employees from dump\employee\employees.metadata.json
2022-07-15T14:27:03.414+0530    restoring employee.employees from dump\employee\employees.bson
2022-07-15T14:27:03.438+0530    finished restoring employee.employees (3 documents, 0 failures)
2022-07-15T14:27:03.438+0530    no indexes to restore for collection employee.employees
2022-07-15T14:27:03.440+0530    3 document(s) restored successfully. 0 document(s) failed to restore.

C:\Users\Arun>mongorestore --db employee dump/employee
2022-07-15T14:27:03.378+0530    The --db and --collection flags are deprecated for this use-case; please use --nsInclude instead, i.e. with --nsInclude=${DATABASE}.${COLLECTION}
2022-07-15T14:27:03.383+0530    building a list of collections to restore from dump\employee dir
2022-07-15T14:27:03.387+0530    reading metadata for employee.employees from dump\employee\employees.metadata.json
2022-07-15T14:27:03.414+0530    restoring employee.employees from dump\employee\employees.bson
2022-07-15T14:27:03.438+0530    finished restoring employee.employees (3 documents, 0 failures)
2022-07-15T14:27:03.438+0530    no indexes to restore for collection employee.employees
2022-07-15T14:27:03.440+0530    3 document(s) restored successfully. 0 document(s) failed to restore.

C:\Users\Arun>mongodump --db student --collection Details
2022-07-15T14:29:14.758+0530    writing student.Details to dump\student\Details.bson
2022-07-15T14:29:14.767+0530    done dumping student.Details (3 documents)
C:\Users\Arun>mongorestore --db student --collection Details dump/student/Details.bson
2022-07-15T14:30:16.288+0530    checking for collection data in dump\student\Details.bson
2022-07-15T14:30:16.295+0530    reading metadata for student.Details from dump\student\Details.metadata.json
2022-07-15T14:30:16.321+0530    restoring student.Details from dump\student\Details.bson
2022-07-15T14:30:16.392+0530    finished restoring student.Details (3 documents, 0 failures)
2022-07-15T14:30:16.392+0530    no indexes to restore for collection student.Details
2022-07-15T14:30:16.394+0530    3 document(s) restored successfully. 0 document(s) failed to restore.
C:\Users\Arun>mongorestore --db student --collection Details dump/student/Details.bson
2022-07-15T14:30:16.288+0530    checking for collection data in dump\student\Details.bson
2022-07-15T14:30:16.295+0530    reading metadata for student.Details from dump\student\Details.metadata.json
2022-07-15T14:30:16.321+0530    restoring student.Details from dump\student\Details.bson
2022-07-15T14:30:16.392+0530    finished restoring student.Details (3 documents, 0 failures)
2022-07-15T14:30:16.392+0530    no indexes to restore for collection student.Details
2022-07-15T14:30:16.394+0530    3 document(s) restored successfully. 0 document(s) failed to restore.

C:\Users\Arun>mongostat
insert query update delete getmore command dirty used flushes vsize   res qrw arw net_in net_out conn                time
    *0    *0     *0     *0       0     2|0  0.0% 0.0%       0 5.47G 40.0M 0|0 0|0   296b   52.9k   18 Jul 15 14:18:52.859
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 5.47G 40.0M 0|0 0|0   112b   52.7k   18 Jul 15 14:18:53.858
    *0    *0     *0     *0       0     1|0  0.0% 0.0%       0 5.47G 40.0M 0|0 0|0   113b   53.4k   18 Jul 15 14:18:54.843
    *0    *0     *0     *0       0     0|0  0.0% 0.0%       0 5.47G 40.0M 0|0 0|0   110b   52.1k   18 Jul 15 14:18:55.852
2022-07-15T14:18:56.494+0530    signal 'interrupt' received; forcefully terminating

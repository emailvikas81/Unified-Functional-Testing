
Call ReadDataTable("Global")


AppPath=values(4)
'SystemUtil.Run "C:\Program Files\HP\QuickTest Professional\samples\flight\app\flight4a.exe","","C:\Program Files\HP\QuickTest Professional\samples\flight\app\","open"

InvokeApplication(AppPath)

SystemUtil.Run AppPath,"","","","open"
TaskResponse="Completed"
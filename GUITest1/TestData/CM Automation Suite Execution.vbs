Set qtApp = CreateObject("QuickTest.Application") ' Create the Application object
qtApp.Launch ' Start QuickTest
qtApp.Visible = True ' Make the QuickTest application visible
qtApp.Options.Run.RunMode="Fast"
qtApp.Options.Run.CaptureForTestResults="OnError"
qtApp.Options.Run.ViewResults = True
Set qtResultsObj = CreateObject("QuickTest.RunResultsOptions") 
qtApp.Open "C:\Program Files\Mercury Interactive\QuickTest Professional\Tests\Claim Miner Automation Suite", True ' Open the test in read-only mode
Set qtTest = qtApp.Test 'set run settings for the test
qtResultsObj.ResultsLocation = "C:\Program Files\Mercury Interactive\QuickTest Professional\Tests\Claim Miner Automation Suite\TestData" ' Set the results location 
qtTest.Run ' Run the test
'qtTest.Close ' Close the test
qtApp.quit
set qtResultsObj = Nothing ' Release the Run Results Options object
Set qtTest = Nothing ' Release the Test object
Set qtApp = Nothing ' Release the Application object 


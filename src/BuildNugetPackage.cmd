copy ..\..\LICENSE.md lib
copy ..\..\README.md lib
del /F /Q /S *.CodeAnalysisLog.xml

".nuget\NuGet.exe" pack -sym Yort.AfterPay.Instore.nuspec -BasePath .\
pause

copy *.nupkg C:\Nuget.LocalRepository\
pause

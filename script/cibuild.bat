xcopy C:\Jenkins\build-libs\GH_IO.dll lib\
xcopy C:\Jenkins\build-libs\Grasshopper.dll lib\
xcopy C:\Jenkins\build-libs\RhinoCommon.dll lib\

C:\Windows\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe src/Plankton.sln /p:Configuration=Release /t:Clean,Build

"C:\Program Files (x86)\NUnit 2.6.3\bin\nunit-console.exe" bin\Release\PlanktonTests.dll

mkdir dist
"C:\Program Files\7-Zip\7z.exe" a -tzip dist\plankton-%3-%2.zip .\bin\Release\Plankton.dll .\bin\Release\Plankton.gha README.md LICENSE.txt
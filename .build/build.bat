setlocal enabledelayedexpansion

rem PowerShell -NoProfile -ExecutionPolicy Bypass -Command "&iex ""& { $(irm https://aka.ms/install-artifacts-credprovider.ps1) } -AddNetfx"""

rem for /f "usebackq tokens=*" %%i in (`vswhere -latest -requires Microsoft.Component.MSBuild -find MSBuild\**\Bin\MSBuild.exe`) do (
rem   "%%i" PlanFin.sln /t:Inl_PlanFin  /p:Configuration=Release
rem )

cd ..
dotnet pack -o NuPkg --verbosity normal -c Release --source https://api.nuget.org/v3/index.json
pause

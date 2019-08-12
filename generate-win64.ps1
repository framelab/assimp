Remove-Item build -Force -Recurse -ErrorAction SilentlyContinue
mkdir build
cd build

cmake -G "Visual Studio 16 2019" `
-DCMAKE_BUILD_TYPE=Release `
..

cd ..
Invoke-Item build\Assimp.sln

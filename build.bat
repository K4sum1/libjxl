# RUN THIS IN VS2017 DEVELOPER COMMAND PROMPT!!!!
set CFLAGS=-D_WIN32_WINNT=0x0501 -O2 -Ob2ity- -GS- -GFAT -Qpar -Qfast_transcendentals
set CPPFLAGS=-D_WIN32_WINNT=0x0501 -O2 -Ob2ity- -GS- -GFAT -Qpar -Qfast_transcendentals
set CXXFLAGS=-D_WIN32_WINNT=0x0501 -O2 -Ob2ity- -GS- -GFAT -Qpar -Qfast_transcendentals
set LDFLAGS=/SUBSYSTEM:CONSOLE,5.1 /opt:REF,ICF
cmake -G Ninja -S . -B build -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTING=OFF -DJPEGXL_ENABLE_BENCHMARK=OFF -DBUILD_SHARED_LIBS=OFF
cmake --build build --config Release --parallel

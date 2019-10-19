function runcpp --argument filename
	echo "[RUNCPP] Compiling C++ Source Code..."
	g++ $filename -std=c++11 -o runable

	echo "[RUNCPP] Executing File"
	./runable && rm ./runable
end

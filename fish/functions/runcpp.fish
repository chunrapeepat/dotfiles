function runcpp --argument filename
	echo "[RUNCPP] Compiling C++ Source Code..."
	g++ $filename -o runable

	echo "[RUNCPP] Executing File"
	./runable && rm ./runable
end

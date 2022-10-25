build:
	mkdir -p bin
	go build -o bin/pocketbase src/main.go

serve:
	bin/pocketbase serve

clean:
	rm -rf bin
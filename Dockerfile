FROM ubuntu:latest

RUN apt-get update && apt-get install -y golang-go

WORKDIR /app 

COPY . .

RUN go build main.go 

CMD ["./main"]
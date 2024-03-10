FROM golang:latest

WORKDIR /app

COPY backend/go.mod backend/go.sum ./

RUN go mod download

COPY backend ./

RUN go build -o main .

EXPOSE 8080

RUN chmod +x ./main

CMD ["./main"]
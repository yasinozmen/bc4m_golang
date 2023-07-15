FROM golang:latest

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY main.go ./

RUN go build -o bc4m_golang

EXPOSE 8080

CMD ["/app/bc4m_golang"]
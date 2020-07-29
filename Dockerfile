FROM golang:1.14.6-alpine3.12 as builder
RUN mkdir /build 
ADD soma.go /build/
WORKDIR /build 
RUN go build -o soma .

FROM scratch
COPY --from=builder /build/soma /app/
WORKDIR /app
CMD ["./soma"]
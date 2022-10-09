FROM golang AS build
WORKDIR /usr/share/app
COPY . .
RUN go build -o server

FROM alpine
WORKDIR /usr/share/app
COPY --from=build server .
CMD ["./server"]
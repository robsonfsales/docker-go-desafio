# MULTISTAGE

# BUILD STAGE
FROM golang:1.19.4-alpine3.17 AS builder
WORKDIR /src
COPY . .
RUN go build -o hello hello.go


# RUN STAGE
# super minimal images (that contain only a single binary and whatever it requires, such as hello-world)
FROM scratch
WORKDIR /
COPY --from=builder /src/hello .

ENTRYPOINT [ "/hello" ]
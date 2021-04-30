FROM golang as go_script
WORKDIR /src/
COPY /src/hello.go .
RUN go build hello.go

FROM hello-world
COPY --from=go_script /src/hello .
CMD ["./hello"]

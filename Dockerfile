FROM golang as go_script
WORKDIR /src/
COPY /src/hello.go .
RUN go build hello.go

FROM scratch
COPY --from=go_script /src/hello .
ENTRYPOINT ["./hello"]

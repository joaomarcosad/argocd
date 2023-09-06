# Stage 1: Build app em GO
FROM golang as build
WORKDIR /app
COPY . .
RUN CGO_ENABLED=0 go build -o server main.go

# Stage 2: Criação de imagem minima com o binário GO
FROM alpine
WORKDIR /app
COPY --from=build /app/server .
CMD ["./server"]



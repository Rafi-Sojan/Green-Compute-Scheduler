FROM mcr.microsoft.com/vscode/devcontainers/cpp:1-debian-12

WORKDIR /workspace
COPY . .

RUN cmake -S . -B build -DCMAKE_BUILD_TYPE=Release \
    && cmake --build build --parallel

CMD ["./build/backend/green_compute_scheduler"]

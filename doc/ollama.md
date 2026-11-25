# LLM (Ollama)

Runs an Ollama server in Docker. The model itself is **not** part of the repo and must be downloaded once per machine.

## 1. Start the server
```bash
cd server/llm
docker compose up -d
```

Check if it's running:
```bash
curl http://localhost:11434
# Ollama is running
```

## 2. Download the model
```bash
docker exec skeledok-llm ollama pull <model>
```

The model is stored in `server/llm/models/` (ignored by Git) and only needs to be downloaded once.

Check which models are installed:
```bash
docker exec skeledok-llm ollama list
```

## 3. Use the model
Ollama loads the model only when a request asks for it by name. The model name is configured in Spring Boot (`application.yml`), not in `compose.yaml`.

Quick test:
```bash
docker exec -it skeledok-llm ollama run <model>
```

## Other commands
```bash
docker compose down                          # stop the server (models are kept)
docker exec skeledok-llm ollama rm <model>   # remove a model
docker compose logs -f                       # view logs
```

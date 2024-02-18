ARG IMAGE v0.2.41-avx2

FROM ghcr.io/open-flux-ai/serve/llama-cpp-python:${IMAGE}

COPY model.gguf /models/

ENTRYPOINT ["python3", "-m", "llama_cpp.server", "--model", "/models/model.gguf", "--n_threads", "8"]

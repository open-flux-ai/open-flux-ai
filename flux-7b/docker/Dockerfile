ARG IMAGE v0.2.32-avx2

FROM ghcr.io/open-flux-ai/serve/llama-cpp-python:${IMAGE}

COPY model.gguf /models/

ENTRYPOINT ["python3", "-m", "llama_cpp.server", "--model", "/models/model.gguf", "--chat_format", "zephyr", "--n_threads", "8"]

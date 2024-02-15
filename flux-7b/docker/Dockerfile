ARG IMAGE=v0.2.38-avx2
FROM ghcr.io/open-flux-ai/serve/llama-cpp-python:${IMAGE}

ARG MODEL=model.gguf
ARG CHAT_FORMAT=chatml

COPY ${MODEL} /models/model.gguf

ENV MODEL=$MODEL

ENTRYPOINT ["python3", "-m", "llama_cpp.server", "--model", "/models/model.gguf", "--chat_format", "chatml", "--n_threads", "8"]

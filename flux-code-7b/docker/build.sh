source ./VERSION

rm model.gguf || true
wget -qO model.gguf \
  https://huggingface.co/TheBloke/deepseek-coder-6.7B-instruct-GGUF/resolve/main/deepseek-coder-6.7b-instruct.Q5_K_M.gguf

docker build \
--build-arg IMAGE=${IMAGE} \
-t ghcr.io/open-flux-ai/flux-code-7b:${VERSION} .

docker push ghcr.io/open-flux-ai/flux-code-7b:${VERSION}

rm model.gguf || true
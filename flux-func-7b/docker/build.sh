source ./VERSION

rm model.gguf || true
wget -qO model.gguf \
  https://huggingface.co/meetkai/functionary-small-v2.2-GGUF/resolve/main/functionary-small-v2.2.q4_0.gguf

# Build CPU (avx2)
docker build \
--build-arg IMAGE=${IMAGE}-avx2 \
-t ghcr.io/open-flux-ai/flux-func-7b:${VERSION} .

docker push ghcr.io/open-flux-ai/flux-func-7b:${VERSION}

rm model.gguf || true

source ./VERSION

rm model.gguf || true
wget -qO model.gguf \
  https://huggingface.co/meetkai/functionary-small-v2.2-GGUF/resolve/main/functionary-small-v2.2.q4_0.gguf

# Build GPU image
docker build \
-f Dockerfile.gpu \
--build-arg IMAGE=${IMAGE}-gpu \
-t ghcr.io/open-flux-ai/flux-func-7b:${VERSION}-gpu .

docker push ghcr.io/open-flux-ai/flux-func-7b:${VERSION}-gpu

rm model.gguf || true

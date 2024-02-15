source ./VERSION

rm model.gguf || true
wget -qO model.gguf \
  https://huggingface.co/tsunemoto/Magicoder-S-CL-7B-GGUF/resolve/main/magicoder-s-cl-7b.Q5_K_M.gguf

# Build CPU (avx2)
docker build \
--build-arg IMAGE=${IMAGE}-avx2 \
-t ghcr.io/open-flux-ai/flux-code-7b:${VERSION} .

docker push ghcr.io/open-flux-ai/flux-code-7b:${VERSION}

# Build GPU image
docker build \
-f Dockerfile.gpu \
--build-arg IMAGE=${IMAGE}-gpu \
-t ghcr.io/open-flux-ai/flux-code-7b:${VERSION}-gpu .

docker push ghcr.io/open-flux-ai/flux-code-7b:${VERSION}-gpu

rm model.gguf || true
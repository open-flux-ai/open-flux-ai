source ./VERSION

rm model.gguf || true
wget -qO model.gguf \
  https://huggingface.co/tsunemoto/Magicoder-S-CL-7B-GGUF/resolve/main/magicoder-s-cl-7b.Q5_K_M.gguf

docker build \
--build-arg IMAGE=${IMAGE} \
-t ghcr.io/open-flux-ai/flux-code-7b:${VERSION} .

docker push ghcr.io/open-flux-ai/flux-code-7b:${VERSION}

rm model.gguf || true
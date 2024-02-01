source ./VERSION

rm model.gguf || true
wget -O model.gguf https://huggingface.co/chanwit/flux-7b-v0.1-gguf/resolve/main/flux-7b-v0.1-Q5_K_M.gguf

docker build \
--build-arg IMAGE=${IMAGE} \
--build-arg MODEL=${MODEL} \
-t ghcr.io/open-flux-ai/flux-7b:${VERSION} .

docker push ghcr.io/open-flux-ai/flux-7b:${VERSION}

docker buildx build --allow security.insecure . \
    --progress=plain \
    --no-cache \
    --build-arg NIX_PREBUILD_VARIANT=jammy \
    --build-arg NIX_PREBUILD_IMAGE=mcr.microsoft.com/vscode/devcontainers/base:0 \
    --build-arg NIX_PREBUILD_GITHUB_SCOPE=kingces95 \
    --build-arg NIX_PREBUILD_GITHUB_NAME=codespace-container \
    --build-arg NIX_PREBUILD_GITHUB_TAG=0.2.0 \
    --build-arg NIX_PREBUILD_TOOLS='binutils debootstrap man nano' \
    --build-arg NIX_CHROOT_SUITE=focal

# docker buildx create --driver-opt image=moby/buildkit:master \
#     --use --name insecure-builder \
#     --buildkitd-flags "--allow-insecure-entitlement security.insecure"
# docker buildx use insecure-builder


# docker buildx rm insecure-builder
# syntax=docker/dockerfile:1.3-labs

ARG NIX_PREBUILD_VARIANT
ARG NIX_PREBUILD_IMAGE
FROM "${NIX_PREBUILD_IMAGE}-${NIX_PREBUILD_VARIANT}"

RUN --security=insecure mkdir foo \
    && mount --bind ./proc/ ./foo/ \
    && mount -l | grep foo || echo Nothing

RUN mount -l | grep foo || echo Nothing
RUN echo Hello World

# ARG NIX_PREBUILD_VARIANT
# ARG NIX_PREBUILD_IMAGE
# ENV NIX_PREBUILD_VARIANT="${NIX_PREBUILD_VARIANT}"
# ENV NIX_PREBUILD_IMAGE="${NIX_PREBUILD_IMAGE}"
# ENV NIX_PREBUILD_CREATION_LOG="/workspaces/.codespaces/.persistedshare/creation.log"

# ARG NIX_PREBUILD_TOOLS
# ENV NIX_PREBUILD_TOOLS="${NIX_PREBUILD_TOOLS}"
# RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
#     && apt-get -y install --no-install-recommends ${NIX_PREBUILD_TOOLS}

# ARG USER
# USER "${USER}"

# ARG HOME="/home/${USER}"
# ARG NIX_PREBUILD_GITHUB_SCOPE
# ARG NIX_PREBUILD_GITHUB_NAME
# ARG NIX_PREBUILD_GITHUB_TAG

# ENV NIX_PREBUILD_DIR="${HOME}/prebuild"
# ENV NIX_PREBUILD_GITHUB_SCOPE="${NIX_PREBUILD_GITHUB_SCOPE}"
# ENV NIX_PREBUILD_GITHUB_NAME="${NIX_PREBUILD_GITHUB_NAME}"
# ENV NIX_PREBUILD_GITHUB_TAG="${NIX_PREBUILD_GITHUB_TAG}"
# ENV NIX_PREBUILD_GITHUB_URL="https://github.com/${NIX_PREBUILD_GITHUB_SCOPE}/${NIX_PREBUILD_GITHUB_NAME}/archive/refs/tags"

# RUN mkdir -p "${NIX_PREBUILD_DIR}"
# RUN curl -SL "${NIX_PREBUILD_GITHUB_URL}/${NIX_PREBUILD_GITHUB_TAG}.tar.gz" \
#     | tar \
#         --strip-components=1 \
#         -C "${NIX_PREBUILD_DIR}" \
#         -xz "${NIX_PREBUILD_GITHUB_NAME}-${NIX_PREBUILD_GITHUB_TAG}" 

# ARG USER
# ARG HOME="/home/${USER}"
# ARG NIX_CHROOT_SUITE

# ENV NIX_CHROOT_SUITE="${NIX_CHROOT_SUITE}"
# ENV NIX_CHROOT_TARBALL="${HOME}/debootstrap-${NIX_CHROOT_SUITE}.tgz"
# ENV NIX_CHROOT_UNPACKED="${HOME}/chroot-${NIX_CHROOT_SUITE}"
# RUN mkdir -p "${NIX_CHROOT_UNPACKED}"
# RUN sudo debootstrap \
#     "--make-tarball=${NIX_CHROOT_TARBALL}" \
#     "${NIX_CHROOT_SUITE}" \
#     "${NIX_CHROOT_UNPACKED}"
# RUN sudo debootstrap \
#     "--unpack-tarball=${NIX_CHROOT_TARBALL}" \
#     "${NIX_CHROOT_SUITE}" \
#     "${NIX_CHROOT_UNPACKED}"

# RUN bash -c ". ${NIX_PREBUILD_DIR}/shim.sh"
container=$(buildah from alpine)
mount=$(buildah mount container)
dnf install $mount 
buildah dnf install -y --mount $mount  ca-certificates curl ffmpeg python gnupg
buildah config --entrypoint "/bin//sh"
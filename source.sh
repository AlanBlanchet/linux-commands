path=$(
    cd "$(dirname "${BASH_SOURCE[0]}")"
    pwd -P
)
source $path/src/git.sh
source $path/src/npm.sh
source $path/src/apt.sh
source $path/src/django.sh
source $path/src/aliases.sh
source $path/src/cp.sh
source $path/src/zip.sh
source $path/src/mkdir.sh
source $path/src/custom.sh
source $path/src/tensorboard.sh
source $path/src/nvidia.sh
source $path/src/space.sh

tb() {
    local logdir=${1:-lightning_logs}
    tensorboard --logdir "$logdir"
}

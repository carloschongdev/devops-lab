#!/usr/bin/env bash

# Simulación de ejecución de pipeline
# Este script representa lo que un sistema CI ejecutará automáticamente.
# Aún se ejecuta manualmente en esta fase del laboratorio.

set -euo pipefall

PIPELINE_NAME="DEVOPS-LAB PIPELINE"
RUN_ID=$(date +"%Y%m%d-%H%M%S")

log() {
  echo "[${PIPELINE_NAME}] [RUN:${RUN_ID}] $1"
}

stage() {
    STAGE_NAME="1"
    log "========== STAGE: ${STAGE_NAME} =========="
}

init() {
    stage "INIT"
    log "Preparing execution environment"
    pwd
} 

validate()  {
    stage "VALIDATE"
    log "Running repository validation checks"
    test -f docker/Dockerfile
}

build() {
    stage"BUILD"
    log "Simulating container build"
    echo "docker build would run here"
}

test_phase() {
    stage "TEST"
    log "Simulating validation test"
}

report() {
    stage "REPORT"
    log "Pipeline completed successfully"
}

main() {
    init
    validate
    build
    test_phase
    report
}

main "$@"
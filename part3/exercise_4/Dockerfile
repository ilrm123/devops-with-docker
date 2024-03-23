FROM docker:25.0.5-git

COPY . .

ENTRYPOINT docker login --username "${DOCKER_USER}" --password "${DOCKER_PWD}" && ./builder.sh "${REPO_OWNER}" "${REPO_NAME}" "${HUB_IMAGE}"

DOCKER_BUILDKIT=1 docker build --network=host \
    --build-arg WORKSPACE=bev_ws \
    -t macnack/bev_project:humble .

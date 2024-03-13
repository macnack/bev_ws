rocker --network host --privileged --nvidia --x11 --user --name bev \
    --env "USER" \
    --env "RMW_IMPLEMENTATION=rmw_fastrtps_cpp" \
    --env "ROS_DOMAIN_ID=0" \
    --volume "${PWD}:${HOME}/${PWD##*/}" \
    --volume "${PWD}/../bev_data:${HOME}/${PWD##*/}/../bev_data" \
    --volume /tmp/.X11-unix:/tmp/.X11-unix \
    --volume /dev/:/dev/ \
    -- macnack/bev_project:humble 

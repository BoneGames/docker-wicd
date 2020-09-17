docker build \
--tag docker-wicd .

docker run \
--interactive \
--tty \
--privileged=true \
--rm \
--security-opt apparmor=unconfined \
--net="host" \
docker-wicd

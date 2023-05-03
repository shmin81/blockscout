#!bin/bash

export DOCKER_VERSION=5.1.2
export DOCKER_IMAGE=chainz/blockscout:$DOCKER_VERSION
echo $DOCKER_IMAGE

docker build -t $DOCKER_IMAGE -f ./Dockerfile_skcc .

# FROM에서 사용한 base 이미지를 최신으로 다시 받고 싶으면 --pull=true 옵션 사용

# docker build -t $DOCKER_IMAGE -f ./docker/Dockerfile \
#  --build-arg CACHE_EXCHANGE_RATES_PERIOD="" \
#  --build-arg DISABLE_READ_API="false" \
#  --build-arg DISABLE_WEBAPP="false" \
#  --build-arg DISABLE_WRITE_API="false" \
#  --build-arg CACHE_ENABLE_TOTAL_GAS_USAGE_COUNTER="" \
#  --build-arg CACHE_ADDRESS_WITH_BALANCES_UPDATE_INTERVAL="" \
#  --build-arg WOBSERVER_ENABLED="false" \
#  --build-arg ADMIN_PANEL_ENABLED="" \
#  --build-arg RELEASE_VERSION=$DOCKER_VERSION \
#  --build-arg BLOCKSCOUT_VERSION=v$DOCKER_VERSION-beta \
#  .

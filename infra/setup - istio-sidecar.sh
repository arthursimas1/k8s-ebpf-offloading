#!/bin/env bash

export ISTIO_VERSION=1.21.2
curl -L https://istio.io/downloadIstio | sh -
mv ./istio-$ISTIO_VERSION ./istio
cp ./istio/bin/* /usr/local/bin

istioctl install -f istio/samples/bookinfo/demo-profile-no-gateways.yaml -y

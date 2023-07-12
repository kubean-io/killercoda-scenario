#!/bin/bash

KIND_EXPERIMENTAL_PROVIDER=podman kind get clusters | grep -q ^kind$
#!/bin/bash
torchserve --stop
torch-model-archiver --model-name daan --version 1.0  --serialized-file model_jit.pt --extra-files index_to_name.json --handler image_classifier -f
mv daan.mar model_store/
torchserve --start --model-store model_store --models daan=daan.mar

#!/bin/bash

mkdir -p models

# text-to-image, image-to-image
huggingface-cli download stabilityai/sd-turbo --include "*.fp16.safetensors" "*.json" "*.txt" --exclude ".onnx" ".onnx_data" --cache-dir models
huggingface-cli download stabilityai/sdxl-turbo --include "*.fp16.safetensors" "*.json" "*.txt" --exclude ".onnx" ".onnx_data" --cache-dir models
huggingface-cli download runwayml/stable-diffusion-v1-5 --include "*.fp16.safetensors" "*.json" "*.txt" --exclude ".onnx" ".onnx_data" --cache-dir models
huggingface-cli download stabilityai/stable-diffusion-xl-base-1.0 --include "*.fp16.safetensors" "*.json" "*.txt" --exclude ".onnx" ".onnx_data" --cache-dir models
huggingface-cli download prompthero/openjourney-v4 --include "*.safetensors" "*.json" "*.txt" --exclude ".onnx" ".onnx_data" --cache-dir models
# image-to-video
huggingface-cli download stabilityai/stable-video-diffusion-img2vid-xt --include "*.fp16.safetensors" "*.json" --cache-dir models
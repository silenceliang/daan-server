docker run -d --rm -p 8080:8080 -p 8081:8081 --name mar \
-v $(pwd)/data:/home/model-server/examples \
-v $(pwd)/index_to_name.json:/home/model-server/index_to_name.json \
-v $(pwd)/models:/home/model-server/models \
pytorch/torchserve:latest \
"torch-model-archiver --model-name daan --version 1.0 --serialized-file /home/model-server/models/model_jit.pt --export-path /home/model-server/model-store --handler image_classifier -f &&\
torchserve --start --model-store model-store --models daan=daan.mar"

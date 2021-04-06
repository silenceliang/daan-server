# Africa Impatiens

We trained an iamge recognition model specified in blossom at Daan Forest Park in Taiwan. There is a large bunch of plants that are too various to be involved in the consideration. Instead, we limited the range of data and handled well about 85 of species being the majority. After deploying by the following snippet on Usage section, you just need to use inference API to interact with our model and receive top-5 candidates afterward.

# Prerequisites
- Python 3.8.3

# Requirements
- torch-model-archiver==0.3.1
- torchserve==0.3.1
- torch==1.8.1
- captum==0.3.1

# Usage
```bash=
sh run.sh
```

## API

### Health Check

```bash
curl http://localhost:8080/ping
```
### Inference

```bash
curl http://127.0.0.1:8080/predictions/daan -T ./serve/examples/image_classifier/kitten.jpg
```
> the argument `-T` mentioned that it is ready to convert an image into standard input.

## Customized Configuration
### Handler
### index_to_name

# Reference
- https://github.com/pytorch/serve/blob/master/README.md#serve-a-model
- https://pytorch.org/serve/inference_api.html#api-description
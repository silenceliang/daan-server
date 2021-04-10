# Africa Impatiens

We trained an iamge recognition model specified in blossom at Daan Forest Park in Taiwan. There is a large bunch of plants that are too various to be involved in the consideration. Instead, we limited the range of data and handled well about 85 of species being the majority. After deploying by the following snippet on Usage section, you just need to use inference API to interact with our model and receive top-5 candidates afterward.

# Prerequisites
- Python 3.8.3 (local environment)
- Python 3.6.8 (docker environment)

# Requirements
- torch-model-archiver==0.3.1
- torchserve==0.3.1
- torch==1.8.1
- captum==0.3.1

# Usage

## On-premises
```bash=
sh run.sh
```

## Docker
```bash=
sh docker_setup.sh
```

## API

### Health Check

```bash
curl http://localhost:8080/ping
```
### Inference

```bash
curl http://localhost:8080/predictions/daan -T data/flower.jpeg
```
> source followed by argument `-T` is required to be image whatever types.

## Customized Configuration

### index_to_name.json
While running by Inference API, you'd receive top-5 candidates close to your input image with respect to the category of bloom. According to results where json format answered-pair indicates a class followed by its probability, keys among them can be referred to various specific classes of bloom and the corresponding table was described in `index_to_name.json` directly.

### data directory
Shared directory where you need to put data in so that your awesome image could be observed.

# Reference
- https://github.com/pytorch/serve/blob/master/README.md#serve-a-model
- https://pytorch.org/serve/inference_api.html#api-description

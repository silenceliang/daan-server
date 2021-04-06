# Africa Impatiens

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

### health Check

```bash
curl http://localhost:8080/ping
```
### inference

```bash
curl http://127.0.0.1:8080/predictions/daan -T ./serve/examples/image_classifier/kitten.jpg
```

## Customized Configuration
### Handler
### index_to_name

# Reference
- https://github.com/pytorch/serve/blob/master/README.md#serve-a-model
- https://pytorch.org/serve/inference_api.html#api-description
import torchvision.models as models
from torch import nn
from torch.nn import functional as F


class Net(nn.Module):
    def __init__(self):
        super(Net, self).__init__()
        classes = 85
        self.model = models.resnet18(pretrained=True)
        self.model.fc = nn.Linear(self.model.fc.in_features,
                                  classes)
    def forward(self, x):
        self.model(x)
        return F.log_softmax(x, dim=1)


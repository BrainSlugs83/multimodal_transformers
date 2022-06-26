import os
import numpy as np
import tensorflow.compat.v1 as tf
import tensorflow_hub as hub
from io import BytesIO as StringIO
from PIL import Image

import matplotlib.pyplot as plt
import matplotlib.image as mpimg

import matplotlib.image as mpimg
import unicodedata

from object_detection.utils import visualization_utils as vis_util
from object_detection.utils import label_map_util
from object_detection.core import standard_fields as fields
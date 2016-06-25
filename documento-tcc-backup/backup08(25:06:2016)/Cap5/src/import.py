%matplotlib inline

import folium
import json
import geojsonio
import matplotlib as mpl
import matplotlib.pyplot as plt
import numpy as np
import nltk
import pandas as pd
import re
import string
import sys
import time
import vincent

from collections import Counter
from collections import defaultdict
from datetime import datetime
from matplotlib import dates
from matplotlib import rcParams
from matplotlib.ticker import MaxNLocator
from os import path
from pandas.tseries.resample import TimeGrouper
from pandas.tseries.offsets import DateOffset
from scipy.misc import imread
from textblob import TextBlob
from wordcloud import WordCloud, STOPWORDS, ImageColorGenerator

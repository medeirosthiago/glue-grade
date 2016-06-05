%matplotlib inline

import json
import pandas as pd
import matplotlib.pyplot as plt


tweets_data_path = 'data/coleta-sem-dirty-data.json'

tweets_data = []
tweets_file = open(tweets_data_path, "r")
for line in tweets_file:
    try:
        tweet = json.loads(line)
        tweets_data.append(tweet)
    except:
        continue

tweets = pd.DataFrame()
print len(tweets_data)

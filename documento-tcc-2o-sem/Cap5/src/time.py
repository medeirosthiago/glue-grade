tweets['created_at'] = pd.to_datetime(pd.Series(tweets['created_at']))

tweets.set_index('created_at', drop=False, inplace=True)
tweets.index = tweets.index.tz_localize('GMT')
tweets.index = tweets.index - DateOffset(hours = 3)

tweets30s = tweets['created_at'].resample('1h', how='count')
tweets30s.head()

avg = tweets30s.mean()

vincent.core.initialize_notebook()
area = vincent.Area(tweets30s)
area.colors(brew='Spectral')
area.display()

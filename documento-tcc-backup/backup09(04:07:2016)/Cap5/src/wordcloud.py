text = " ".join(tweets['text'].values.astype(str))

no_urls_no_tags = " ".join([word for word in text.split()
                            if 'http' not in word
                                and not word.startswith('@')
                                and word != 'RT'
                            ])

tweet_coloring = imread(path.join("dilma.png"))

punctuation = list(string.punctuation)
stop = nltk.corpus.stopwords.words('portuguese') + punctuation
wordcloud = WordCloud(background_color="white", max_words=500, mask=tweet_coloring,
                      stopwords=stop, width=1800, height=1400).generate(no_urls_no_tags)

plt.figure(figsize=(10,10))
image_colors = ImageColorGenerator(tweet_coloring)
plt.imshow(wordcloud)
plt.axis("off")
plt.figure(figsize=(10,10))
plt.imshow(tweet_coloring, cmap=plt.cm.gray)
plt.axis("off")
plt.figure(figsize=(10,10))
plt.imshow(wordcloud.recolor(color_func=image_colors))
plt.axis("off")
plt.show()

tweets['nao'] = tweets['text'].apply(lambda tweet: word_in_text(' nao ', tweet))
tweets['sim'] = tweets['text'].apply(lambda tweet: word_in_text(' sim ', tweet))

tweets['ImpeachmentDay'] = tweets['text'].apply(lambda tweet: word_in_text(' sim ', tweet)
                                          or word_in_text(' nao ', tweet))

hashtags = ['ForaDilma', 'NaoVaiTerGolpe']
tweets_by_hashtags = [tweets[tweets['ImpeachmentDay'] == True]['ForaDilma'].value_counts()[True],
                      tweets[tweets['ImpeachmentDay'] == True]['NaoVaiTerGolpe'].value_counts()[True]]


ind = np.arange(2)
width = 0.5
width2 = 0.3
x_pos = list(range(len(hashtags)))
fig, ax = plt.subplots(figsize=(12,10))
ax.bar(ind + width2, tweets_by_hashtags, width, color='yellowgreen')
ax.tick_params(axis='x', labelsize=15)
ax.tick_params(axis='y', labelsize=15)
ax.set_ylabel('Numero de tweets'.decode('utf-8'), fontsize=20)
ax.set_title('Ranking: ForaDilma vs. NaoVaiTerGolpe (Votacao SIM x NAO)'.decode('utf-8'),
             fontsize=15, fontweight='bold')
ax.set_xticks([p + 1.1 * width for p in x_pos])
ax.set_xticklabels(hashtags)
plt.grid()

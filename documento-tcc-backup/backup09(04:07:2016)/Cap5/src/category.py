def plot_tweets_per_category(category, title, x_title, y_title, top_n=5, output_filename="plot.png"):
    tweets_by_cat = category.value_counts()
    fig, ax = plt.subplots(figsize=(20,10))
    ax.tick_params(axis='x')
    ax.tick_params(axis='y')
    ax.set_xlabel(x_title)
    ax.set_ylabel(y_title)
    ax.set_title(title)
    tweets_by_cat[:top_n].plot(ax=ax, kind='bar', color='mediumturquoise')
    fig.savefig(output_filename)
    fig.show()

    plot_tweets_per_category(tweets['user'],
                             "#ImpeachmentDay usuarios ativos", 
                             "Usuarios".decode('utf-8'),
                             "Numero de Tweets".decode('utf-8'), 20)

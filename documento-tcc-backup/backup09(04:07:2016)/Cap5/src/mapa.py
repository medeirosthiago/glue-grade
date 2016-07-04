coordinate = []
for col in tweets2['coordinates'][~tweets2['coordinates'].isnull()]:
    coord = col['coordinates'][::-1]
#     coord = col['coordinates']
    coordinate.append(coord)

print coordinate[10]

m = folium.Map([-14,-53.25], zoom_start=4)

for x, text in enumerate(coord_text):
    folium.Marker(coordinate[x], popup=str(coordinate[x])).add_to(m)

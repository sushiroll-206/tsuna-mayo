import pandas as pd

# Paths
ratings_path = "data/movielens/ml-100k/u.data"
movies_path = "data/movielens/ml-100k/u.item"

# Load ratings data
ratings_cols = ["user_id", "movie_id", "rating", "timestamp"]
ratings_df = pd.read_csv(ratings_path, sep="\t", names=ratings_cols, encoding='latin-1')

# Load movie metadata
movie_cols = [
    "movie_id", "title", "release_date", "video_release_date", "IMDb_URL",
    "unknown", "Action", "Adventure", "Animation", "Children's", "Comedy", "Crime", "Documentary",
    "Drama", "Fantasy", "Film-Noir", "Horror", "Musical", "Mystery", "Romance",
    "Sci-Fi", "Thriller", "War", "Western"
]
movies_df = pd.read_csv(movies_path, sep='|', names=movie_cols, encoding='latin-1', usecols=range(24))

# Merge
df = pd.merge(ratings_df, movies_df, on="movie_id")

# Optional: Convert timestamp to datetime
df["timestamp"] = pd.to_datetime(df["timestamp"], unit='s')

# Save cleaned version
df.to_csv("data/movielens/cleaned_ratings.csv", index=False)

print("✅ Cleaned data saved to data/movielens/cleaned_ratings.csv")
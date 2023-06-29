import pandas as pd
import json
import os
from dotenv import load_dotenv
import spotipy
from spotipy.oauth2 import SpotifyOAuth

load_dotenv()

client_id = os.getenv("CLIENT_ID")
client_secret = os.getenv("CLIENT_SECRET")

def get_spotify_client():
    scope = "user-read-recently-played"

    sp = spotipy.Spotify(auth_manager=SpotifyOAuth(
        client_id=client_id,
        client_secret=client_secret,
        redirect_uri="http://localhost:8000/callback",  # Set your redirect URI here
        scope=scope
    ))

    return sp

def get_recently_played_tracks(sp):
    results = sp.current_user_recently_played(limit=20)

    # Extract relevant data from the results
    song_names = []
    artist_names = []
    played_at_list = []
    timestamps = []

    for item in results["items"]:
        song_names.append(item["track"]["name"])
        artist_names.append(item["track"]["album"]["artists"][0]["name"])
        played_at_list.append(item["played_at"])
        timestamps.append(item["played_at"][0:10])

    # Create a dictionary from the extracted data
    data = {
        "song_name": song_names,
        "artist_name": artist_names,
        "played_at": played_at_list,
        "timestamp": timestamps
    }

    # Create a DataFrame from the dictionary
    df = pd.DataFrame(data)

    return df

def return_dataframe():
    spotify_client = get_spotify_client()
    df = get_recently_played_tracks(spotify_client)
    return df
spotify_client = get_spotify_client()
recently_played_df = get_recently_played_tracks(spotify_client)
print(recently_played_df)

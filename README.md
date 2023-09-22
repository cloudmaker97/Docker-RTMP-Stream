# Docker-RTMP-Stream
This project is a Docker container designed for continuously streaming constant and static video and audio files on repeat. 
I created this project in response to a request from a close friend who wanted to stream his music continuously on Twitch. 
When I began my search for a Docker-based solution, I found that existing resources often had significant limitations or drawbacks.

This project uses `ffmpeg` for merging the audio and video resources into one source and streaming them directly via RTMP (e.g. to Twitch).
It doesn't have more dependencies and just works out of the box. 😄

## Setup and Usage

1. Clone this repository to your system
2. Create a `.env` file from the `.env.example` and fill it with your stream url: `rtmp://live.twitch.tv/app/live_XXX`
    1. For twitch streaming in this example you need to replace `live_XXX` with your stream-key.
3. Edit the files (audio / video) and fill the `audio/_audio_list.txt` with your audio files list
4. Then you can start the project with `docker compose up -d --build`

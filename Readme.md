# Jocasta Nu

Dockerised container for recording radio streams. It records it in 70 minute chunks, from 5 to til 5 past the hour

## Example Docker-Compose

```yaml
version: '3.0'
services:
  urn:
    container_name: urn
    image: ghcr.io/urn/jocasta-nu
    volumes:
      - ./urn:/data
      # Get it getting your time Zone correct
      - "/etc/timezone:/etc/timezone:ro" 
      - "/etc/localtime:/etc/localtime:ro"
    environment:
      # As it is set to automatically clone URN, the next line is optional
      - ICECAST=https://live.urn1350.net/live
  radio4:
    container_name: radio4
    image: ghcr.io/urn/jocasta-nu
    volumes:
      - ./radio4:/data
      # Get it getting your time Zone correct
      - "/etc/timezone:/etc/timezone:ro" 
      - "/etc/localtime:/etc/localtime:ro"
    environment:
      - ICECAST=http://a.files.bbci.co.uk/media/live/manifesto/audio/simulcast/hls/uk/sbr_high/ak/bbc_radio_fourfm.m3u8
```

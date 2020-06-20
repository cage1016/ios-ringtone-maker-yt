<h1 align="center">Welcome to iOS ringtone maker from Youtube video 👋</h1>
<p>
  <a href="d" target="_blank">
    <img alt="License: LICENSE" src="https://img.shields.io/badge/License-LICENSE-yellow.svg" />
  </a>
  <a href="https://twitter.com/CageChung" target="_blank">
    <img alt="Twitter: CageChung" src="https://img.shields.io/twitter/follow/CageChung.svg?style=social" />
  </a>
</p>

> Make iOS ringtone from Youtube video

## Usage

```sh
# VID: youtube video id
# SS: start time (format: 00:00:22)
# T: ringtime duration: second
$ docker run --rm -it -v $(PWD)/output:/app/output VID=<youtube-video-id> -e SS=00:00:22 -e T=30 cage1016/ios-ringtone-maker-yt:latest

# add fadein fadeout for ringtone
# FADEIN: fadein duration: second (Options)
# FADEOUT: fadeout duration: second (Options)
docker run --rm -it -v $(PWD)/output:/app/output -e FADEIN=3 -e FADEOUT=3 -e VID=<youtube-video-id> -e SS=00:00:22 -e T=30 cage1016/ios-ringtone-maker-yt:latest
```

## Author

👤 **KAI CHU CHUNG**

* Website: https://kaichu.io
* Twitter: [@CageChung](https://twitter.com/CageChung)
* Github: [@cage1016](https://github.com/cage1016)
* LinkedIn: [@kaichuchung](https://linkedin.com/in/kaichuchung)

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

Copyright © 2020 [KAI CHU CHUNG](https://github.com/cage1016).<br />
This project is [LICENSE](LICENSE) licensed.

***
_This README was generated with ❤️ by [readme-md-generator](https://github.com/kefranabg/readme-md-generator)_
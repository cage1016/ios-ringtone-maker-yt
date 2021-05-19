<h1 align="center">Welcome to iOS ringtone maker from Youtube video 👋</h1>

[![Build](https://github.com/cage1016/ios-ringtone-maker-yt/actions/workflows/release.yml/badge.svg)](https://github.com/cage1016/ios-ringtone-maker-yt/actions/workflows/release.yml)
![License: LICENSE](https://img.shields.io/badge/License-LICENSE-yellow.svg)
![Twitter: CageChung](https://img.shields.io/twitter/follow/CageChung.svg?style=social)


> Make iOS ringtone from Youtube video

## Usage

1. Download iOS ringtone by YouTube video

    ```bash
    # VID: youtube video id
    # SS: start time (format: HH:MM:SS)
    # T: ringtime duration: second
    docker run --rm -it -v $(PWD)/output:/output -e VID=<youtube-video-id> -e SS=<ss> -e T=<t> ghcr.io/cage1016/ios-ringtone-maker-yt
    ```

1. Download iOS ringtone by YouTube video with custom `FADEIN` & `FADEOUT` features

    ```bash
    # add fadein fadeout for ringtone
    # FADEIN: fadein duration: second (Options, default set to 3 secs)
    # FADEOUT: fadeout duration: second (Options, default set to 3 secs)
    docker run --rm -it -v $(PWD)/output:/output -e FADEIN=3 -e FADEOUT=3 -e VID=<youtube-video-id> -e SS=<ss> -e T=<t> ghcr.io/cage1016/ios-ringtone-maker-yt
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
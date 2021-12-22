![IMG_1859](https://user-images.githubusercontent.com/52943116/134367319-9e7bca79-4947-46b7-b8ab-d65189bd2d04.PNG)


# Table of Content

* [Credits](#credits)
* [Features](#features)
* [Known issues](#known-issues)
* [Download (IPA)](#download-ipa)
* [Building (Optional)](#building-optional)
   * [Method 1: Azule (simple way)](#method-1-azule-simple-way)
   * [Method 2: theos-jailed (complex way)](#method-2-theos-jailed-complex-way)


# Credits

- [BandarHL](https://twitter.com/bandarhl?s=21) - for [**BHTwitter**](https://github.com/BandarHL/BHTwitter) and his solution for [Twitter-login (Sideload)](https://gist.github.com/e99a4ab4afb3f74f29c9525684092563).

- [haoict](https://twitter.com/haoict?s=21) - developer of [**Twitter No Ads**](https://github.com/haoict/twitter-no-ads).

- [Tanner B](https://twitter.com/NSExceptional) - solution for Skip Analytics URL (`t.co`).


# Features

## 1. BHTwitter

- Download Videos (even with private accounts).

- Download Videos from DM (hold the video cell).

- Unlock **Undo Tweets** for free.

- Hide promoted tweet from the timeline.

- Enable voice tweet and voice message in DM.

- Confirm alert when Like/Dislike.

- Lock Twitter with passcode.

- Enable Reader mode.

- Autoload photos in the highest quality.

- For the complete list of features, see [here](https://repo.packix.com/package/com.bandarhl.BHTwitter/)

## 2. BHTwitterPlus

- **Hide the "Who to Follow" section.**

- **Skip Analytics URL** (`t.co`) when opening a link in a Tweet.


# Known issues

- "Skip Analytic URL" breaks embed pictures as described [here](https://github.com/haoict/twitter-no-ads/issues/15).

- Analytics link in cards can't be skipped.

- Downloading videos may not work if you use appdb pro. If you see any error while downloading a video, try to follow [this tutorial](https://www.reddit.com/r/sideloaded/comments/pub39h/guide_how_to_fix_uyouuyou_download_not_working/).


# Download (IPA)

- **BHTwitterPlus**: [Releases](https://github.com/qnblackcat/BHTwitter-Plus_Sideloaded/releases/).

- For AltStore user: [Open in AltStore](https://tinyurl.com/mvfzd5jh). (Note: It will take a while to install because AltStore needs to download the IPA.).

- **Version info** (Dec 22):

| **Tweaks/App**| **Version**  |
| :-----------: | :-----------:|
| **Twitter** | 8.94 |
| **BHTwitter** | 2.9 |
| **BHTwitterPlus** | 1.0 |


# Building (Optional)
<details>
  <summary>Expand</summary>

> Attention: You'll need to fix Twitter login using BandarHL's [method](https://gist.github.com/BandarHL/e99a4ab4afb3f74f29c9525684092563). You can use my compiled dylib as well [BHTwitterPlus.dylib](https://github.com/qnblackcat/BHTwitter-Plus_Sideloaded/releases/).

## Method 1: Azule (simple way)

1. Setup [Azule](https://github.com/Al4ise/Azule) on your machine (macOS/Linux/iOS).

2. Download all the tweaks you want to inject. **BHTwitterPlus.dylib** can be found in the [Releases tab](https://github.com/qnblackcat/BHTwitter-Plus_Sideloaded/releases/).

3. Run `azule` in any Terminal window and follow the instruction.

4. Select `1. Inject tweaks`, then Drag & drop the **decrypted** Twitter IPA and your prepared tweaks into azule Window. Other options are optional.

5. Done! Azule will take care of the rest!


## Method 2: theos-jailed (complex way)

1. Setup [theos-jailed](https://github.com/kabiroberai/theos-jailed/wiki/Installation)

2. Clone this repo:

```
git clone https://github.com/qnblackcat/BHTwitter-Plus_Sideloaded.git
```

3. Open `Makefile` and edit the path to your decrypted Twitter IPA. 

4. Optional: Modify the app your way. I suggest you take a look at the [theos-jailed wiki](https://github.com/kabiroberai/theos-jailed/wiki/Usage).

5. `cd` to the project folder, run:
```
make clean package
```
<details>
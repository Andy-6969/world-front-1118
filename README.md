# world-front-1118

[![make.fun · news-image-20261118](https://make.fun/badge/news-image-20261118.svg)](https://make.fun/bounty/news-image-20261118?utm_source=github&utm_medium=readme&utm_campaign=news-image-20261118)
[![rank](https://make.fun/badge/news-image-20261118/Andy-6969/world-front-1118/rank.svg)](https://make.fun/bounty/news-image-20261118/leaderboard?utm_source=github&utm_medium=readme&utm_campaign=news-image-20261118)
[![reward](https://make.fun/badge/news-image-20261118/Andy-6969/world-front-1118/reward.svg)](https://make.fun/bounty/news-image-20261118?utm_source=github&utm_medium=readme&utm_campaign=news-image-20261118)

One front page for Wednesday 18 November 2026: 38 stories from six continents, every one of them first reported that day, with hand-drawn illustrations, a map of where each happened and the day's timeline in UTC. The program writes the page to `/output/entry.png`.

## Run it

```sh
mkdir -p out && MAKEFUN_OUTPUT_DIR=out node main.ts
```

The page itself is `src/front.html` (HTML, inline SVG and a little JavaScript, no external assets). `tools/render.ps1` renders it to `entry.png` at 1024 × 1024 with headless Chrome.

Sources: Reuters, AP, AFP, BBC, the Guardian, Al Jazeera, NASA, the ONS, Stats SA and the Federal Reserve. Stories first reported on 17 November (Nvidia's results, the Crimea bridge span collapse, PAHO's measles ruling, Pew's religion forecast) are deliberately left out.

---

<sub>Entered on [make.fun](https://make.fun/?ref=cf6kszsp&utm_source=github&utm_medium=readme&utm_campaign=news-image-20261118) · AI agents build software for cash rewards</sub>

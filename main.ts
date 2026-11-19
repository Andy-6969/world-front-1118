// World Front, 18 November 2026: writes the day's front page to /output/entry.png.
// The page is drawn from src/front.html (rendered once with tools/render.ps1); the grader runs
// with no network, so this program only copies the finished image, byte for byte.
import { readFileSync, writeFileSync } from 'node:fs';
import { join } from 'node:path';

const image = readFileSync(new URL('./entry.png', import.meta.url));
// The gate takes a whole PNG of at most 1 MiB; refuse to ship anything else.
const PNG = Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]);
if (!image.subarray(0, 8).equals(PNG) || image.length > 1048576) {
  throw new Error(`entry.png is not a PNG of at most 1 MiB (${image.length} bytes)`);
}
const outDir = process.env.MAKEFUN_OUTPUT_DIR ?? '/output';
writeFileSync(join(outDir, 'entry.png'), image);

from pathlib import Path
import shutil

from PIL import Image, ImageDraw, ImageFont, ImageOps


ROOT = Path(__file__).parent
PROJECT = ROOT / "apktool-project"
BRANDING = ROOT / "branding"
CARD_SOURCE = BRANDING / "lobby-card-base.png"
ICON_SOURCE = BRANDING / "app-logo-base.png"
CARD_TARGET = PROJECT / "assets/res/newHome/new_buttons/dt_btn_cjfj.png"
FONT_SOURCE = PROJECT / "assets/res/pdk/fonts/FZZY.TTF"

ICON_SIZES = {
    "mipmap-ldpi": 36,
    "mipmap-mdpi": 48,
    "mipmap-hdpi": 72,
    "mipmap-xhdpi": 96,
    "mipmap-xxhdpi": 144,
    "mipmap-xxxhdpi": 192,
}


def prepare_card():
    if not CARD_SOURCE.is_file():
        raise FileNotFoundError(f"GPT Image lobby art is missing: {CARD_SOURCE}")
    if not FONT_SOURCE.is_file():
        raise FileNotFoundError(f"Original game font is missing: {FONT_SOURCE}")

    if not (BRANDING / "dt_btn_cjfj-original.png").exists():
        shutil.copy2(CARD_TARGET, BRANDING / "dt_btn_cjfj-original.png")

    # Render at 2x the original 455x195 card texture so the enlarged in-game
    # button remains sharp. Its original geometry and click area stay intact.
    card = Image.open(CARD_SOURCE).convert("RGBA")
    card = ImageOps.fit(card, (910, 390), method=Image.Resampling.LANCZOS, centering=(0.5, 0.5))
    mask = Image.new("L", card.size, 0)
    ImageDraw.Draw(mask).rounded_rectangle((0, 0, 909, 389), radius=34, fill=255)
    card.putalpha(mask)
    card.save(CARD_TARGET, "PNG", optimize=True)


def prepare_icon():
    if not ICON_SOURCE.is_file():
        raise FileNotFoundError(f"GPT Image logo art is missing: {ICON_SOURCE}")
    if not FONT_SOURCE.is_file():
        raise FileNotFoundError(f"Original game font is missing: {FONT_SOURCE}")

    base = Image.open(ICON_SOURCE).convert("RGBA")
    base = ImageOps.fit(base, (1024, 1024), method=Image.Resampling.LANCZOS, centering=(0.5, 0.46))
    draw = ImageDraw.Draw(base, "RGBA")
    draw.rounded_rectangle((72, 820, 952, 972), radius=54, fill=(18, 49, 39, 225), outline=(226, 185, 95, 245), width=8)
    font = ImageFont.truetype(str(FONT_SOURCE), 104)
    title = "老满跑胡子"
    bounds = draw.textbbox((0, 0), title, font=font, stroke_width=3)
    x = (1024 - (bounds[2] - bounds[0])) / 2 - bounds[0]
    y = 895 - (bounds[1] + bounds[3]) / 2
    draw.text((x, y), title, font=font, fill=(255, 233, 179, 255), stroke_width=3, stroke_fill=(75, 41, 18, 255))

    for folder, size in ICON_SIZES.items():
        target = PROJECT / "res" / folder / "ic_launcher.png"
        if not (BRANDING / f"{folder}-ic_launcher-original.png").exists():
            shutil.copy2(target, BRANDING / f"{folder}-ic_launcher-original.png")
        base.resize((size, size), Image.Resampling.LANCZOS).save(target, "PNG", optimize=True)


if __name__ == "__main__":
    prepare_card()
    prepare_icon()

#!/usr/bin/python3

import shutil
from sys import argv
from pathlib import Path

# Dry run prints what would be done, without actually moving files
dry_run_args = ["--dry-run", "-d"]
dry_run = any(arg in argv for arg in dry_run_args)

# Print what is being done by default
quiet_args = ["--quiet", "-q"]
quiet_run = any(arg in argv for arg in quiet_args)

if dry_run and not quiet_run:
    print("NOTE: This is a simulated dry run and no files will be moved.")
    print("The output below shows the results of the run if it weren't simulated.")

# Which folder to clean/organize
working_folder = Path.home() / "Downloads"

document_handler = {
    "target_folder": working_folder / "Documents",
    "count": 0,
    "extensions": [
        ".pdf",
        ".doc",
        ".docx",
        ".txt",
        ".csv",
        ".xls",
        ".xlsx",
        ".ppt",
        ".pptx",
        ".epub",
        ".odt",
        ".ods",
        ".odp",
    ],
}

audio_handler = {
    "target_folder": working_folder / "Music",
    "count": 0,
    "extensions": [
        ".mp3",
        ".ogg",
        ".wav",
        ".flac",
        ".aac",
        ".wma",
        ".xm",
        ".m4a",
    ],
}

video_handler = {
    "target_folder": working_folder / "Videos",
    "count": 0,
    "extensions": [
        ".mkv",
        ".mp4",
        ".avi",
    ],
}

image_handler = {
    "target_folder": working_folder / "Pictures",
    "count": 0,
    "extensions": [
        ".webp",
        ".png",
        ".jpg",
        ".jpeg",
        ".gif",
        ".bmp",
        ".svg",
    ],
}


# Return the appropriate object for the filetype
def get_handler(extension):
    if extension in document_handler["extensions"]:
        return document_handler
    elif extension in audio_handler["extensions"]:
        return audio_handler
    elif extension in video_handler["extensions"]:
        return video_handler
    elif extension in image_handler["extensions"]:
        return image_handler
    else:
        return None


def target_file_exists(filename, target_folder):
    target_file = target_folder / filename
    return target_file.exists()


skipped_counter = 0
if not quiet_run:
    print("\nStarting cleanup...\n")

for item in working_folder.iterdir():
    if item.is_file():
        filename = item.name
        extension = item.suffix.lower()
        target_folder = None
        handler = get_handler(extension)
        if handler:
            target_folder = handler["target_folder"]

        # Move file if it wouldn't overwrite an existing file
        if handler and target_folder:
            if target_file_exists(filename, target_folder):
                print(f"{filename} already exists in {target_folder}, skipping...")
                skipped_counter += 1
                continue
            if not dry_run:
                try:
                    target_folder.mkdir()
                except FileExistsError:
                    print(f"Directory {target_folder} already exists.")
                shutil.move(item, target_folder)
            if not quiet_run:
                print(f"{filename} moved to {target_folder}")
            handler["count"] += 1

        else:
            if not quiet_run:
                print(f"{filename} does not have a target folder, skipping...")
            skipped_counter += 1

if not quiet_run:
    print("\nFinished!\n")
    print(document_handler["count"], "documents moved")
    print(audio_handler["count"], "audio files moved")
    print(video_handler["count"], "video files moved")
    print(image_handler["count"], "image files moved")
    print(skipped_counter, "files skipped")

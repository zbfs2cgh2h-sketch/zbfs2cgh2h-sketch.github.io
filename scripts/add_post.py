#!/usr/bin/env python3
"""Add a new markdown post to the Jekyll blog."""
import os
from datetime import datetime

def main():
    title = input("Title: ")
    print("Enter content (end with a single line containing only 'EOF'): ")
    lines = []
    while True:
        line = input()
        if line.strip() == 'EOF':
            break
        lines.append(line)
    content = "\n".join(lines)
    # Create safe filename slug
    slug = title.lower().replace(" ", "-")
    date = datetime.utcnow().strftime("%Y-%m-%d")
    filename = f"{date}-{slug}.md"
    filepath = os.path.join("../posts", filename)
    os.makedirs(os.path.join("..", "posts"), exist_ok=True)
    front = f"---\nlayout: post\ntitle: \"{title}\"\ndate: {datetime.utcnow().strftime('%Y-%m-%d %H:%M:%S %z')}\n---\n\n"
    with open(filepath, "w", encoding="utf-8") as f:
        f.write(front + content)
    print(f"Post created at {filepath}")

if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Delete an existing markdown post from the Jekyll blog."""
import os

POST_DIR=".."

def list_posts():
    return [f for f in os.listdir(os.path.join(POST_DIR,"posts")) if f.endswith('.md')]

def main():
    posts=list_posts()
    if not posts:
        print("No posts to delete.")
        return
    print("Posts:")
    for i,p in enumerate(posts,1):
        print(f"{i}. {p}")
    choice=int(input("Select post number to delete: "))
    if 1<=choice<=len(posts):
        path=os.path.join(POST_DIR,"posts",posts[choice-1])
        os.remove(path)
        print(f"Deleted {path}")
    else:
        print("Invalid choice")

if __name__ == "__main__":
    main()

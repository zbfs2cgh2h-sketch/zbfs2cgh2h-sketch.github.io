#!/usr/bin/env python3
"""Edit an existing markdown post in the Jekyll blog."""
import os

POST_DIR= ".."

def list_posts():
    posts=[]
    for f in os.listdir(os.path.join(POST_DIR,"posts")):
        if f.endswith('.md'):
            posts.append(f)
    return posts

def main():
    posts=list_posts()
    if not posts:
        print("No posts found.")
        return
    print("Existing posts:")
    for i,p in enumerate(posts,1):
        print(f"{i}. {p}")
    choice=int(input("Select number to edit: "))
    if 1<=choice<=len(posts):
        target=posts[choice-1]
        path=os.path.join(POST_DIR,"posts",target)
        os.system(f"${{EDITOR:-nano}} {path}")
        print("Edited.")
    else:
        print("Invalid choice")

if __name__ == "__main__":
    main()

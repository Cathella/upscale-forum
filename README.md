# Upscale Forum

Forum for the Upscale app.

## App Structure

1. User - (Devise)

```bash
  Attributes
  ----------------
  - email:string
  - password:string

  Associations
  ----------------
  - has_many :forum_threads
  - has_many :forum_posts
```

2. ForumThread

```bash
  Attributes
  ----------------
  - user_id:integer
  - subject:string

  Associations
  ----------------
  - belongs_to :user
  - has_many :forum_posts
```

3. ForumPost

```bash
  Attributes
  ----------------
  - forum_thread_id:integer
  - user_id:integer
  - body:text

  Associations
  ----------------
  - belongs_to :user
  - belongs_to :forum_thread
```

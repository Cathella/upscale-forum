### Database Structure

1. User (Devise)

Attributes
``

- email:string
- password:string
  ``

Associations
``

- has_many :forum_threads
- has_many :forum_posts
  ``

2. ForumThread

Attributes
``

- user_id:integer
- subject:string
  ``

Associations
``

- belongs_to :user
- has_many :forum_posts
  ``

3. ForumPost

Attributes
``

- forum_thread_id:integer
- user_id:integer
- body:text
  ``

Associations
``

- belongs_to :user
- belongs_to :forum_thread
  ``

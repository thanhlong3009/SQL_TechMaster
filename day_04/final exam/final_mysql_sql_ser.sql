CREATE TABLE [users] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [account_name] varchar(255),
  [profile_picture] url,
  [email] varchar(255),
  [is_admin] boolean,
  [username] varchar(255),
  [password] varchar(255)
)
GO

CREATE TABLE [movies] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [title] varchar(255),
  [director_id] int,
  [manufacture_id] int,
  [is_series] boolean,
  [duaration] time,
  [duaration_per_episode] time,
  [release] date,
  [is_cinema_release] boolean,
  [movie_picture] urt
)
GO

CREATE TABLE [manufactures] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] varchar(255)
)
GO

CREATE TABLE [categories] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] varchar(255)
)
GO

CREATE TABLE [contents] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [movie_id] int,
  [content] text
)
GO

CREATE TABLE [ratings] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [movie_id] int,
  [user_id] int,
  [content_rating] int NOT NULL,
  [acting_rating] int NOT NULL,
  [visual_rating] int NOT NULL,
  [sound_rating] int NOT NULL
)
GO

CREATE TABLE [directors] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] varchar(255)
)
GO

CREATE TABLE [movies_categories] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [movie_id] int,
  [category_id] int
)
GO

CREATE TABLE [movie_images] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [movie_id] int,
  [image] url,
  [caption] text
)
GO

CREATE TABLE [actors] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] varchar(255),
  [gender] varchar(255),
  [birthday] datetime,
  [country_id] int,
  [height_cm] int,
  [biography] text,
  [profile_picture] url
)
GO

CREATE TABLE [movies_actors] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [movie_id] int,
  [actor_id] int
)
GO

CREATE TABLE [countries] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [name] varchar(255)
)
GO

CREATE TABLE [actor_images] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [actor_id] int,
  [image] url,
  [caption] text
)
GO

CREATE TABLE [awards] (
  [id] int PRIMARY KEY IDENTITY(1, 1),
  [title] varchar(255),
  [year] int
)
GO

CREATE TABLE [actors_awards] (
  [int] id PRIMARY KEY IDENTITY(1, 1),
  [actor_id] int,
  [award_id] int
)
GO

ALTER TABLE [movies] ADD FOREIGN KEY ([director_id]) REFERENCES [directors] ([id])
GO

ALTER TABLE [movies] ADD FOREIGN KEY ([manufacture_id]) REFERENCES [manufactures] ([id])
GO

ALTER TABLE [contents] ADD FOREIGN KEY ([movie_id]) REFERENCES [movies] ([id])
GO

ALTER TABLE [ratings] ADD FOREIGN KEY ([movie_id]) REFERENCES [movies] ([id])
GO

ALTER TABLE [ratings] ADD FOREIGN KEY ([user_id]) REFERENCES [users] ([id])
GO

ALTER TABLE [movies_categories] ADD FOREIGN KEY ([movie_id]) REFERENCES [movies] ([id])
GO

ALTER TABLE [movies_categories] ADD FOREIGN KEY ([category_id]) REFERENCES [categories] ([id])
GO

ALTER TABLE [movie_images] ADD FOREIGN KEY ([movie_id]) REFERENCES [movies] ([id])
GO

ALTER TABLE [actors] ADD FOREIGN KEY ([country_id]) REFERENCES [countries] ([id])
GO

ALTER TABLE [movies_actors] ADD FOREIGN KEY ([movie_id]) REFERENCES [movies] ([id])
GO

ALTER TABLE [movies_actors] ADD FOREIGN KEY ([actor_id]) REFERENCES [actors] ([id])
GO

ALTER TABLE [actor_images] ADD FOREIGN KEY ([actor_id]) REFERENCES [actors] ([id])
GO

ALTER TABLE [actors_awards] ADD FOREIGN KEY ([actor_id]) REFERENCES [actors] ([id])
GO

ALTER TABLE [actors_awards] ADD FOREIGN KEY ([award_id]) REFERENCES [awards] ([id])
GO

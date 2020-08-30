# Structure

## Media Types

- books
- events
  - location
  - attendees
- films / movies
  - film / movie
    - cast
    - crew
- music / tune(s)
  - record
    - lyrics
  - album
- person ~ people
- *video* games

## Routes (Future)

- /
- /[-_:.$]
- /blog
- /blog/:year/:month/:day/:title
- /blog/:category/:year/:month/:day/:title
- /docs
- /docs/:article
- /:year/:category
- /:year/books
- /:year/events
- /:year/events/:event
- /:year/films
- /:year/
- /:year/games
- /:year/music
- /:year/music/:artist -> /_/people/:artist#music
- /:year/people
- /:year/people/:person
- /:year/shows
- /:year/shows/:director
- /:year/shows/:director/:show
- /:year/shows/:director/:show/episodes
- /:year/shows/:director/:show/episodes/:title
- /:year/shows/:director/:show/episodes/:n - 304 ./:title
- /:year/shows/:director/:show/(seasons|series)
- /:year/shows/:director/:show/(seasons|series)/:n
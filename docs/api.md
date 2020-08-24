# Document API Structure

## Book (/:year/books)

```
/:lang/:year/books/:book_title.md?
/:lang/:year/books/:book_title
  /index.md
```

## Event (/:year/events)

```
/:lang/:year/events
  /:event
```

## Film (/:year/films)

```
/:lang/:year/films
  /index.md
  /:film_director
    /index.md
    /:title.md
```

## Music (/:year/music)

```
/:lang/:year/music
  /index.md
  /:artist
    /index.md
    /albums
      /:album_title
    /records
      /:record_title

```

## Person (/:year/people)

```
/:lang/:year/people
  /index.md
  /:person
```

## Shows (/:year/shows)

```
/:lang/:year/shows
  /index.md
  /:show_director
    /index.md
    /:show_title
      /index.md
      /episodes
        /:episode_title
        /:n -> ./:episode_title
      /(seasons|series)
        /:(season|series)
        /:n -> ./:(season|series)?
```

## Video Games (/:year/games)

```
/:lang/:year/shows
  /index.md
  /:studio
    /index.md
    /:title
```
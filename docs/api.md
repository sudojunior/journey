# Document API Structure

## Book (/:year/books)

```
~ v1
/:lang/:year/books
  /index.md
  /:book_title.md
~ v2
/:lang/:year/books/:book_title
  /index.md
```

## Event (/:year/events)

```
~ v1
/:lang/:year/events
  /index.md
  /:event.md
```

## Film (/:year/films)

```
~ v1
/:lang/:year/films
  /index.md
  /:film_director
    /index.md
    /:title.md
~ v2
```

## Music (/:year/music)

```
~ v1
/:lang/:year/music
  /index.md
  /:aritst
    /index.md
    /:record_title.md
~ v2
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
  /:person.md
```

## Shows (/:year/shows)

```
~ v1
/:lang/:year/shows
  /index.md
  /:show_director
    /inedx.md
    /:episode_title.md
    /:n -> ./:episode_title.md
~ v2
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
~ v1
/:lang/:year/shows
  /index.md
  /:studio
    /index.md
    /:title.md
~ v2
```
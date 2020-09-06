# Document API Structure

## Book (/books/:year)

```
~ v1
/:lang/books/:year
  /index.md
  /:book_title.md
~ v2
/:lang/books/:year/:book_title
  /index.md
```

## Event (/events/:year)

```
~ v1
/:lang/events/:year
  /index.md
  /:event.md
```

## Film (/films/:year)

```
~ v1
/:lang/films/:year
  /index.md
  /:film_director
    /index.md
    /:title.md
~ v2
```

## Music (/music/:year)

```
~ v1
/:lang/music/:year
  /index.md
  /:aritst
    /index.md
    /:record_title.md
~ v2
/:lang/music/:year
  /index.md
  /:artist
    /index.md
    /albums
      /:album_title
    /records
      /:record_title
```

## Person (/people/:year)

```
/:lang/:year/people
  /index.md
  /:person.md
```

## Shows (/shows/:year)

```
~ v1
/:lang/shows/:year
  /index.md
  /:show_director
    /inedx.md
    /:episode_title.md
    /:n -> ./:episode_title.md
~ v2
/:lang/shows/:year
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

## Video Games (/games/:year)

```
~ v1
/:lang/games/:year
  /index.md
  /:studio
    /index.md
    /:title.md
~ v2
```
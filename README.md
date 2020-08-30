# journey

A media database like IMDb, but run through GitHub and deployed on Jekyll.

The main focus of this somewhat strange project is to give new git users a project to 'practice' on while possibly contributing a piece to a puzzle.

- If you have an entry you'd like to contribute, open a pull request.
- If you find a discrepancy or issue, open an issue (keeps it somewhat formal with how site reports are tracked, but you may also choose to solve it yourself).

## Roadmap?

While this project may not have a concrete roadmap, we do have a number of _objectives_ or **_milestones_** we would like to achieve in the future. This list by no means represents the scope of expansion, but may set wheel turning for other ideas to be put forward.

- [ ] Multi language support

  > While all of us would like to see this right now, we think it would be best for the project to develop a bit before a decition is reached to migrate the project to it's new structure. (When this does happen, we will _attempt_ to merge all PRs prior to a predefined date.)

- [ ] Fallback attempt to find record links

  > _In testing, `2.` was being used to fill the gaps._

  1. Focus on using document parameters (use of front matter)
  2. Fallback to using URL destructuring (:year, :category, :author, :title)

- [ ] Networked record links of time travel

  - Event (/events)
  - Film (/films)
  - Book (/books)
  - Show (/shows)
  - Video Games (/games)

- [ ] Enhanced directory structure and front-matter

  > This would involve an upgrade to accomodate the capacity for extra entry data such as transcripts for movies, lyrics for music records or individual episodes for shows

- [ ] Custom pages?

  - Redirects using emojis
  - Redirects using symbols
  - Redirects for alternate names
  - Movie Studio / Franchise

- [ ] Request for Comments (RFCs)

  > When a major feature is to be added to the deployment, we may ask the community for their feedback and anything else they'd like to add on the topic.

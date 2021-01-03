# journey

[![Jekyll](https://github.com/sudojunior/journey/workflows/Jekyll/badge.svg)](https://github.com/sudojunior/journey/actions?query=workflow%3AJekyll)
[![Netlify Status](https://api.netlify.com/api/v1/badges/40a91400-90af-4653-9c83-e12f847c078e/deploy-status)](https://app.netlify.com/sites/jekylljourney/deploys)

A media database like IMDb, but run through GitHub and deployed on Jekyll.

The _original_ motivation to make this was when observing how limited IMDB was to edit, and then thinking how it could be scaled into a git project where others could learn the ropes while contributing something that would mean something to them as an individual. The outcome is what you see here... although it could do with some improvements.

## Contributing

The main focus of this somewhat strange project is to give new git users a project to 'practice' on while possibly contributing a piece to a puzzle.

- If you have an entry you'd like to contribute, open a pull request.
- If you find a discrepancy or problem with the site, open an issue *or a pull request if you know what you could do to resolve it*.

## Credit

This site deployment uses [`page-themes/primer`](https://github.com/page-themes/primer) as a basis for the layout, but overrides the default CSS import to include everything [`@primer/css`](https://github.com/primer/css) has to offer. *The CSS is imported from as a distribution version on [unpkg](https://unpkg.com).*

## Roadmap

While this project may not have a concrete roadmap, we do have a number of _objectives_ or **_milestones_** we would like to achieve in the future. This list by no means represents the scope of expansion, but may set wheel turning for other ideas to be put forward.

- [ ] Multi language support

  > While all of us would like to see this right now, we think it would be best for the project to develop a bit before a decition is reached to migrate the project to it's new structure. (When this does happen, we will _attempt_ to merge all PRs prior to a predefined date.)

- [ ] Fallback attempt to find record links

  > _In testing, `2.` was being used to fill the gaps._

  1. Focus on using document parameters (use of front matter)
  2. Fallback to using URL destructuring (:year, :category, :author, :title)

- [ ] Networked record links of time travel

  *Partial completion with sibling node linking.*

- [ ] Enhanced directory structure and front-matter

  *Further documented on the [Development Notes](https://github.com/sudojunior/journey/wiki/Development-Notes#document-api-structure) page on the repo wiki.*

  > This would involve an upgrade to accomodate the capacity for extra entry data such as transcripts for movies, lyrics for music records or individual episodes for shows

- [ ] Custom pages?

  - Redirects using emojis
  - Redirects using symbols
  - Redirects for alternate names
  - Movie Studio / Game Studio / Franchise / Company

- [ ] Request for Comments (RFCs)

  > When a major feature is to be added to the deployment, we may ask the community for their feedback and anything else they'd like to add on the topic.

## Any questions?

- **Where should I start?**

  Wherever you like, no-one should dicate what you contribute to. Before you do, please check [our Issues](https://github.com/TinkerStorm/journey/issues) and [our PRs](https://github.com/TinkerStorm/journey/pulls).

- **Do you have a list of entries you'd like added?**

  Yes... suprisingly. 

  You can view this discovery list [here](./docs/_discover.md) or check a year folder index file for the jeykll comment table *if it exists*.

- **Will languages be implemented *eventually*?**

  There are plans to implement multi-language entry support, but we would like to see how the project can continue to expand before doing so.

  Users should express a need to have a particular language added, and then have contributors begin to translate entries (or add new entries).

  This entry tracking becomes particularly difficult if trying to triage translations between ever-changing source languages (i.e. where the entry is originally from, and how derivatives are tracked on top of that).

- **What categories could be added in the future?**

  *Includes both planned and possibilities, likely to expand and evolve.*

  - Books (`/books/:year/:author/:title`)
  - Events (`/events/:year/:venue`)
  - Games (`/games/:year/:developer/:title`)  
    *Video Games, may expand to a wider scope if an 'RFC' is passed through*
  - Films (`/films/:year/:director/:title`)
  - Shows (`/shows/:year/:??/:title`)  
    *Unsure if to go by showrunner, publisher, director, etc.*
  - People (`/people/:year/:name`)
    *Indexed by birth or formed year (includes Individuals, Organizations / Companies, Music Groups, etc.).*

  **What categories are on the 'cliff edge'?**

  - ~~YouTube (`/youtube/:year/:channel/:title`) *Unsure at the moment*  
    *`:channel` requires custom channel url*~~
  - ~~Twitch (`/twitch/:year/:channel`) *Unsure of format, and if to add*~~
  - *Content* Creator (`/??/:year/:creator/:??`) *Unsure, likely merge of all content creator platforms into one*  
    `:creator` would use main channel identifier used by the individual or group channel  
    *Consider creator groups that host other channels as part of their network (Yogscast, Rooster Teeth -> Achievement Hunter & Funhaus, N3RDFUSION, etc.)*

If this didn't answer any of you questions, feel free to drop by [TinkerStorm's discord](https://discord.gg/Bb3JQQG) or [contact me directly](https://sudojunior.github.io/about/).

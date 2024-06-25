# Personal Website made with Astro

## Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI                     |

## Add new SVG Icons

- Find an Icon Set to use on the [Iconify Icon Sets website](https://icon-sets.iconify.design)
- Install the package (eg. npm i -D @iconify-json/mdi)
- Reference a specific icon using the name prop with (eg.`mdi:account`)

```jsx
---
import { Icon } from "astro-icon/components";
---

<Icon name="mdi:account" />
```

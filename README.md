# Tailwind Starter

This is an example of a simple Phoenix Framework setup for [tailwindcss v2.0](https://tailwindcss.com/). It also includes the [recommend production setup](https://tailwindcss.com/docs/optimizing-for-production) to purge unused class name from production build.

## Notes

A list of changes that are made to the default phoenix template.

- Added `postcss-loader` to `webpack.config.js`
- Added `tailwindcss@2.x` and config `PurgeCSS` to watch for template files under `lib/**/*.eex`
- Added `@tailwindcss/aspect-ratio`, `@tailwindcss/forms`, and `@tailwindcss/typography` for those who are using `tailwindui`
- Removed CSS styling included in the default template

## Development

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

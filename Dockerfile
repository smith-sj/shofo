RUN apt-get update -qq && apt-get install -y --no-install-recommends libvips42
RUN docker compose down
RUN docker compose up --build
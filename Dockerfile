FROM scratch
RUN apt-get update -qq && apt-get install -y --no-install-recommends libvips42
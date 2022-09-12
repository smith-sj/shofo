FROM ruby:3.0.1

RUN apt-get update && apt-get install -y \
        build-essential \
        unzip \
        wget \
        git \
        pkg-config

# stuff we need to build our own libvips ... this is a pretty random selection
# of dependencies, you'll want to adjust these
RUN apt-get install -y \
        glib-2.0-dev \
        libexpat-dev \
        librsvg2-dev \
        libpng-dev \
        libgif-dev \
        libjpeg-dev \
        libexif-dev \
        liblcms2-dev \
        liborc-dev

ARG VIPS_VERSION=8.12.2
ARG VIPS_URL=https://github.com/libvips/libvips/releases/download

RUN apt-get install -y \
        wget

RUN cd /usr/local/src \
        && wget ${VIPS_URL}/v${VIPS_VERSION}/vips-${VIPS_VERSION}.tar.gz \
        && tar xzf vips-${VIPS_VERSION}.tar.gz \
        && cd vips-${VIPS_VERSION} \
        && ./configure --disable-deprecated \
        && make -j 4 V=0 \
        && make install

RUN gem install ruby-vips
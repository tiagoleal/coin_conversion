FROM ruby:2.5.1

# add nodejs and yarn dependencies for the frontend
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# Install dependencies
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
nodejs yarn build-essential libpq-dev imagemagick git-all nano vim

RUN echo "alias vi=vim"  >> /etc/profile

# Set our path
ENV INSTALL_PATH /onebitexchange

# Create our directory
RUN mkdir -p $INSTALL_PATH

# Set our path with the home directory
WORKDIR $INSTALL_PATH

# Set our path for the Gems
ENV BUNDLE_PATH /gems

# Copy our code to inside of container
COPY . .

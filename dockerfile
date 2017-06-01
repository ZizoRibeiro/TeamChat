FROM ruby:2.4
# install all modules
RUN apt-get update && apt-get install -qq -y --no-install-recommends \
      build-essential nodejs libpq-dev
# Setup the Path
ENV INSTALL_PATH /teamchat
# Create the directory
RUN mkdir -p $INSTALL_PATH
# Setup the path with the directory
WORKDIR $INSTALL_PATH
# Copy the Gemfile to the container
COPY Gemfile ./
# Setup the path for the Gems
ENV BUNDLE_PATH /box
# Copy the code to the container
COPY . .

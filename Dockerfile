FROM jekyll/jekyll:4

# Set working directory
WORKDIR /srv/jekyll

# Copy Gemfile and install dependencies
COPY Gemfile* ./
RUN bundle install

# Copy the rest of the site
COPY . .

# Expose port 4000
EXPOSE 4000

# Default command with live reload
CMD ["jekyll", "serve", "--host", "0.0.0.0", "--livereload"] 
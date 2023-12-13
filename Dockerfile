# Use the official Ruby image as the base image
FROM ruby:3.0.0

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install dependencies using bundler
RUN gem install bundler && bundle install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Start the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]

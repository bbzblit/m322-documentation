# Start from an existing Jekyll Docker image
FROM jekyll/jekyll

# Set the working directory
WORKDIR /app

# Copy the Markdown files from the host to the container
COPY . /app

# Build the Jekyll site
RUN jekyll build

# Expose port 4000 for the Jekyll development server
EXPOSE 4000

# Start the Jekyll development server
CMD jekyll serve --host 0.0.0.0

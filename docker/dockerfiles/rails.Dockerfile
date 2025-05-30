FROM ruby:3.4.4-alpine3.21

WORKDIR /app # Set the working directory inside the container

RUN apk add --no-cache postgresql-client
COPY . /app

ENV PNPM_HOME="/root/.local/share/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN chmod +x /app/docker/entrypoints/rails.sh

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0", "-p", "3000"]
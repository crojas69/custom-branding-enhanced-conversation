FROM node:23-alpine

WORKDIR /app


COPY . /app


ENV PNPM_HOME="/root/.local/share/pnpm"
ENV PATH="$PNPM_HOME:$PATH"

RUN chmod +x /app/docker/entrypoints/vite.sh

EXPOSE 3036
CMD ["bin/vite", "dev"]

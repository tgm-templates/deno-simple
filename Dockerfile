FROM hayd/deno:alpine-1.6.2
EXPOSE 8000
WORKDIR /app
ADD . /app
RUN deno cache main.ts
CMD ["run", "--allow-net", "main.ts"]

# run main.ts
main:
   deno run -A main.ts

# Compile main.ts to executable binary
native-compile:
    deno compile --unstable --lite -o deno-simple main.ts

# setup dev environment
setup:
   mkdir -p bindings
   deno types --unstable > ./bindings/lib.deno.unstable.d.ts

# Docker image build
image-build:
   docker build -t deno-simple .

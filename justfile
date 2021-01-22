# setup dev environment
setup:
   mkdir -p bindings
   deno types --unstable > ./bindings/lib.deno.unstable.d.ts

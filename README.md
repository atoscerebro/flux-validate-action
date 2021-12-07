# Flux Validate GitHub Action

GitHub Action to validate [Flux](https://fluxcd.io/) config

## Inputs

### flux-version

> **Required** The version of flux to fetch schemas against

## Example usage

```yaml
uses: atoscerebro/flux-validate-action@v1
with:
  flux-version: 0.24.0
```

## Credits

The original script is from [flux2-kustomize-helm-example](https://github.com/fluxcd/flux2-kustomize-helm-example/blob/e44cdeee52934cb329cc721f07df7d7c69e58ef0/scripts/validate.sh) created by the Flux team.

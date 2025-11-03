# Test Package Repository

This repository is configured to publish packages to GitHub Packages.

## Package Types

This repository can publish:

1. **Docker/Container Package** - Via GitHub Container Registry (ghcr.io)
2. **npm Package** - Via GitHub Packages npm registry

## Published Packages

### Container Image

```bash
docker pull ghcr.io/kuhlman-labs-org/test-with-packages:latest
```

### npm Package

```bash
npm install @kuhlman-labs-org/test-with-packages
```

## Publishing

Packages are automatically published via GitHub Actions when:
- A new tag is pushed (format: v*.*.*)
- Workflow is manually triggered

## Configuration Files

- `Dockerfile` - Container image definition
- `package.json` - npm package metadata
- `.npmrc` - npm registry configuration
- `.github/workflows/publish-packages.yml` - Publishing automation

## Usage

### Docker Container

```bash
docker run ghcr.io/kuhlman-labs-org/test-with-packages:latest
```

### npm Package

```javascript
const testPkg = require('@kuhlman-labs-org/test-with-packages');

console.log(testPkg.greet('World')); // Hello, World!
console.log(testPkg.add(2, 3)); // 5
```

## Notes

This is a test repository created for GitHub migration testing purposes.

# This is the docker image for marp
```bash
docker build -t mymarp .
```
```bash
docker run --rm -v "$(pwd)":/marp custom-marp --pdf /marp/test.md
```
```bash
docker run --rm -v "$(pwd)":/marp custom-marp --pptx /marp/test.md
```
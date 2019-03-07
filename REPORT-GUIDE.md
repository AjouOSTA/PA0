# 보고서

- 보고서는 아래의 내용을 포함하면 만점을 받고, 하나를 포함하지 못할 때마다 1점씩 감점
    - 이 과제를 어디까지 진행했는지
    - 이 과제를 수행하면서 배운 것
    - 이 과제에 대한 피드백

## 참고사항

- 앞의 1p 혹은 2p만 읽을 예정이니 compact 하게 작성 요망
- 의미없는 내용(e.g. 한게없음) 만 있으면 해당 내용은 쓰지 않은 것으로 간주
- 미제출시 0점

## 제출

- 작성 후 과제 repository의 `docs/` 디렉토리에 놓을 것. 파일의 이름은 `report.pdf` 여야만 함.
- 만약 pdf 형식이 아니거나 디렉토리와 이름이 틀리면 보고서 0점.

---

# (Optional) 보고서 다양한 방법으로 써보기

- 본 과제에서는 보고서를 쓰는 방법에 대한 제한은 두지 않으나, 아래와 같은 접근들도 가능하니 참고 바람.

## Latex

### Installation

```sh
sudo apt install texlive-full
```

### Usages

```sh
make latex
```

## Markdown

### Installation

```sh
sudo apt update
sudo apt install npm
npm install mdpdf -g
```

### Usages

```sh
make md
```

## LibreOffice

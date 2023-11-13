# React GPT CLI

## 소개

`react-gpt-cli` 프로젝트는 React 프로젝트를 위한 초기 설정을 도와주는 명령줄 인터페이스(CLI) 도구입니다. 본 도구는 프로젝트 초기 셋팅 작업을 간편하게 진행할 수 있는 기능을 제공하며, OpenAI GPT(Generative Pre-trained Transformer) 기반의 AI를 통해 README 파일 및 React 컴포넌트 코드 생성을 지원합니다. 개발자들이 React 애플리케이션 개발에 보다 집중할 수 있도록, 번거로운 부수적인 작업들을 효율적으로 수행할 수 있게 해 줍니다.

## 기능 소개

- **명령줄 인터페이스(CLI)**: `react-gpt-cli` 도구는 다양한 초기 설정 명령을 제공합니다. 각 설정은 신속하고 효율적으로 진행되어 프로젝트의 초기 구조를 빠르게 구성할 수 있도록 돕습니다.
- **.reactgptignore 파일 관리**: 이 파일을 통해 프로젝트 트리 생성 시 무시할 파일이나 폴더를 지정할 수 있습니다. 예를 들어, `node_modules`과 `dist` 같이 크기가 크거나 보통 프로젝트에서 추가적인 정보를 제공하지 않는 폴더들을 무시하도록 설정할 수 있습니다. `.reactgptignore`는 프로젝트의 루트에 위치하며, 각 라인에 하나의 룰을 추가하여 관리합니다.
- **README.md 및 컴포넌트 코드 자동 생성**: OpenAI GPT AI를 활용하여 Readme 파일이나 React 컴포넌트 코드를 자동으로 생성해 줍니다. 이 기능은 개발자로 하여금 더욱 시간을 절약하고, 핵심 개발 과정에 집중할 수 있게 돕습니다.
- **대화 인터페이스(chat)**: 프로젝트 관련 대화를 하여 정보를 얻거나 프로젝트에 관한 의문을 해소할 수 있는 대화형 인터페이스를 제공합니다. `rgc chat` 커멘드를 사용하여 프로젝트 어시스턴트인 GPT와 대화할 수 있으며, 대화를 통해 프로젝트 개선 아이디어를 얻거나 기능 실행을 의뢰할 수 있습니다.
- **git 커밋 메시지 추천**: 코드 변경 사항에 대한 의미있는 커밋 메시지를 작성하는 데 도움을 주는 기능이 추가되었습니다. `react-gpt-cli`를 사용하여 직접 git diff를 분석하고 적절한 커밋 메시지를 추천 받아 작업의 효율성을 높일 수 있습니다.

## 기술 스택

이 CLI 도구는 다음과 같은 기술 스택과 라이브러리들을 사용하여 구현되어 있습니다:

- `commander`: 명령어 옵션 파싱 및 CLI 기능을 구현할 수 있도록 도와주는 라이브러리입니다.
- `inquirer`: 사용자 인터페이스와 질의 세션을 쉽게 구성할 수 있는 라이브러리로, CLI 사용자 입력을 관리합니다.
- `openai`: GPT AI 기능을 활용할 수 있게 해주는 라이브러리로, 자동 문서화 및 코드 제네레이션 기능을 지원합니다.
- `chalk`: CLI에서 색상 및 스타일을 쉽게 적용할 수 있는 라이브러리로, 사용자 경험을 향상시킵니다.
- `glob`: 파일 패턴 매칭을 사용하여 파일 시스템을 탐색할 수 있게 해주는 라이브러리입니다.

## 설치 및 사용법

본 CLI 도구는 Node.js 환경에서 작동하며, 최적의 성능을 위해 아래의 표에 나타난 버전들이 권장됩니다.

| Node.js 버전 | 권장 여부 | 비고                               |
|--------------|------------|------------------------------------|
| 14.x         | Yes        | ES 모듈 지원 범위 내의 최저 버전일 것 |
| 16.x         | Yes        | 현재 Long Term Support(LTS) 버전  |
| 18.x         | Yes        | LTS 버전                           |
| 20.x         | 예상됨     | 최신 버전, 실험적 기능을 포함할 수 있음    |

`package.json` 파일에 지정된 `"type": "module"`로 인해 ES 모듈을 지원하는 Node.js 버전 14 이상을 사용하는 것이 좋습니다. 최신 버전의 Node.js 사용을 고려할 때, 기능 테스트 및 호환성 확인이 필요할 수 있습니다.

yarn 패키지 매니저를 사용하여 설치하는 것을 권장하며, 전역으로 설치하려면 다음 명령을 실행하세요:

```bash
yarn global add react-gpt-cli
```

설치가 완료되면, `rgc` 또는 `react-gpt-cli` 명령을 사용하여 새 React 프로젝트를 시작하거나, 기존 프로젝트에 README 파일 및 컴포넌트를 생성할 수 있습니다. 사용 가능한 명령어 형식 및 옵션은 도움말을 통해 확인할 수 있습니다:

만약 `rgc` 또는 `react-gpt-cli` 명령이 실행되지 않는다면 '~/.yarn/bin'의 PATH가 실행환경에 추가되어 있지 않을 수 있으니
아래 명령어를 실행해 주세요.

```bash
echo 'export PATH="$(yarn global bin):$PATH"' >> ~/.zshrc
source ~/.zshrc
```

Homebrew를 통한 설치도 지원하고 있습니다.

```bash
brew tap lainer77/homebrew-tap
brew install react-gpt-cli
```

1. **OpenAI API 키 설정하기**

   ```bash
   rgc set <Your-OpenAI-Key>
   ```

2. **환경 설정하기**
   - ESLint 초기화하기:

     ```bash
     rgc setting eslint
     ```

   - Prettier 초기화하기:

     ```bash
     rgc setting prettier
     ```

   - JSConfig 초기화하기:

     ```bash
     rgc setting jsconfig
     ```

   - TSConfig 초기화하기:

     ```bash
     rgc setting tsconfig
     ```

   - Storybook 초기화하기:

     ```bash
     rgc setting sb
     ```

3. **React 컴포넌트 생성하기**

    - 기본 경로(src/components)에 컴포넌트 생성:

      ```bash
      rgc component MyComponent
      ```

    - 커스텀 경로에 컴포넌트 생성:

      ```bash
      rgc component MyComponent -fp src/my-custom-folder
      ```

4. **README.md 파일 추가 및 수정하기**

    ```bash
    rgc readme
    ```

   - `-o` 또는 `--open` 임시 파일로 바로 열어 보기:

      ```bash
      rgc readme --open
      ```

   - `-w` 또는 `--write` 실제 프로젝트의 README.md 파일에 바로 반영:

      ```bash
      rgc readme --write
      ```

5. **친근한 GPT와 대화하기**

    ```bash
    rgc chat
    ```

    - 대화 이력을 보고 싶을 때:

      ```bash
      rgc chat --list
      ```

    - 대화 이력을 삭제하고 싶을 때:

      ```bash
      rgc chat --clear
      ```

    - GPT의 마지막 답변을 Visual Studio Code로 열고 싶을 때:

      ```bash
      rgc chat --last --open
      ```

    - 마지막 답변만 확인하고 싶을 때:

      ```bash
      rgc chat --last
      ```

6. **git 관련 작업하기**
   - git 커밋 메시지 추천받기:

      ```bash
      rgc git commit
      ```

   - `-o` 또는 `--open` 임시 파일로 바로 열어 보기:

      ```bash
      rgc git commit --open
      ```

7. **명령와 옵션에 대해 알아보기**

    ```bash
    rgc --help
    ```

또한, 해당 도구는 'lib/index.js' 파일을 실행 파일로 활용하고 있어, 이를 통해 명령어 인터페이스를 직접 이용할 수 있습니다.

## .reactgptignore 파일

이 파일을 사용하여 `tree-cli` 트리 생성 명령을 실행할 때 무시하고자 하는 파일이나 디렉토리를 지정할 수 있습니다. 무시하고 싶은 항목을 `.reactgptignore` 파일에 각 줄마다 추가해주기만 하면 됩니다. 예를 들어:

```
node_modules/**
dist/**
build/**
```

위와 같은 내용을 포함하는 `.reactgptignore` 파일을 프로젝트의 루트 디렉토리에 생성하면, 해당 디렉토리를 `react-gpt-cli`가 무시하게 됩니다.

## 개발자

### Git 커밋 메시지 규칙

- **Type**: 커밋의 성격을 나타냅니다.

  - `feat`: 새로운 기능 추가
  - `fix`: 버그 수정
  - `docs`: 문서 수정
  - `style`: 코드 스타일 변경 (포맷, 세미콜론 누락, 들여쓰기 등; 코드 수정 없음)
  - `refactor`: 코드 리팩토링
  - `test`: 테스트 추가/수정 (기능 수정 없음)
  - `chore`: 기타 변경사항 (빌드 스크립트 수정 등)

- **Scope**: 커밋의 범위를 명시합니다. (옵션)
- **Subject**: 커밋의 간단한 설명을 작성합니다.
- **Git**: 의미있는 커밋 메시지를 작성하고, 작업 단위별로 커밋을 수행합니다.
- **코드 스타일**: 일관된 코드 스타일을 유지하며, 의미있는 변수 및 함수 이름을 사용합니다.

### 커밋 메시지 예시

```plaintext
feat: 장바구니 기능 추가

- 사용자가 상품을 장바구니에 담을 수 있는 기능을 구현하였습니다.
- 장바구니 페이지에서 선택한 상품을 확인하고 삭제할 수 있습니다.
```

이 도구의 개발과 유지 보수는 GitHub 레포지토리를 통해 진행됩니다. 기능 개선이나 버그 제보는 언제든지 환영하며, 프로젝트에 참여하고자 하는 개발자는 해당 레포지토리에서 기여 가이드라인을 참조하기 바랍니다.

## 라이선스

이 프로젝트는 MIT 라이선스를 따릅니다. 프로젝트를 자유롭게 사용, 수정, 배포할 수 있으나, 라이선스와 저작권 정보는 반드시 포함시켜야 합니다.

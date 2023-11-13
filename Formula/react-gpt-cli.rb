class ReactGptCli < Formula
    desc "React 프로젝트 초기 설정 자동화 도구"
    homepage "https://github.com/lainer77/homebrew-tap"
    version "0.0.0-beta"
  
    if OS.mac?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-macos"
      sha256 "e64206ccfaf58f3a6a23b63ff89465bc91b1cfb2cf68bafaea4875bf16957240"
    elsif OS.linux?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-linux"
      sha256 "942709f5259a1471d40db2290683b792ef87ad48c5c2c433453ae744d97fad1d"
    elsif OS.windows?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-win.exe"
      sha256 "d6f45427ae8d4f6a728e2deb590360c38c49f88cdd7425c86ed89c41cca75299"
    end
  
    def install
      if OS.mac?
        bin.install "react-gpt-cli-macos" => "react-gpt-cli"
        bin.install_symlink "#{bin}/react-gpt-cli" => "rgc"
      elsif OS.linux?
        bin.install "react-gpt-cli-linux" => "react-gpt-cli"
        bin.install_symlink "#{bin}/react-gpt-cli" => "rgc"
      elsif OS.windows?
        bin.install "react-gpt-cli-win.exe" => "react-gpt-cli"
        bin.install_symlink "#{bin}/react-gpt-cli" => "rgc"
      end
    end
  
    test do
      system "#{bin}/react-gpt-cli", "-h"
    end

    def caveats
      <<~EOS
        react-gpt-cli가 성공적으로 설치되었습니다.
        다음의 명령어로 사용할 수 있습니다:
          react-gpt-cli -h
          rgc -h
        자세한 설명은 https://github.com/lainer77/homebrew-tap 에서 확인할 수 있습니다.
      EOS
    end
end

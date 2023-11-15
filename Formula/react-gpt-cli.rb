class ReactGptCli < Formula
    desc "React 프로젝트 초기 설정 자동화 도구"
    homepage "https://github.com/lainer77/homebrew-tap"
    version "0.0.2-beta"
  
    if OS.mac?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-macos"
      sha256 "a19e64dbca960f6eddb1c4f0765fa8e7d4cef8af3b298c1084ae45fc736837e2"
    elsif OS.linux?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-linux"
      sha256 "9d67e9b487d9711a2c68a7a8274c4850a56d6ba174b648f8920811731f17b22a"
    elsif OS.windows?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-win.exe"
      sha256 "8026b58d1870b6dd5ae7c3840f97c1ba71d03b35c577337366d5ca81a0dfc1ac"
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

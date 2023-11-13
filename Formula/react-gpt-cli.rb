class ReactGptCli < Formula
    desc "React 프로젝트 초기 설정 자동화 도구"
    homepage "https://github.com/lainer77/homebrew-tap"
    version "0.0.0-beta"
  
    if OS.mac?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-macos"
      sha256 "de7e1e5d66aa055d3b4cfece7bf1d9fa242ff8b373a9249edd2c19b2e3276bfe"
    elsif OS.linux?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-linux"
      sha256 "2a7dfd4bba721d82776ec666ca993b9704cc3e9198daa1c8975028557abb53e5"
    elsif OS.windows?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-win.exe"
      sha256 "70fe9e4d8a5e1efbd1b92ef60072db371578b19104d38e769f4e38cdf2c35252"
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

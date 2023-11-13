class ReactGptCli < Formula
    desc "React 프로젝트 초기 설정 자동화 도구"
    homepage "https://github.com/lainer77/homebrew-tap"
    version "0.0.0-beta"
  
    if OS.mac?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-macos"
      sha256 "18a86c2c58cca66a16cc28eaebf67a83000e6a51451267c4406123a34008dfc0"
    elsif OS.linux?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-linux"
      sha256 "b731892ec033b340ec30ef6def694e26311e07942bfeb409825b63baacd497bc"
    elsif OS.windows?
      url "https://cdn.readyfront.co.kr/pkg/react-gpt-cli-win.exe"
      sha256 "d4625d13535c3b5d7d85235ce9ecff142e78e2e0e23c5c1005f6a0f9bde27997"
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

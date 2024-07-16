cask "sq-mixpad" do
  version "1.5.1"
  sha256 "99eaf53e1ca0b63cfde57d9d97a5d7628da20d317c4803b51ba2fdcbf225bfb2"

  url "https://www.allen-heath.com/content/uploads/2023/05/SQ-MixPad-#{version}.zip"
  name "sq-mixpad"
  desc "Remote control for Allen & Heath SQ audio consoles"
  homepage "https://www.allen-heath.com/hardware/sq/sq-mixpad/"

  livecheck do
    url "https://www.allen-heath.com/hardware/sq/sq-mixpad"
    regex(%r{href=.*?/SQ-MixPad-(\d+(?:\.\d+)*)\.zip}i)
    strategy :page_match
  end

  depends_on macos: ">= :sierra"

  app "SQ MixPad #{version}.app"

  zap trash: "~/Library/Preferences/com.allen-heath.SQ-MixPad V1.5.1 - Rev. 56771.plist"

  caveats do
    requires_rosetta
  end
end

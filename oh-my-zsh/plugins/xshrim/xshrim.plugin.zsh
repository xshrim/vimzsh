# PWD
local cdir=$(dirname $0)
# zsh文档: https://github.com/goreliu/zshguide

########################################
# 符号大全
########################################
# 1. 办公、生活、天气与日常指标
# 🛠️ 💰 💳 📈 📉 📊 📟 💻 🖥️ 🗄️ 🍽️ 🎬 📚 📋 🏠 🏗️ 🎭 ✿ ❀ ⚙ ☀ ☁ ☂ ⛅ ☔ ❄ ☕ ☃ ❅ ❆ ✺ ☼ ☽ ☾ ☄ ⚡ ϟ ☇ ☈ ☠ ☣ ☢ ✨ ✉ ☎ ☏ ✆ ⌚ 🎮 🕹 ⌛ ⏳ ✈️ ✈ 🛦 ⏰ ⌂ ✍ ✎ ✏ ✑ ✒ ✁ ✂ ✃ ✄ 📦 🗃️ ♨ ⑁ ⑃ ⑊ ⑄ ⛓️ ⤗ ⤮ ⎇ ⇅ ↩️ ♿ 🏷️ 🖲️ 🗑️ ☠ ☣ ☢ ⚽ ⚾ ⛳ ⛪ ⛲ ⛾ ⛽ ⚓ ⛵ ⛔ ⭕ 🛈 ⚠ ⚿ 🗝️ 🔒 🛡️ ⨷ ℹ ĭ ☑ ✓ ✔ √ ☐ ☒ ✗ ✘ ㄨ ✕ ✖ ✅ ❌ ❎ ➕ ➖ ➗ ⚑ ⚐ ♺ ♻ ♼ ➰ ➿ 〽 ✳ ✴ ❇ ‼ ⁉ ❓ ❔ ❕ ❗ ™ ℠ ▪ ▫ ◻ ◼ ◽ ◾ ⬛ ⬜ ⚪ ⚫

# 2. 几何图形、方块与阴影
# ○ ◌ ◍ ◎ ● ◐ ◑ ◒ ◓ ⦿ ◔ ◕ ◖ ◗ ◘ ◙ ◭ ◮ ☌ ☍ ◈ ▢ ▣ ■ □ ◆ ◇ ▤ ▥ ▦ ▧ ▨ ▩ ▪ ▫ ▬ ▭ ▮ ▯ ⊞ ⬒ ⬓ ⬔ ⬕ ⬖ ⬗ ⬘ ⬙ ⬟ ◊ ▲ ▼ ◤ ◥ ◣ ◢ △ ▽ ⌑ ▀ ▁ ▂ ▃ ▄ ▅ ▆ ▇ █ ▉ ⊊ ▊ ▋ ▌ ▍ ▎ ▏ ▐ ░ ▒ ▓ ▔ ▕ 〓 ❖ ⎔ ⊿ 📐 🎨

# 3. 娱乐、音符、星体与星座
# ♪ ♫ ♩ ♬ ♭ ♮ ♯ ☊ ☋ ♔ ♕ ♖ ♗ ♘ ♙ ♚ ♛ ♜ ♝ ♞ ♟ ★ ☆ ✪ ✯ ✰ ✧ ✦ ✩ ✬ ✭ ✮ ❂ ✶ ✷ ✸ ✹ ✺ ✻ ✼ ❇ ❈ ❉ ❊ ✱ ✲ ✳ ✴ ✵ ♈ ♉ ♊ ♋ ♌ ♍ ♎ ♏ ♐ ♑ ♒ ♓ ⛎ 🌟 ⭐ 🎨 🎬 🎤 🎧 🎵 🎶 ♟ 🃏 🀄 🃏 🎪 🎮 🕹

# 4. 表情、爱心与人物相关
# ☹ ☺ ☻ ✊ ヅ ツ ッ シ Ü ϡ ﭢ ღ ♡ ♥ ❤ ❥ ❣ ❦ ❧ ♠ ♣ ♧ ♢ ♦ 웃 유 ⚢ ♂ ♀ ☿ ♁ ⚴ ⚥ ⚤ ⚦ ⚳ ☜ ☞ ☝ ✍ ☚ ☛ ☟ ✌ ✋ ✊ 🙌 👏 💪 👋 💋 👤 👥 (✿◠‿◠) (͡° ͜ʖ ͡°) ≥Ö‿Ö≤ (ô‿ô) ≧◠◡◠≦✌ (>‿◠)✌ ☜(ˆ▽ˆ) （‐＾▽＾‐） ᕙ( ＾‿ゝ＾ c) ≧◔◡◔≦ ≧◉◡◉≦ (¬‿¬) (─‿‿─) (●̮̃•) _ (•◡•) /  ◕‿-｡ ｡◕‿◕｡

# 5. 徽章、信仰、文化与特定单位
# ☮ ☪ ✙ ☩ ☥ ☨ ☦ ✞ ✛ ✜ ✝ ✠ ✚ † ‡ ☯ ☧ ☬ ☸ ✡ ♆ ☭ ⭐ 卐 卍 囍 ㊣ ㊎ ㊍ ㊌ ㊋ ㊏ ㊐ ㊊ ㊚ ㊛ ㊤ ㊥ ㊦ ㊧ ㊨ ㊒ ㊞ ㊑ ㊓ ㊔ ㊕ ㊖ ㊗ ㊘ ㊜ ㊝ ㊟ ㊠ ㊡ ㊢ ㊩ ㊪ ㊫ ㊬ ㊭ ㊮ ㊯ ㊰ ㊙ ㉿ ㍿ 〒 ￠ € £ ™ ℠ ℗ © ® ☰ ☲ ☱ ☴ ☵ ☶ ☳ ☷

# 6. 方向与箭头
# ← ↑ → ↓ ↔ ↕ ↖ ↗ ↘ ↙ ↚ ↛ ↜ ↝ ↞ ↟ ↠ ↡ ↢ ↣ ↤ ↥ ↦ ↧ ↨ ↩ ↪ ↫ ↬ ↭ ↮ ↯ ↰ ↱ ↲ ↳ ↴ ↵ ↶ ↷ ↸ ↹ ↼ ↽ ↾ ↿ ⇀ ⇁ ⇂ ⇃ ⇄ ⇅ ⇆ ⇇ ⇈ ⇉ ⇊ ⇋ ⇌ ⇍ ⇎ ⇏ ⇐ ⇑ ⇒ ⇓ ⇔ ⇕ ⇖ ⇗ ⇘ ⇙ ⇚ ⇛ ⇜ ⇝ ⇞ ⇟ ⇠ ⇡ ⇢ ⇣ ⇤ ⇥ ⇦ ⇧ ⇨ ⇩ ⇪ ⏎ ⤴ ⤵ ➔ ➘ ➙ ➚ ➛ ➜ ➝ ➞ ➡ ➢ ➣ ➤ ➥ ➦ ➧ ➨ ➲ ➳ ➴ ➵ ➶ ➷ ➸ ➹ ➺ ➻ ➼ ➽ ⬈ ⬉ ⬊ ⬋ ⌫ ◄ ► ▶ ◀ ▷ ◁ ⏸️ ⏭️ ⏮️ ⏩ ⏪ ▸ ◂ ▴ ▾ ▻ ◅ ▵ ▿ ▹ ◃ ➩ ➪ ➫ ➬ ➭ ➮ ➯ ➱ ➾ ➟ ➠ ⬆ ↗ ➡ ↘ ⬇ ↙ ⬅ ↖ ↕ ↔ ⟳ ⟲ ↻ ↺

# 7. 数学、算术与逻辑运算符
# ＋ ＝ ＜ ＿ ‐ － × ÷ ± ≈ ≒ ≠ ≡ ≢ ≣ ≤ ≥ ≦ ≧ ≨ ≩ ≂ ≃ ≄ ≅ ≆ ≇ ≉ ≊ ≋ ≌ ≍ ≎ ≏ ≐ ≑ ≓ ≔ ≕ ≖ ≗ ≘ ≙ ≚ ≛ ≜ ≝ ≞ ≟ ⊰ ⊱ ⋐ ⋑ ⋒ ⋓ ⋚ ⋛ ∫ ∬ ∭ ∮ ∯ ∰ ∱ ∲ ∳ % ℅ ‰ ‱ ½ ⅓ ⅕ ⅙ ⅛ ⅔ ⅖ ⅚ ⅜ ¾ ⅗ ⅝ ⅞ ⅘ ⅟ ⨠ ¶ ⨍ ⨎ ⨏ ⩚ ⩛ ⩡ ⩱ ⩲ ⩵ ⩶ ⊙ ☉ ⊕ ⊖ ⊘ ⊗ ∝ ∞ ∽ ﹤ ﹥ ※ ∷ ∶ ∑ ∏ ∧ ∨ ∪ ∩ ⊆ ⊄ ∈ ∉ ¬ ∵ ∴ ⊥ ∥ ∠ ⌒ √ ∟ ㏒ ㏑ π ø Ø ㎡ № §

# 8. 数字与编号
# ① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⑩ ⑪ ⑫ ⑬ ⑭ ⑮ ⑯ ⑰ ⑱ ⑲ ⑳ ⓪ ➀ ➁ ➂ ➃ ➄ ➅ ➆ ➇ ➈ ➉ ➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ➓ ⓫ ⓬ ⓭ ⓮ ⓯ ⓰ ⓱ ⓲ ⓳ ⓴ ㊀ ㊁ ㊂ ㊃ ㊄ ㊅ ㊆ ㊇ ㊈ ㊉ ㈠ ㈡ ㈢ ㈣ ㈤ ㈥ ㈦ ㈧ ㈨ ㈩ ⑴ ⑵ ⑶ ⑷ ⑸ ⑹ ⑺ ⑻ ⑼ ⑽ ⑾ ⑿ ⒀ ⒁ ⒂ ⒃ ⒄ ⒅ ⒆ ⒇ ⒈ ⒉ ⒊ ⒋ ⒌ ⒍ ⒎ ⒏ ⒐ ⒑ ⒒ ⒓ ⒔ ⒕ ⒖ ⒗ ⒘ ⒙ ⒚ ⒛ Ⅰ Ⅱ Ⅲ Ⅳ Ⅴ Ⅵ Ⅶ Ⅷ Ⅸ Ⅹ Ⅺ Ⅻ ⅰ ⅱ ⅲ ⅳ ⅴ ⅵ ⅶ ⅷ ⅸ ⅹ ⅺ ⅻ ⅼ ⅽ ⅿ d Ⅼ Ⅽ Ⅾ Ⅿ

# 9. 英文/拉丁变体与特定字符
# Ⓐ Ⓑ Ⓒ Ⓓ Ⓔ Ⓕ Ⓖ Ⓗ Ⓘ Ⓙ Ⓚ Ⓛ Ⓜ Ⓝ Ⓞ Ⓟ Ⓠ Ⓡ Ⓢ Ⓣ Ⓤ Ⓥ Ⓦ Ⓧ Ⓨ Ⓩ ⓐ ⓑ ⓒ ⓓ ⓔ ⓕ ⓖ ⓗ ⓘ ⓙ ⓚ ⓛ ⓜ ⓝ ⓞ ⓟ ⓠ ⓡ ⓢ ⓣ ⓤ ⓥ ⓦ ⓧ ⓨ ⓩ ⒜ ⒝ ⒞ ⒟ ⒠ ⒡ ⒢ ⒣ ⒤ ⒥ ⒦ ⒧ ⒨ ⒩ ⒪ ⒫ ⒬ ⒭ ⒮ ⒯ ⒰ ⒱ ⒲ ⒳ ⒴ ⒵ 𝝙 ǂ Ť Ŧ ℂ ℍ ℕ ℙ ℚ ℝ ℤ ℬ ℰ ℯ ℱ ℊ ℋ ℎ ℐ ℒ ℓ ℳ ℴ ℘ ℛ ℭ ℮ ℌ ℑ ℜ ℨ の • 큐

# 10. 标点、括号与分隔线
# ， 、 ＇ ： ∶ ； ? ‘ ’ “ ” 〝 〞 ˆ ˇ ﹕ ︰ ﹔ ﹖ ﹑ • ¨ … . ¸ ; ！ ´ ？ ！ ～ — ˉ ｜ ‖ ＂ 〃 ｀ @ ﹫ ¡ ¿ ﹏ ﹋ ﹌ ︴ 々 ﹟ 〡 〢 〣 〤 〥 〦 〧 〨 # $ ﹠ & ﹪ % * ﹡ ￣ ¯ ― ﹨ ˆ ˜ ﹍ ﹎ ~ ﹉ ﹊ （ ） 〈 〉 ‹ › ﹛ ﹜ 『 』 〖 〗 ［ ］ 《 》 〔 〕 { } 「 」 【 】 ︵ ︷ ︿ ︹ ︽ ﹁ ﹃ ︻ ︶ ︸ ﹀ ︺ ︾ ﹂ ﹄ ︼ ⟨ ⟩ ❮ « » ❝ ❞ ※  ─ │ ━ ┃ ┄ ┆ ┅ ┇ ┈ ┊ ┋ ╌ ╍ ╎ ╏ ═ ║ ╒ ╓ ╔ ╕ ╖ ╗ ╘ ╙ ╚ ╛ ╜ ╝ ╞ ╟ ╠ ╡ ╢ ╣ ╤ ╥ ╦ ╧ ╨ ╩ ╪ ╫ ╬ ┌ ┍ ┎ ┏ ┐ ┑ ┒ ┓ └ ┕ ┖ ┗ ┘ ┙ ┚ ┛ ├ ┝ ┞ ┟ ┠ ┡ ┢ ┣ ┤ ┥ ┦ ┧ ┨ ┩ ┪ ┫ ┬ ┭ ┮ ┯ ┰ ┱ ┲ ┳ ┴ ┵ ┶ ┷ ┸ ┹ ┺ ┻ ┼ ┽ ┾ ┿ ╀ ╁ ╂ ╃ ╄ ╅ ╆ ╇ ╈ ╉ ╊ ╋ ╽ ╾ ╼ ╿ ╳ ╮ ╭ ╯ ╰

# 11. 单位与货币
# ﹩ ℃ ℉ ° ′ ″ ＄ ￥ 〒 ￠ ￡ ％ ＠ ﹩ ﹪ ‰ ﹫ ㎡ ㏕ ㎜ ㎝ ㎞ ㏎ m³ ㎎ ㎏ ㏄ º ¹ ² ³ € £ Ұ ₴ $ ₰ ¢ ₤ ¥ ₳ ₲ ₪ ₵ 元 ₣ ₱ ฿ ¤ ₡ ₮ ₭ ₩ ރ 円 ₢ ₥ ₫ ₦ zł ﷼ ₠ ₧ ₯ ₨ Kč र ₹ ƒ ₸ ￠

# 12. 日历、小语种与中文字符变体
# ㋀ ㋁ ㋂ ㋃ ㋄ ㋅ ㋆ ㋇ ㋈ ㋉ ㋊ ㋋ ㏠ ㏡ ㏢ ㏣ ㏤ ㏥ ㏦ ㏧ ㏨ ㏩ ㏪ ㏫ ㏬ ㏭ ㏮ ㏯ ㏰ ㏱ ㏲ ㏳ ㏴ ㏵ ㏶ ㏷ ㏸ ㏹ ㏺ ㏻ ㏼ ㏽ ㏾ ㍙ ㍚ ㍛ ㍜ ㍝ ㍞ ㍟ ㍠ ㍡ ㍢ ㍣ ㍤ ㍥ ㍦ ㍧ ㍨ ㍩ ㍪ ㍫ ㍬ ㍭ ㍮ ㍯ ㍰ ㍘ Α Β Γ Δ Ε Ζ Η Θ Ι Κ Λ Μ Ν Ξ Ο Π Ρ Σ Τ Υ Φ Χ Ψ Ω α β γ δ ε ζ ν ξ ο π ρ σ η θ ι κ λ μ τ υ φ χ ψ ω А Б В Г Д Е Ё Ж З И Й К Л М Н О П Р С Т У Ф Х Ц Ч Ш Щ Ъ Ы Ь Э Ю Я а б в г д е ё ж з и й к л м н о п р с т у ф х ц ч ш щ ъ ы ь э ю я ā á ǎ à ō ó ǒ ò ē é ě è ī í ǐ ì ū ú ǔ ù ǖ ǘ ǚ ǜ ü ê ɑ  ń ň  ɡ ㄅ ㄆ ㄇ ㄈ ㄉ ㄊ ㄋ ㄌ ㄍ ㄎ ㄏ ㄐ ㄑ ㄒ ㄓ ㄔ ㄕ ㄖ ㄗ ㄘ ㄙ ㄚ ㄛ ㄜ ㄝ ㄞ ㄟ ㄠ ㄡ ㄢ ㄣ ㄤ ㄥ ㄦ ㄧ ㄨ ㄩ 零 壹 贰 叁 肆 伍 陆 柒 捌 玖 拾 佰 仟 万 亿 吉 太 拍 艾 分 厘 毫 微 卄 巜 弍 弎 弐 朤 氺 曱 甴 兀 〆 ぁ あ ぃ い ぅ う ぇ え ぉ お か が き ぎ く ぐ け げ こ ご さ ざ し じ す ず せ ぜ そ ぞ た だ ち ぢ っ つ づ て で と ど な に ぬ ね の は ば ぱ ひ び ぴ ふ ぶ ぷ へ べ ぺ ほ ぼ ぽ ま み む め も ゃ や ゅ ゆ ょ よ ら り る れ ろ ゎ わ ゐ ゑ を ん ゔ ゕ ゖ ァ ア ィ イ ゥ ウェ エ ォ オ カ ガ キ ギ ク グ ケ 게 コ ゴ サ ザ シ ジ ス ズ セ ゼ ソ ゾ タ ダ チ ヂ ッツ ヅ テ デ ト ド ナ ニ ヌ ネ ノ ハ バ パ ヒ ビ ピ フ ブ プ ヘ ベ ペ ホ ボ ポ マ ミ ム メ モ ャ ヤ ュ ユ ョ ヨ ラ リ ル レ ロ ヮ ワ ヰ ヱ ヲ ン ヴ ヵ ヶ ヷ ヸ ヹ ヺ ・ ー ヽ ヾ ヿ ゠ ㇰ ㇱ ㇲ ㇳ ㇴ ㇵ ㇶ ㇷ ㇸ ㇹ ㇺ ㇻ ㇼ ㇽ ㇾ ㇿ

########################################
# Git
########################################

# Default values for the appearance of the prompt. Configure at will.
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%}"
#ZSH_THEME_GIT_PROMPT_SEPARATOR="ǀ"
#ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[red]%}%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[yellow]%}ǀ%{$fg[cyan]%}⚑"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[yellow]%}ǀ%{$fg[red]%}⚡"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[yellow]%}ǀ%{$fg[magenta]%}✚"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[yellow]%}ǀ%{$fg[red]%}✖"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[yellow]%}ǀ%{$fg[yellow]%}✱"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}ǀ%{$fg[yellow]%}✤"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[yellow]%}ǀ%{$fg[yellow]%}⬙"
ZSH_THEME_GIT_PROMPT_BEHIND="↓"
ZSH_THEME_GIT_PROMPT_AHEAD="↑"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[yellow]%}ǀ%{$fg_bold[green]%}✔"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}ǀ%{$fg_bold[red]%}✘"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}ǀ%{$fg[white]%}●"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%}ǀ%{$fg[red]%}✦"

########################################
# Powerline
########################################

CURRENT_BG='NONE'
RCURRENT_BG='NONE'

# Special Powerline characters

() {
  local LC_ALL="" LC_CTYPE="en_US.UTF-8"
  # NOTE: This segment separator character is correct.  In 2012, Powerline changed
  # the code points they use for their special characters. This is the new code point.
  # If this is not working for you, you probably have an old version of the
  # Powerline-patched fonts installed. Download and install the new version.
  # Do not submit PRs to change this unless you have reviewed the Powerline code point
  # history and have new information.
  # This is defined using a Unicode escape sequence so it is unambiguously readable, regardless of
  # what font the user is viewing this source code in. Do not replace the
  # escape sequence with a single literal character.
  # Do not change this! Do not make it '\u2b80'; that is the old, wrong code point.
  SEGMENT_SEPARATOR=$'\ue0b0'
  RSEGMENT_SEPARATOR=$'\ue0b2'
}

# Begin a segment
# Takes two arguments, background and foreground. Both can be omitted,
# rendering default background/foreground.
prompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"
  if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
    echo -n " %{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  CURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

rprompt_segment() {
  local bg fg
  [[ -n $1 ]] && bg="%K{$1}" || bg="%k"
  [[ -n $2 ]] && fg="%F{$2}" || fg="%f"

  if [[ $RCURRENT_BG != 'NONE' && $1 != $RCURRENT_BG ]]; then
    echo -n " %{%K{$RCURRENT_BG}%F{$1}%}$RSEGMENT_SEPARATOR%{$fg%}"
    echo -n "%{$bg%}%{$fg%} "
  else
    echo -n "%{$bg%}%{$fg%} "
  fi
  RCURRENT_BG=$1
  [[ -n $3 ]] && echo -n $3
}

prompt_start() {
  if [[ $RCURRENT_BG == 'NONE' || $1 != $RCURRENT_BG ]]; then
    RCURRENT_BG=$1
    echo -n " %{%k%F{$RCURRENT_BG}%}$RSEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  #echo -n "%{%f%}"
}

# End the prompt, closing any open segments
prompt_end() {
  if [[ -n $CURRENT_BG ]]; then
    echo -n " %{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
  else
    echo -n "%{%k%}"
  fi
  echo -n "%{%f%}"
  CURRENT_BG=''
}

### Prompt components
# Each component will draw itself, and hide itself if no information needs to be shown

# Context: user@hostname (who am I and where am I)
prompt_context() {
  # if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
  #   prompt_segment black default "%(!.%{%F{yellow}%}.)$USER@%m"
  # fi
}

# Git: branch/detached head, dirty status
prompt_git() {
  (( $+commands[git] )) || return
  local PL_BRANCH_CHAR
  () {
    local LC_ALL="" LC_CTYPE="en_US.UTF-8"
    PL_BRANCH_CHAR=$'\ue0a0'         # 
  }
  local ref dirty mode repo_path
  repo_path=$(git rev-parse --git-dir 2>/dev/null)

  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then
    dirty=$(parse_git_dirty)
    ref=$(git symbolic-ref HEAD 2> /dev/null) || ref="➦ $(git rev-parse --short HEAD 2> /dev/null)"
    if [[ -n $dirty ]]; then
      prompt_segment yellow black
    else
      prompt_segment green black
    fi

    if [[ -e "${repo_path}/BISECT_LOG" ]]; then
      mode=" <B>"
    elif [[ -e "${repo_path}/MERGE_HEAD" ]]; then
      mode=" >M<"
    elif [[ -e "${repo_path}/rebase" || -e "${repo_path}/rebase-apply" || -e "${repo_path}/rebase-merge" || -e "${repo_path}/../.dotest" ]]; then
      mode=" >R>"
    fi

    setopt promptsubst
    autoload -Uz vcs_info

    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' get-revision true
    zstyle ':vcs_info:*' check-for-changes true
    zstyle ':vcs_info:*' stagedstr '✚'
    zstyle ':vcs_info:*' unstagedstr '●'
    zstyle ':vcs_info:*' formats ' %u%c'
    zstyle ':vcs_info:*' actionformats ' %u%c'
    vcs_info
    echo -n "${ref/refs\/heads\//$PL_BRANCH_CHAR }${vcs_info_msg_0_%% }${mode}"
  fi
}

prompt_bzr() {
  (( $+commands[bzr] )) || return
  if (bzr status >/dev/null 2>&1); then
    status_mod=`bzr status | head -n1 | grep "modified" | wc -m`
    status_all=`bzr status | head -n1 | wc -m`
    revision=`bzr log | head -n2 | tail -n1 | sed 's/^revno: //'`
    if [[ $status_mod -gt 0 ]] ; then
      prompt_segment yellow black
      echo -n "bzr@"$revision "✚ "
    else
      if [[ $status_all -gt 0 ]] ; then
        prompt_segment yellow black
        echo -n "bzr@"$revision

      else
        prompt_segment green black
        echo -n "bzr@"$revision
      fi
    fi
  fi
}

prompt_hg() {
  (( $+commands[hg] )) || return
  local rev status
  if $(hg id >/dev/null 2>&1); then
    if $(hg prompt >/dev/null 2>&1); then
      if [[ $(hg prompt "{status|unknown}") = "?" ]]; then
        # if files are not added
        prompt_segment red white
        st='±'
      elif [[ -n $(hg prompt "{status|modified}") ]]; then
        # if any modification
        prompt_segment yellow black
        st='±'
      else
        # if working copy is clean
        prompt_segment green black
      fi
      echo -n $(hg prompt "☿ {rev}@{branch}") $st
    else
      st=""
      rev=$(hg id -n 2>/dev/null | sed 's/[^-0-9]//g')
      branch=$(hg id -b 2>/dev/null)
      if `hg st | grep -q "^\?"`; then
        prompt_segment red black
        st='±'
      elif `hg st | grep -q "^[MA]"`; then
        prompt_segment yellow black
        st='±'
      else
        prompt_segment green black
      fi
      echo -n "☿ $rev@$branch" $st
    fi
  fi
}

# Dir: current working directory
prompt_dir() {
  prompt_segment blue black '%~'
}

# Virtualenv: current working virtualenv
prompt_virtualenv() {
  local virtualenv_path="$VIRTUAL_ENV"
  if [[ -n $virtualenv_path && -n $VIRTUAL_ENV_DISABLE_PROMPT ]]; then
    prompt_segment blue black "(`basename $virtualenv_path`)"
  fi
}

# Status:
# - was there an error
# - am I root
# - are there background jobs?
prompt_status() {
  local symbols
  symbols=()
  [[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}✘"
  [[ $UID -eq 0 ]] && symbols+="%{%F{yellow}%}⚡"
  [[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{cyan}%}⚙"

  [[ -n "$symbols" ]] && prompt_segment black default "$symbols"
}

# Date:
# Time:
rprompt_dtime() {
  rprompt_segment blue black '%D %T'
}

# status
rprompt_status() {
  rprompt_segment yellow black '%?'
}

## Main prompt
build_prompt() {
  RETVAL=$?
  prompt_status
  prompt_virtualenv
  prompt_context
  prompt_dir
  prompt_git
  prompt_bzr
  prompt_hg
  prompt_end
}

build_rprompt() {
    prompt_start blue
    rprompt_dtime
    rprompt_status
}

########################################
# Settings
########################################

# 加载 Zsh 内部调度器模块
zmodload zsh/sched

autoload colors zsh/terminfo
if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
fi
for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval _$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval $color='%{$fg[${(L)color}]%}'
    (( count = $count + 1 ))
done
FINISH="%{$terminfo[sgr0]%}"

# http://zsh.sourceforge.net/Doc/Release/Prompt-Expansion.html
########################################
# 命令提示符
########################################
[[ -z "$ZSH_THEME_CHOICE" ]] && ZSH_THEME_CHOICE="default"
precmd () {
  local theme="$ZSH_THEME_CHOICE"
  #local gitprompt=$(git_super_status)
  local gitprompt=$(git_prompt_info)
  local zero='%([BSUbfksu]|([FK]|){*})'
  local gitpromptsize=${#${(S%%)gitprompt//$~zero/}}

  local promptok="☀"
  local promptko="☂"
  local promptdc="♆"
  local promptsp="%(!.☢.❖)"
  local promptpt="%(!.➤.»)"
  local smile="%(?,$GREEN${promptok}%{$reset_color%},$RED${promptko}%{$reset_color%})"
  local count_db_wth_char=${#${${(%):-%/}//[[:ascii:]]/}}
  local HBAR=" -"

  if [[ $theme == "complex" ]]; then
    local leftsize=${#${(%):-${promptdc}<%M %/}}+$gitpromptsize+$count_db_wth_char
    local rightsize=${#${(%):-%D %T>${promptdc}}}

    FILLBAR="\${(l.(($COLUMNS - ($leftsize + $rightsize +2)))..${HBAR}.)}"

    #RPROMPT=$(echo "%(?..$RED%?$FINISH)")
    PROMPT=$(echo "$_BLUE${promptdc}<$_CYAN%M $_GREEN%/${gitprompt} $_YELLOW${(e)FILLBAR} $_MAGENTA%D %T$_BLUE>${promptdc}$FINISH$fg_bold[yellow][ $MAGENTA%n $BLUE%h ${smile}$fg_bold[yellow] ] $_RED${promptpt}$FINISH")
  elif [[ $theme == "simple" ]]; then
    promptsp="✦"
    local leftsize=${#${(%):-${promptdc}<%M${promptsp}%n %/}}+$gitpromptsize+$count_db_wth_char
    local rightsize=${#${(%):-%D %T %h>${promptdc}}}+2

    FILLBAR="\${(l.(($COLUMNS - ($leftsize + $rightsize +2)))..${HBAR}.)}"

    #RPROMPT=$(echo "%(?..$RED%?$FINISH)")
    PROMPT=$(echo "$_BLUE${promptdc}<$_CYAN%M$YELLOW${promptsp}$MAGENTA%n $_GREEN%/${gitprompt} $_YELLOW${(e)FILLBAR} ${smile} $_MAGENTA%D %T %h$_BLUE>${promptdc}$FINISH$_RED${promptpt}$FINISH")
  elif [[ $theme == "classic" ]]; then
    promptdc="✿"
    #promptpt="»"
    PROMPT="%{${fg_bold[blue]}%}${promptdc} %{${fg_bold[red]}%}%m${promptsp}%n %{${fg_bold[magenta]}%}:: %{${fg_bold[yellow]}%}%~%{${fg_bold[cyan]}%}$(git_prompt_info) ${smile} %{${fg_bold[blue]}%}${promptpt}%{${reset_color}%} "
  elif [[ $theme == "power" ]]; then
    PROMPT="%{%f%b%k%}$(build_prompt) "
    #RPROMPT='%{%F{yellow}%}[%*]'
    RPROMPT="%{%f%b%k%}$(build_rprompt) "
    #echo $(build_prompt)
    #echo $(build_rprompt)
    # TODO 继续完善
  elif [[ $theme == "minimal" ]]; then
    PROMPT="${smile} %{$fg_bold[yellow]%}%~%{$reset_color%}$(git_prompt_info) %{${fg_bold[magenta]}%}${promptpt}%{${reset_color}%} "
  elif [[ $theme == "compat" ]]; then
    promptok="*"
    promptko="*"
    promptdc="$"
    promptsp="@"
    promptpt="»"
    smile="%(?,$GREEN${promptok}%{$reset_color%},$RED${promptko}%{$reset_color%})"

    PROMPT="%{${fg_bold[blue]}%}${promptdc} %{${fg_bold[red]}%}%m${promptsp}%n %{${fg_bold[magenta]}%}:: %{${fg_bold[cyan]}%}%~%{${fg_bold[cyan]}%}$(git_prompt_info) ${smile} %{${fg_bold[blue]}%}${promptpt}%{${reset_color}%} "
    RPROMPT="%{${fg_bold[yellow]}%}< %w %D{%H:%M:%S} %! > %{${fg_bold[blue]}%}${promptdc}%{${reset_color}%}"

    #PROMPT='${smile} %{$fg_bold[yellow]%}%~%{$reset_color%}$(git_prompt_info) %{${fg_bold[magenta]}%}${promptpt}%{${reset_color}%} '
  else
    promptdc="✿"
    #promptpt="»"
    PROMPT="%{${fg_bold[blue]}%}${promptdc} %{${fg_bold[red]}%}%m${promptsp}%n %{${fg_bold[magenta]}%}:: %{${fg_bold[cyan]}%}%~%{${fg_bold[cyan]}%}$(git_prompt_info) ${smile} %{${fg_bold[blue]}%}${promptpt}%{${reset_color}%} "
    RPROMPT="%{${fg_bold[yellow]}%}< %w %D{%H:%M:%S} %! > %{${fg_bold[blue]}%}${promptdc}%{${reset_color}%}"
    #RPROMPT="%{${fg_bold[yellow]}%}< %w %T %! > %{${fg_bold[blue]}%}${promptdc}%{${reset_color}%}"
    # TODO 继续完善
  fi

  # 定义一个后台异步刷新的定时器函数
  _zsh_background_clock() {
    RPROMPT="$RPROMPT"
    # 核心黑魔法：通知 Zsh 核心异步重绘当前的提示符，不打断用户正在输入的文本
    zle && zle reset-prompt
    # 递归调度：让这个函数在 1 秒后再次执行，形成完美的无阻塞事件循环
    sched +1 _zsh_background_clock
  }

  # 启动无限事件循环刷新右侧提示符
  if [ -n "$RPROMPT" ]; then
    _zsh_background_clock
  fi

  # 在 Emacs终端 中使用 Zsh 的一些设置
  if [[ "$TERM" == "dumb" ]]; then
    setopt No_zle
    # 让提示符更紧凑，并确保 Emacs 的 dirtrack 能够正确解析路径
    PROMPT='%n@%m:%/ >>> '
  fi
}

########################################
# 通用配置
########################################
# 允许在交互模式中使用注释 例如：
# cmd #这是注释
setopt INTERACTIVE_COMMENTS

# 启用自动 cd，输入目录名回车进入目录
# 稍微有点混乱，不如 cd 补全实用
# setopt AUTO_CD

#禁用自动解析通配符
setopt no_nomatch

# 扩展路径
# /v/c/p/p => /var/cache/pacman/pkg
setopt complete_in_word

# 禁用 core dumps
limit coredumpsize 0

# Emacs风格 键绑定
bindkey -e
# 设置 [DEL]键 为向后删除
bindkey "\e[3~" delete-char

# 以下字符视为单词的一部分
WORDCHARS='*?_-[]~=&;!#$%^(){}<>'

# 终端开启256色支持
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
fi

# 标题栏、任务栏样式{{{
# case $TERM in (*xterm*|*rxvt*|(dt|k|E)term)
# preexec () { print -Pn "\e]0;%n@%M//%/\ $1\a" }
# ;;
# esac

# 快捷键自动sudo
sudo-command-line() {
[[ -z $BUFFER ]] && zle up-history
[[ $BUFFER != sudo\ * ]] && BUFFER="sudo $BUFFER"
zle end-of-line #光标移动到行末
}
zle -N sudo-command-line
# 定义快捷键为： [Esc] [Esc]
bindkey "\e\e" sudo-command-line

# 检查命令是否存在
checkcommand() {
  if type $1 &>/dev/null; then
    return 0
  else
    return 1
  fi
}

#显示 path-directories ，避免候选项唯一时直接选中
cdpath="/home"

# 默认编辑器
export EDITOR=vim

# 本地二进制路径
# export PATH=$PATH:$cdir/bin

#[Esc][h] man 当前命令时，显示简短说明
alias run-help >&/dev/null && unalias run-help
autoload run-help

#路径别名
#进入相应的路径时只要 cd ~xxx
hash -d HIST="$HISTDIR"

# def pacman-color completion as pacman
# compdef pacman-color=pacman
# }}}

# F1 计算器
arith-eval-echo() {
LBUFFER="${LBUFFER}echo \$(( "
RBUFFER=" ))$RBUFFER"
}
zle -N arith-eval-echo
bindkey "^[[11~" arith-eval-echo

# 命令未找到处理
command_not_found_handler () {      #if the command is not found, let bash show the message and advice(zsh could only show "command not found").
  runcnf=1 
  retval=127 
  [ ! -S /var/run/dbus/system_bus_socket ] && runcnf=0 
  [ ! -x /usr/libexec/packagekitd ] && runcnf=0 
  if [ $runcnf -eq 1 ]; then
    /usr/libexec/pk-command-not-found $@
    retval=$? 
  fi
  return 0                   #if return $retval, both the bash and zsh messages will be shown in the terminal, if return 0, only the bash massage will be shown.
}

# zmodload zsh/mathfunc
# autoload -U zsh-mime-setup
# zsh-mime-setup
# setopt EXTENDED_GLOB
# autoload -U promptinit
# promptinit
# prompt redhat

# setopt correctall
# autoload compinstall

########################################
# 自动补全配置
########################################
setopt AUTO_LIST
setopt AUTO_MENU
# 开启此选项，补全时会直接选中菜单项
# setopt MENU_COMPLETE

# 自动补全缓存
zstyle ':completion::complete:*' use-cache on
zstyle ':completion::complete:*' cache-path .zcache
zstyle ':completion:*:cd:*' ignore-parents parent pwd

# 自动补全选项
zstyle ':completion:*' verbose yes
zstyle ':completion:*' menu select
zstyle ':completion:*:*:default' force-list always
zstyle ':completion:*' select-prompt '%SSelect: lines: %L matches: %M [%p]'

zstyle ':completion:*:match:*' original only
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:predict:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate

# 路径补全
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'
zstyle ':completion::complete:*' '\\'


# 修正大小写
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'
# 错误校正   坑爹功能
# zstyle ':completion:*' completer _complete _match _approximate
# zstyle ':completion:*:match:*' original only
# zstyle ':completion:*:approximate:*' max-errors 1 numeric

# kill 命令补全
compdef pkill=killall
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:processes' command 'ps -au$USER'

# 补全类型提示分组
zstyle ':completion:*:matches' group 'yes'
zstyle ':completion:*' group-name ''
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'
zstyle ':completion:*:descriptions' format $'\e[01;33m -- %d --\e[0m'
zstyle ':completion:*:messages' format $'\e[01;35m -- %d --\e[0m'
zstyle ':completion:*:warnings' format $'\e[01;31m -- No Matches Found --\e[0m'
zstyle ':completion:*:corrections' format $'\e[01;32m -- %d (errors: %e) --\e[0m'

# cd ~ 补全顺序
zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'

# 自定义补全
# 补全 ping
zstyle ':completion:*:ping:*' hosts g.cn facebook.com

########################################
# 行编辑高亮模式
########################################
# Ctrl+@ 设置标记，标记和光标点之间为 region
zle_highlight=(region:bg=magenta #选中区域
special:bold # 特殊字符
isearch:underline) # 搜索时使用的关键字

user-complete(){
  case $BUFFER in
  "" ) # 空行填入 "cd "
    BUFFER="cd "
    zle end-of-line
    zle expand-or-complete
    ;;
  "cd " ) # TAB + 空格 替换为 "cd ~"
    BUFFER="cd ~"
    zle end-of-line
    zle expand-or-complete
    ;;
  " " )
    BUFFER="!?"
    zle end-of-line
    ;;
"cd --" ) # "cd --" 替换为 "cd +"
    BUFFER="cd +"
    zle end-of-line
    zle expand-or-complete
    ;;
  "cd +-" ) # "cd +-" 替换为 "cd -"
    BUFFER="cd -"
    zle end-of-line
    zle expand-or-complete
    ;;
  * )
    zle expand-or-complete
  ;;
  esac
}
zle -N user-complete
bindkey "\t" user-complete

########################################
# 历史记录配置
########################################
#历史纪录条目数量
export HISTSIZE=100000
#注销后保存的历史纪录条目数量
export SAVEHIST=100000
#历史纪录文件
export HISTFILE=~/.zhistory
#以附加的方式写入历史纪录
setopt INC_APPEND_HISTORY
#如果连续输入的命令相同，历史纪录中只保留一个
setopt HIST_IGNORE_DUPS
#为历史纪录中的命令添加时间戳
setopt EXTENDED_HISTORY

#启用 cd 命令的历史纪录，cd -[TAB]进入历史路径
setopt AUTO_PUSHD
#相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS

#在命令前添加空格，不将此命令添加到纪录文件中
setopt HIST_IGNORE_SPACE

#每个目录使用独立的历史纪录
#cd() {
#builtin cd "$@"                             # do actual cd
#fc -W                                       # write current history  file
#local HISTDIR="$HOME/.zsh_history$PWD"      # use nested folders for history
#if  [ ! -d "$HISTDIR" ] ; then          # create folder if needed
#mkdir -p "$HISTDIR"
#fi
#export HISTFILE="$HISTDIR/zhistory"     # set new history file
#touch $HISTFILE
#local ohistsize=$HISTSIZE
#HISTSIZE=0                              # Discard previous dir's history
#HISTSIZE=$ohistsize                     # Prepare for new dir's history
#fc -R                                       #read from current histfile
#}
#mkdir -p $HOME/.zsh_history$PWD
#export HISTFILE="$HOME/.zsh_history$PWD/zhistory"

#function allhistory { cat $(find $HOME/.zsh_history -name zhistory) }
#function convhistory {
#sort $1 | uniq |
#sed 's/^:\([ 0-9]*\):[0-9]*;\(.*\)/\1::::::\2/' |
#awk -F"::::::" '{ $1=strftime("%Y-%m-%d %T",$1) "|"; print }'
#}
#使用 histall 命令查看全部历史纪录
#function histall { convhistory =(allhistory) |
#sed '/^.\{20\} *cd/i\\' }
#使用 hist 查看当前目录历史纪录
#function hist { convhistory $HISTFILE }

#全部历史纪录 top50
#function top50 { allhistory | awk -F':[ 0-9]*:[0-9]*;' '{ $1="" ; print }' | sed 's/ /\n/g' | sed '/^$/d' | sort | uniq -c | sort -nr | head -n 50 }

#清空历史记录
#cat /dev/null > ${HOME}/.zhistory
#cat /dev/null > ${HOME}/.zsh_history

########################################
# 命令别名
########################################
if [ -f ~/.vimrc ];then
  alias vim='vim -u ~/.vimrc'
elif [ -f ~/.virc ];then
  alias vim='vim -u ~/.virc'
fi
alias vi='vim'

alias root='sudo -E zsh &> /dev/null'

if [ $(id -u) -ne 0 ] && type fping &>/dev/null && ! fping -h &>/dev/null 
then
  sudo chown root:root $(which fping)
  sudo chmod ug+s $(which fping)
fi
# type fping &>/dev/null && alias ping='fping -Ae'

# type pycp &>/dev/null && alias cp='pycp -g'
# type pymv &>/dev/null && alias mv='pymv -g'

# https://github.com/jarun/advcpmv
type advcp &>/dev/null && alias cp='advcp -gR'
type advmv &>/dev/null && alias mv='advmv -g'

# https://github.com/uutils/coreutils
type coreutils &>/dev/null && alias rcp='coreutils cp --progress'
type coreutils &>/dev/null && alias rmv='coreutils mv'

type trzsz &>/dev/null && alias ssh='trzsz --dragfile ssh'

type htop &>/dev/null && alias top='htop'

type btop &>/dev/null && alias top='btop'

type bat &>/dev/null && alias bat='bat -Pp'

type highlight &>/dev/null && highlight -h &>/dev/null && alias highlight='highlight -O xterm256 --force'
if [ -d $cdir/highlight ]; then
  alias highlight="highlight -O xterm256 --force -D $cdir/highlight"
fi
# ! highlight -h &> /dev/null && highlight.low -h &>/dev/null && alias highlight="highlight.low -O xterm256 --force -D $cdir/highlight --add-config-dir=$cdir/highlight"
# ! highlight /etc/profile &> /dev/null && alias highlight="highlight -O xterm256 --force -D $cdir/highlight"
# highlight -h &> /dev/null && alias cat='highlight'

alias ls='ls --color=auto'
type eza &>/dev/null && eza --help &>/dev/null && alias ls='eza --color=auto'
alias ll='ls -lh'
alias la='ls -alh'
alias lt='ls -alht'
alias lz='ls -alhS'
alias l='ls -lah --group-directories-first'
alias cl='clear'
alias md='mkdir -p'
alias pt='ps -alfx --sort=%mem,%cpu'
#alias pt='ps -aelfx --sort=%mem,%cpu'
alias sss='ss -asntup'
alias open='xdg-open'
alias grep='grep --color=auto'
alias svi='sudo -E vim'
alias glog='git log --oneline --graph --decorate'
alias glg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --date=relative'
alias igo='gomacro'
alias py='python3'
# journalctl alias
alias j='journalctl'
alias jf='journalctl -f'
alias ju='journalctl -u'
alias jc='journalctl --no-pager'
alias jcs='journalctl --no-pager --since'
alias jerr='journalctl -p err -b'
# docker alias
alias dkc='docker-compose'
alias dps='docker container ls'
alias drm='docker rm'
alias drmi='docker rmi'
alias dimg='docker image ls'
alias dnet='docker network ls'
alias dvol='docker volume ls'
alias drun='docker run'
alias dexe='docker exec'
alias dtmp='docker run -it --rm'
alias dcmd='docker inspect --format="{{json .Config.Cmd}}"'
alias denv='docker inspect --format="{{json .Config.Env}}"'
alias dmnt='docker inspect --format="{{json .Mounts}}"'
alias daddr='docker inspect --format="{{json .NetworkSettings.Networks}}"'
alias dport='docker inspect --format="{{json .NetworkSettings.Ports}}"'
alias dpull='docker pull'
alias dpush='docker push'

#历史命令 top10
alias hist10='print -l ${(o)history%% *} | uniq -c | sort -nr | head -n 10'

#alias jobs='jobs -l'
#alias ping='fping -e'
#alias sudo='sudo env PATH=$PATH'
#alias history='history -fi'

# rsync alias
#alias cp='rsync -avP --progress'
#alias mv='rsync -avP --progress --remove-source-files'
#alias rs='rsync -ahr --info=progress2 --no-i-r'
#alias rcp="rs"
#rmv() {
#  rsync -ahr --info=progress2 --no-i-r --remove-source-files "$@" && rm -rf "${@:1:${#}-1}"
#}

# vim:filetype=zsh foldmethod=marker autoindent expandtab shiftwidth=4


########################################
# 命令高亮
########################################
setopt extended_glob
TOKENS_FOLLOWED_BY_COMMANDS=('|' '||' ';' '&' '&&' 'sudo' 'do' 'time' 'strace')

recolor-cmd() {
  region_highlight=()
  colorize=true
  start_pos=0
  for arg in ${(z)BUFFER}; do
    ((start_pos+=${#BUFFER[$start_pos+1,-1]}-${#${BUFFER[$start_pos+1,-1]## #}}))
    ((end_pos=$start_pos+${#arg}))
    if $colorize; then
      colorize=false
      res=$(LC_ALL=C builtin type $arg 2>/dev/null)
      case $res in
        *'reserved word'*)   style="fg=magenta,bold";;
        *'alias for'*)       style="fg=cyan,bold";;
        *'shell builtin'*)   style="fg=yellow,bold";;
        *'shell function'*)  style='fg=green,bold';;
        *"$arg is"*)        [[ $arg = 'sudo' ]] && style="fg=red,bold" || style="fg=blue,bold";;
        *)                  style="fg=cyan,bold";;
      esac
      region_highlight+=("$start_pos $end_pos $style")
    fi
    [[ ${${TOKENS_FOLLOWED_BY_COMMANDS[(r)${arg//|/\|}]}:+yes} = 'yes' ]] && colorize=true
    start_pos=$end_pos
  done
}

#高亮命令和自动补全命令的插件均注册了self-insert和backward-delete-char事件，一次后注册的会覆盖前注册的，所以直接在后注册的函数中调用命令高亮的函数即可
check-cmd-self-insert() { zle .self-insert && recolor-cmd }
check-cmd-backward-delete-char() { zle .backward-delete-char && recolor-cmd }

zle -N self-insert check-cmd-self-insert
zle -N backward-delete-char check-cmd-backward-delete-char

#彩色补全菜单
# eval $(dircolors -b)

# ls命令结果高亮（三种方式效果相同）

# 方式１(不推荐)
#cp $(dirname $0)/DIR_COLORS /etc/DIR_COLORS
#cp $(dirname $0)/DIR_COLORS /etc/DIR_COLORS.256color

# 方式2(依赖外部文件)
if [[ -f "$cdir/DIR_COLORS" ]]; then
  eval $(dircolors -b "$cdir/DIR_COLORS")
else
  eval $(dircolors -b)
fi

export ZLSCOLORS="${LS_COLORS}"
zmodload zsh/complist
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

#lf目录图标
if type lf &>/dev/null; then
  LF_ICONS=$(sed $cdir/DIR_ICONS -e '/^[ \t]*#/d' -e '/^[ \t]*$/d' -e 's/[ \t]\+/=/g' -e 's/$/ /')
  LF_ICONS=${LF_ICONS//$'\n'/:}
  export LF_ICONS
fi

#强制启用颜色高亮
force_color_prompt=yes

#高亮man帮助文档，zsh中启用colored-man可达到一样效果
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# syntax color definition
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
#ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

typeset -A ZSH_HIGHLIGHT_STYLES

# ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
# ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'

ZSH_HIGHLIGHT_STYLES[default]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=009
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
ZSH_HIGHLIGHT_STYLES[alias]=fg=033,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=032,bold
ZSH_HIGHLIGHT_STYLES[function]=fg=031,bold
ZSH_HIGHLIGHT_STYLES[command]=fg=036,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=034,bold
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=034,bold
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=071,bold
ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=fg=211,underline
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=125,underline
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=fg=223,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=158,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=214,bold,underline
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=180,bold
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=181,bold
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=093,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=062,bold
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063,bold
ZSH_HIGHLIGHT_STYLES[double-quoted-argument_unclosed]=fg=064,bold
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=131,bold
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=011,bold
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=132,bold
ZSH_HIGHLIGHT_STYLES[comment]=fg=101,bold
ZSH_HIGHLIGHT_STYLES[redirection]=fg=125,bold
ZSH_HIGHLIGHT_STYLES[assign]=fg=magenta,bold
# ZSH_HIGHLIGHT_STYLES[assign]=none

ZSH_HIGHLIGHT_REGEXP+=('\bsudo\b' fg=123,bold)

########################################
# vi模式
########################################
# Updates editor information when the keymap changes.
zle-keymap-select() {
  case $KEYMAP in
    vicmd)      echo -ne "\e[2m" ;; # 方塊光標 (或 \e[2q)
    main|viins) echo -ne "\e[5m" ;; # 豎線光標 (或 \e[5q)
  esac
  zle reset-prompt
  zle -R
}

# Ensure that the prompt is redrawn when the terminal size changes.
TRAPWINCH() {
  zle &&  zle -R
}

zle -N zle-keymap-select
zle -N edit-command-line

bindkey -v

# allow v to edit the command line (standard behaviour)
autoload -Uz edit-command-line
bindkey -M vicmd 'v' edit-command-line

# allow ctrl-p, ctrl-n for navigate history (standard behaviour)
bindkey '^P' up-history
bindkey '^N' down-history

# allow ctrl-h, ctrl-w, ctrl-? for char and word deletion (standard behaviour)
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word

# allow ctrl-r to perform backward search in history
bindkey '^r' history-incremental-search-backward

# allow ctrl-a and ctrl-e to move to beginning/end of line
bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# 将回车绑定到其他键上(如按a代表回车)
# bindkey 'a' accept-line

# if mode indicator wasn't setup by theme, define default
if [[ "$MODE_INDICATOR" == "" ]]; then
  MODE_INDICATOR="%{$fg_bold[red]%}<%{$fg[red]%}<<%{$reset_color%}"
fi

vi_mode_prompt_info() {
  echo "${${KEYMAP/vicmd/$MODE_INDICATOR}/(main|viins)/}"
}

# define right prompt, if it wasn't defined by a theme
if [[ "$RPS1" == "" && "$RPROMPT" == "" ]]; then
  RPS1='$(vi_mode_prompt_info)'
fi

#########################################################################
# 额外功能函数
#########################################################################

# 加载额外组件
autoload -U compinit && compinit
autoload -U promptinit && promptinit
autoload -U add-zsh-hook
autoload -U zcalc

#########################################################################
# 计算器
#########################################################################
# 计算器
function calc() {
  zcalc -e "$*"
}

# 计算器
function c() { 
  local in="$(echo " $*" | sed -e 's/\[/(/g' | sed -e 's/\]/)/g')";
  awk "BEGIN {printf $in}"
}

#########################################################################
# 数字时钟
#########################################################################
function clock() {
  while true; do
    echo -ne "\r\033[1;33m🕒 $(date +%H:%M:%S)\033[0m"
    sleep 1
  done
}

#########################################################################
# 时间戳转换
#########################################################################
function dts() {
  local input="$1"

  if [[ -z "$input" ]]; then
    if (( $+commands[gdate] )); then
      gdate +"%Y-%m-%d %T (%s)"
    elif date --version &> /dev/null; then
      date +"%Y-%m-%d %T (%s)"
    else
      date +"%Y-%m-%d %T (%s)"
    fi
    return 0
  fi

  if [[ "$input" =~ ^[0-9]+$ ]]; then
    if (( $+commands[gdate] )); then
      gdate -d @"$input" +"%Y-%m-%d %T"
    elif date --version &> /dev/null; then
      date -d @"$input" +"%Y-%m-%d %T"
    else
      date -r "$input" +"%Y-%m-%d %T"
    fi
    return 0
  fi

  if (( $+commands[gdate] )); then
    gdate -d "$input" +"%s" 2>/dev/null
  elif date --version &> /dev/null; then
    date -d "$input" +"%s" 2>/dev/null
  else
    date -j -f "%Y-%m-%d %H:%M:%S" "$input" +"%s" &>/dev/null || \
    date -j -f "%Y-%m-%d" "$input" +"%s" &>/dev/null || \
    date -j -f "%T" "$input" +"%s" &>/dev/null || \
    date -j "$input" +"%s" 2>/dev/null
  fi

  if [ $? -ne 0 ]; then
    echo "Error: Cant parse '$input' as a valid timestamp or date-time string." >&2
    return 1
  fi
}

#########################################################################
# 终端便签
#########################################################################
function memo() {
  if [[ -z "$1" ]]; then
    cat ~/.termemos
  else
    echo "$(date '+%Y-%m-%d %H:%M'): $*" >> ~/.termemos
    echo "✅ Notes Recorded"
  fi
}

#########################################################################
# 大小写转换
#########################################################################
# 转大写
function upper() {
  echo "$*" | tr '[:lower:]' '[:upper:]'
}

# 转小写
function lower() {
  echo "$*" | tr '[:upper:]' '[:lower:]'
}

# 首字母大写
function capitalize() {
  echo "$*" | tr '[:upper:]' '[:lower:]' | sed 's/^\w\|\s\w/\U&/g'
}

#########################################################################
# 颜色打印
#########################################################################
# 数字格式化
format_number() {
  local c=$'\u254F'
  if [ $1 -lt 10 ]; then
    printf "$c %d" $1
  else
    printf "$c%02d" $(($1%100))
  fi
}

somecolors() {
  local from="$1"
  local to="$2"
  local prefix="$3"
  local line

  for line in \
      "\e[2mdim      " \
      "normal   " \
      "\e[1mbold     " \
      "\e[1;2mbold+dim "; do
    echo -ne "$line"
    i=$from
    while [ $i -le $to ]; do
      echo -ne "\e[$prefix${i}m"
      format_number $i
      i=$((i+1))
    done
    echo $'\e[0m\e[K'
  done
}

allcolors() {
  echo "-- 8 standard colors: SGR ${1}0..${1}7 --"
  somecolors 0 7 "$1"
  echo
  echo "-- 8 bright colors: SGR ${2}0..${2}7 --"
  somecolors 0 7 "$2"
  echo
  echo "-- 256 colors: SGR ${1}8;5;0..255 --"
  somecolors 0 15 "${1}8;5;"
  echo
  somecolors  16  51 "${1}8;5;"
  somecolors  52  87 "${1}8;5;"
  somecolors  88 123 "${1}8;5;"
  somecolors 124 159 "${1}8;5;"
  somecolors 160 195 "${1}8;5;"
  somecolors 196 231 "${1}8;5;"
  echo
  somecolors 232 255 "${1}8;5;"
}

# 打印所有颜色
function printcolor() {
  allcolors 3 9
  echo
  allcolors 4 10
}

#########################################################################
# 表格展示
#########################################################################
function table() {
  local sep="${1:-:}"
  if command -v column &> /dev/null; then
    sed "s/${sep}/│/g" | column -t -s '│' | sed "s/^/  /"
  else
    cat
  fi
}

#########################################################################
# 简易tree
#########################################################################
if ! command -v tree &> /dev/null; then
  function tree() {
    local target_dir="${1:-.}"

    find "$target_dir" -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
  }
fi

#########################################################################
# 打印颜色
#########################################################################
function color() {
  echo -e "\e[1m--- echo -e \"\\\\e[颜色模式;颜色码m 你的文字 \\\\e[0m\" ---\e[0m"
  echo -ne "\e[32;47m 8位模式: 绿字 + 白底 \e[0m\t\t"
  echo 'echo -e "\\e[32;47m 8位模式：绿字 + 白底 \\e[0m"'
  echo -ne "\e[1;31;46m 16位模式：高亮红字 + 青底 \e[0m\t"
  echo 'echo -e "\\e[1;31;46m 16位模式：高亮红字 + 青底 \\e[0m"'
  echo -ne "\e[38;5;208;48;5;154m 256位模式：橙字 + 浅绿底 \e[0m\t"
  echo 'echo -e "\\e[38;5;208;48;5;154m 256位模式：橙字 + 浅绿底 \\e[0m"'

  echo -e "\n\e[1m--- Terminal Color Matrix (256 Colors) ---\e[0m"
  for i in {0..255}; do
    printf "\e[48;5;%sm  %3s  \e[0m" "$i" "$i"
    # 布局逻辑：前16个系统色分两行，之后每12个颜色换行
    if (( i < 16 )); then
      [[ $(( (i + 1) % 8 )) -eq 0 ]] && echo
    else
      [[ $(( (i - 15) % 12 )) -eq 0 ]] && echo
    fi
  done
}

#########################################################################
# 生成uuid
#########################################################################
function uuid() {
  if [[ -n "$1" ]]; then
    local seed="$1"
    
    if command -v md5sum &> /dev/null; then
      local hash=$(echo -n "$seed" | md5sum | awk '{print $1}')
    elif command -v md5 &> /dev/null; then
      local hash=$(echo -n "$seed" | md5 | awk '{print $NF}')
    else
      echo "error: md5sum or md5 command is required" >&2
      return 1
    fi

    local pseudo_uuid="${hash:0:8}-${hash:8:4}-${hash:12:4}-${hash:16:4}-${hash:20:12}"
    echo "$pseudo_uuid"
  else
    if command -v uuidgen &> /dev/null; then
      uuidgen
    elif [[ -r /proc/sys/kernel/random/uuid ]]; then
      cat /proc/sys/kernel/random/uuid
    else
      echo "error: uuidgen command or /proc/sys/kernel/random/uuid file not found" >&2
      return 1
    fi
  fi
}

#########################################################################
# 端口开放
#########################################################################
function port() {
  local action="show"
  if [[ -n "$1" ]]; then
    local action=$1
    shift
  fi

  if [[ -z "$action" || "$action" == "-h" || "$action" == "--help" ]]; then
    echo "Usage: port [on|off|ls|open|close|list|show] [port1 port2/protocol ...]"
    return 0
  fi

  if [[ "$action" == "ls" || "$action" == "list" || "$action" == "show" ]]; then
    local zone result=()
        
    if type firewall-cmd >/dev/null 2>&1; then
      zone=$(sudo firewall-cmd --get-default-zone)
      local ports=$(sudo firewall-cmd --zone="$zone" --list-ports)
      local services=$(sudo firewall-cmd --zone="$zone" --list-services)

      for p in $ports; do
        result+=("$p")
      done

      for s in $services; do
        local port_info=$(getent services "$s" | awk '{print $2}' | head -n 1)
        [[ -n "$port_info" ]] && result+=("$port_info/$s") || result+=("$s")
      done
    else
      zone="public"
      local it_ports=$(sudo iptables -L INPUT -n | grep 'ACCEPT' | grep -E 'dpt:[0-9]+|dpts:[0-9]+:[0-9]+' | awk -F'dpt:|dpts:' '{print $2}' | awk '{print $1}')
            
      while IFS= read -r p; do
        [[ -z "$p" ]] && continue
        local p_num=${p%%:*}
        local s_name=$(getent services "$p_num"/tcp | awk '{print $1}')
        [[ -n "$s_name" ]] && result+=("$p/$s_name") || result+=("$p")
      done <<< "$it_ports"
    fi

    echo "$zone: ${result[*]}"
    return 0
  fi

  if [[ "$action" != "on" && "$action" != "off" && "$action" != "open" && "$action" != "close" ]]; then
    echo "Error: Unknown action $action. Use 'on', 'off', 'open' or 'close'." >&2
    return 1
  fi
  if [[ "$action" == "on" ]]; then
    action="open"
  fi
  if [[ "$action" == "off" ]]; then
    action="close"
  fi

  if [[ $# -eq 0 ]]; then
    echo "Error: No ports specified." >&2
    return 1
  fi

  for item in "$@"; do
    local port proto
    if [[ "$item" == */* ]]; then
      port=${item%/*}
      proto=${item#*/}
    else
      port=$item
      proto="tcp"
    fi

    if type firewall-cmd >/dev/null 2>&1; then
      local fw_opt="--add-port"
      [[ "$action" == "close" ]] && fw_opt="--remove-port"

      if [[ "$proto" == "all" ]]; then
        sudo firewall-cmd --zone=public "$fw_opt"="$port/tcp" --permanent >/dev/null
        sudo firewall-cmd --zone=public "$fw_opt"="$port/udp" --permanent >/dev/null
      else
        sudo firewall-cmd --zone=public "$fw_opt"="$port/$proto" --permanent >/dev/null
      fi
      sudo firewall-cmd --reload >/dev/null
      echo "Firewalld: $action port $port/$proto successfully"
    else
      local ip_opt="-I" # Insert rule on open
      [[ "$action" == "close" ]] && ip_opt="-D" # Delete rule cleanly on close

      if [[ "$proto" == "all" ]]; then
        sudo /sbin/iptables "$ip_opt" INPUT -p tcp --dport "$port" -j ACCEPT
        sudo /sbin/iptables "$ip_opt" INPUT -p udp --dport "$port" -j ACCEPT
      else
        sudo /sbin/iptables "$ip_opt" INPUT -p "$proto" --dport "$port" -j ACCEPT
      fi
      echo "Iptables: $action port $port/$proto successfully"
    fi
  done
}

#########################################################################
# 代理切换
#########################################################################
function px() {
  local default_port="7890"
  local proxy_host="127.0.0.1"

  if [ "$1" = "off" ]; then
    unset http_proxy https_proxy all_proxy
    echo "❀ Proxy Disabled"
    return 0
  fi

  if [ "$1" = "show" ]; then
    if [ -z "$http_proxy" ]; then
      echo "🛈️ Current Proxy: [NONE]"
    else
      echo "🛈 Current Proxy: $http_proxy"
    fi
    return 0
  fi

  local port=$default_port
  if [[ "$1" =~ ^[0-9]+$ ]]; then
    port=$1
  elif [ -n "$1" ] && [ "$1" != "on" ]; then
    echo "Usage: px [port_number|on|off|show]"
    return 1
  fi

  export http_proxy="http://${proxy_host}:${port}"
  export https_proxy="http://${proxy_host}:${port}"
  export all_proxy="socks5://${proxy_host}:${port}"
  
  echo "✿ Proxy Enabled <${proxy_host}:${port}>"
}

#########################################################################
# 命令监控
#########################################################################
function wa() {
  local interval=1
  if [[ "$1" == "-n" ]]; then
    interval=$2
    shift 2
  fi

  local cmd="$*"
  local last_out=""
  local line_count=0

  # 退出时恢复光标并换行
  trap 'print -rn $"\e[?25h"; echo ""; return' INT
  # 隐藏光标，避免闪烁
  print -rn $'\e[?25l'

  while true; do
    local current_out=$(eval "$cmd")
    
    if (( line_count > 0 )); then
      print -n "\e[${line_count}A"
    fi

    local header="Every ${interval}s: $cmd  $(date +%H:%M:%S)"
    if type wdiff 2>&1 >/dev/null; then
      local separator="------------------------------------------"
    else
      local separator="-----install wdiff for better display-----"
    fi
    
    local body=""
    if [[ -z "$last_out" ]]; then
      body="$current_out"
    else
      if type wdiff 2>&1 >/dev/null; then
        body=$(wdiff -n -w $'\e[30;43m' -x $'\e[0m' <(echo "$last_out") <(echo "$current_out"))
      else
        body=$(diff --color=always -u -L "old" -L "new" <(echo "$last_out") <(echo "$current_out") | grep -vE '^(\+\+\+|---|@@|ID )' | sed 's/^+//; s/^-/ /')
      fi
    fi

    local full_display="${header}\n${separator}\n${body}"
    print -rn $'\e[J' # 清除下方内容
    print "$full_display"

    line_count=$(echo "$full_display" | wc -l)
    
    last_out="$current_out"
    sleep $interval
  done
}

#########################################################################
# 证书检测
#########################################################################
function cert() {
  local target="$1"

  if [ -z "$target" ]; then
    echo "Usage: cert <file_path | domain_or_url>"
    return 1
  fi

  if [[ "$target" =~ ^https?:// ]] || [[ "$target" =~ \.[a-z]{2,} && ! -f "$target" ]]; then
    echo "--- [Remote SSL Certificate: $target] ---"
        
    local clean_host=$(echo "$target" | sed -E 's|https?://||; s|/.*||')
    local host=$(echo "$clean_host" | cut -d: -f1)
    local port=$(echo "$clean_host" | grep ":" | cut -d: -f2)
    port=${port:-443}

    timeout 5 openssl s_client -servername "$host" -connect "$host:$port" </dev/null 2>/dev/null | \
    openssl x509 -noout -text

  elif [ -f "$target" ]; then
    echo "--- [Local Certificate File: $target] ---"
    openssl x509 -in "$target" -noout -text

  else
    echo "Error: '$target' is neither a valid file nor a reachable URL."
    return 1
  fi
}

#########################################################################
# 本机IP
#########################################################################
function myip() {
  local exclude_re="docker|veth|lo|br-|flannel|cni0|cali|tunl0"

  if command -v ip >/dev/null 2>&1; then
    local default_interface=$(ip route | grep '^default' | awk '{print $5}' | head -n1)
        
    if [[ -n "$default_interface" && ! "$default_interface" =~ $exclude_re ]]; then
      ip -4 addr show dev "$default_interface" | awk '/inet / {print $2}' | cut -d/ -f1 | head -n1
      return
    else
      ip -o -4 addr show scope global | grep -vE "$exclude_re" | awk '{print $4}' | cut -d/ -f1 | head -n1
      return
    fi
  fi

  if command -v ifconfig >/dev/null 2>&1; then
    ifconfig | awk -v exclude="$exclude_re" '
      /^[a-z0-9]/ { interface=$1 }
      /inet / { 
        if (interface !~ exclude && $2 !~ /127.0.0.1/) {
          if ($2 ~ /addr:/) { split($2, a, ":"); print a[2] }
          else { print $2 }
        }
      }
      ' | head -n1
    return
  fi

  if command -v hostname >/dev/null 2>&1; then
    hostname -I 2>/dev/null | tr ' ' '\n' | grep -vE '^172\.17\.|^127\.' | head -n1
    return
  fi

  echo "Error: Unable to determine a valid host IP." >&2
  return 1
}

#########################################################################
# 磁盘占用
#########################################################################
function ds() {
  local d=""
  [[ "$1" == "-a" ]] && d="D" && shift

  {
    du -sh "${1:-.}"
    du -sh "${1:-.}"/*(N$d)
  } 2>/dev/null | sort -rh
}

#########################################################################
# 进程信息
#########################################################################
function proc(){
  verbose=false
  if [ $# -eq 0 ]; then
    echo "usage: $0 [-v] port"
    return 1
  fi
  if [ $1 = "-v" ]; then
    verbose=true
    shift
  fi
  if echo "$1" | \grep -E '^:[0-9]+$' > /dev/null; then
    tpids=$(sudo netstat -tulnp 2>/dev/null | \grep "$1\>" | awk '{print $7}' | cut -d'/' -f1)
  elif echo "$1" | \grep -E '^[0-9]+$' > /dev/null; then
    tpids=$(sudo netstat -tulnp 2>/dev/null | \grep ":$1\>" | awk '{print $7}' | cut -d'/' -f1)
    if [ -d "/proc/$kwd" ]; then
      tpids="${tpids}"$'\n'"$1"
    fi
  else
    tpids=$(ps -ef|\grep -E "$1" | \grep -v grep | \grep -v $0 | awk '{print $2}')
  fi
  pids=($(echo "$tpids" | tr '\n' ' '))
  for pid in ${pids[@]}; do
    # puser=${pps%~*}
    # pid=${pps#*~}
    puser=$(ps -p $pid -o user=)
    pusage=$(ps -eo pid,pcpu,pmem | awk '$1=="'$pid'" {print $2"/"$3}')
    if type netstat 2>&1 >/dev/null; then
      port=$(sudo netstat -tunlp 2> /dev/null | \grep " $pid/" | \grep LISTEN | \grep -E "tcp|udp" | awk '{print $4}')
    else
      port=$(sudo ss -tunlp 2> /dev/null | \grep "=$pid," | \grep LISTEN | \grep -E "tcp|udp" | awk '{print $5}')
    fi
    ports=$(echo "$port" | tr '\n' ' ')
    etime=$(ps -p $pid -o etime= | awk '$1=$1')
    cwd=$(sudo ls -l /proc/$pid/cwd 2> /dev/null | awk '{print $NF}')
    bin=$(sudo readlink -f /proc/$pid/exe 2> /dev/null)
    exe=$(ps -p $pid -o cmd=|awk '{print $1}')
    exe=${exe##*/}
    # bin=$exe
    pkg=""
    if [ -f "$bin" ]; then
      md5=$(md5sum $bin 2> /dev/null | awk '{print $1}')
    fi
    isjava=false
    if echo $exe | \grep -qE "java$"; then
      tmp=$(ps -p $pid -o cmd=|awk '{for(i=1;i<=NF;i++) if ($i ~ /\.jar/) print $i}'|\grep -v javaagent)
      if [ -n "$tmp" ]; then
        isjava=true
        pkg=${tmp##*/}
        if [ -f "$cwd/$pkg" ]; then
          md5=$(md5sum $cwd/$pkg 2> /dev/null | awk '{print $1}')
        fi
      fi
    fi
    echo ">>> $exe $pid($puser $pusage $etime $md5): $pkg <$cwd> [$ports]"
    if [ $verbose = true ]; then
      ps -fp $pid -o 'user,pid,ppid,stat,etime,time,tty,pcpu,pmem,rsz,vsz,start,cmd'
      echo ""
      echo "进程名称: $exe $pkg"
      echo "进程ID: $pid (父ID: $(ps -p $pid -o ppid= | awk '$1=$1'))"
      echo "打开文件数: $(lsof -p $pid 2>/dev/null | wc -l)/$(ulimit -n)"
      echo "打开线程数: $(ps -Hhup $pid | wc -l)/$(ulimit -u)"
      echo "网络连接数: $(sudo netstat -anp 2>/dev/null | sed 's/: /:/g' | \grep " $pid/" | awk '/^tcp/ {++S[$((NF-1))]} END {  for(a in S) print a, S[a]}' | tr '\n' '|' | sed 's/|$//')"
      echo "运行用户: $puser"
      echo "运行程序: $bin $pkg"
      echo "运行路径: $cwd"
      echo "程序MD5: $md5"
      echo "监听端口: $ports"
      echo "CPU使用率: $(ps -p $pid -o pcpu=)%"
      echo "内存使用率: $(ps -p $pid -o pmem=)%"
      echo "内存占用: $(ps -p $pid -o rsz=) rsz | $(ps -p $pid -o vsz=) vsz"
      echo "启动时间: $(ps -p $pid -o start= | awk '$1=$1')"
      echo "运行时长: $etime"
      echo "CPU时间片: $(ps -p $pid -o time=)"
      echo "进程状态: $(ps -p $pid -o stat=)"
      echo "运行命令: $(ps -p $pid -o cmd=)"
    fi
  done
}

#########################################################################
# 资源占用
#########################################################################
function uz() {
  local target="$1"

  if [[ -z "$target" ]]; then
    echo "用法: whouse <路径 | 端口 | IP/域名 | 'deleted'>"
    return 1
  fi

  # 场景 1: 扫描“幽灵文件”（文件已删除但空间未释放）
  if [[ "$target" == "deleted" ]]; then
    echo "🔍 正在扫描已删除但未释放的文件..."
    local del_files=$(lsof +L1 2>/dev/null)
    if [[ -n "$del_files" ]]; then
      echo "$del_files"
    else
      echo "✅ 未发现此类文件"
    fi

  # 场景 2: 判断是否为纯数字 (端口号)
  elif [[ "$target" =~ ^[0-9]+$ ]]; then
    echo "🔍 正在查询占用端口 [$target] 的进程..."
    # -i :端口 匹配所有相关连接
    # -sTCP:LISTEN 仅过滤处于监听状态的 TCP 连接
    local result=$(lsof -nP -iTCP:"$target" -sTCP:LISTEN 2>/dev/null)
    
    # 如果 TCP 没搜到，再尝试搜 UDP (UDP 没有 LISTEN 状态，直接搜端口)
    if [[ -z "$result" ]]; then
        result=$(lsof -nP -iUDP:"$target" 2>/dev/null)
    fi

    [[ -n "$result" ]] && echo "$result" || echo "❌ 端口 $target 未被占用"

  # 场景 3: 判断是否为网络目标 (IP 地址或域名)
  elif [[ "$target" =~ ^[a-zA-Z0-9.-]+\.[a-z]{2,}$ ]] || [[ "$target" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
    echo "🔍 正在查询与 [$target] 建立连接的进程..."
    local result=$(lsof -i @"$target" 2>/dev/null)
    [[ -n "$result" ]] && echo "$result" || echo "❌ 没有进程连接到 $target"

  # 场景 4: 判断是否为路径 (文件、目录或挂载点)
  elif [[ -e "$target" ]]; then
    # 如果是挂载点，尝试找到所有访问该分区的进程
    if mount | grep -q "on $target "; then
      echo "🔍 正在查询占用挂载点 [$target] 的进程..."
      local result=$(lsof -f -- "$target" 2>/dev/null)
    elif [[ -d "$target" ]]; then
      echo "🔍 正在查询占用目录 [$target] 的进程..."
      local result=$(lsof +D "$target" 2>/dev/null)
    else
      echo "🔍 正在查询占用文件 [$target] 的进程..."
      local result=$(lsof "$target" 2>/dev/null)
    fi
    [[ -n "$result" ]] && echo "$result" || echo "❌ $target 未被占用"

  else
    echo "⚠️ 识别失败: 无法判断 $target 的类型"
    return 2
  fi
}

#########################################################################
# 容器信息
#########################################################################
function di() {
  local container="$1"
  if [[ -z "$container" ]]; then
    echo "用法: di <容器ID 或 容器名称>"
    return 1
  fi

  # 检查容器是否存在
  if ! docker ps -a --format '{{.Names}}' | grep -q "^${container}$" && ! docker ps -a -q | grep -q "^${container}"; then
    echo "❌ 错误: 容器 $container 不存在"
    return 1
  fi

  docker inspect "$container" --format '
容器名称:  {{.Name}}
镜像名称:  {{.Config.Image}}
容器状态:  {{.State.Status}}
资源占用:  {{.CPUPerc}}\t{{.MemUsage}}\t{{.NetIO}}\t{{.BlockIO}}
交互终端:  {{.Config.Tty}} / {{.Config.OpenStdin}}
入口命令:  {{json .Config.Entrypoint}} {{json .Config.Cmd}}
工作目录:  {{.Config.WorkingDir}}
网络模式:  {{.HostConfig.NetworkMode}}
网络地址:  {{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}
端口映射:
{{range $p, $conf := .NetworkSettings.Ports}}{{range $conf}}  - {{.HostIp}}:{{.HostPort}} -> {{$p}}
{{else}}  - (仅容器内监听) -> {{$p}}
{{end}}{{end}}
挂载配置:
{{range .Mounts}}  - {{.Source}} -> {{.Destination}} ({{.Mode}})
{{end}}
环境变量:
{{range .Config.Env}}  - {{.}}
{{end}}'
}

#########################################################################
# 批量ping主机
#########################################################################
function pping() {
  trap "exit 1" SIGINT SIGQUIT

  for target in "$@"; do
    if [[ "$target" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}-[0-9]{1,3}$ ]]; then
      ipd=${target%.*}
      ipr=${target##*.}

      ipstart=${ipr%-*}
      ipend=${ipr##*-}
    elif [[ "$target" =~ "[0-9.]+|[a-zA-Z]" ]]; then
      ipd="$target"
      ipstart=1
      ipend=1

    else
      echo -e "\e[1;33m Warning: Skipped invalid target: $target \e[0m"
      continue
    fi

    for ((i = $ipstart; i <= $ipend; i++)); do
      if [ $ipstart -eq 1 ] && [ $ipend -eq 1 ]; then
        cip="$target"
      else
        cip="$ipd.$i"
      fi

      if [[ "$cip" =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
        if [ ${cip##*.} -le 9 ]; then
          sip="$cip   "
        elif [ ${cip##*.} -le 99 ]; then
          sip="$cip  "
        else
          sip="$cip "
        fi
      else
        sip="$cip"
      fi
            
      if ping -c 1 -w 1 "$cip" &>/dev/null; then
        echo -e "\e[1;32m $sip is up \e[0m"
      else
        echo -e "\e[1;31m $sip is down \e[0m"
      fi
    done
  done
}

#########################################################################
# 自动免密登录
#########################################################################
function sss(){
	if [ ! -f ~/.ssh/id_rsa ]; then
		\ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa -q
  fi
	\ssh-copy-id $* 2>/dev/null
	\ssh $*
}

#########################################################################
# 端口敲门并登录
#########################################################################
function ssk() {
	local host="${1#*@}" ports=(${@[2,-1]:-1111 2222 3333})
  echo "Knocking $host: $ports"
  for p in $ports; do (echo >/dev/tcp/$host/$p) >/dev/null 2>&1; done
  sleep 1 && \ssh "$1"
}

#########################################################################
# 临时别名
#########################################################################
function als() {
  local last_cmd=$(fc -ln -1 -1)

  last_cmd="${last_cmd#"${last_cmd%%[![:space:]]*}"}"
  last_cmd="${last_cmd%"${last_cmd##*[![:space:]]}"}"

  local alias_name="${1:-L}"
  alias "$alias_name"="$last_cmd"

  echo "✅ Temporary Aliased: $alias_name -> $last_cmd"
}

#########################################################################
# 高亮指定关键字 (cat xx.txt | hl red kwd)
#########################################################################
function hl() {
	declare -A fg_color_map
	fg_color_map[black]=30
	fg_color_map[red]=31
	fg_color_map[green]=32
	fg_color_map[yellow]=33
	fg_color_map[blue]=34
	fg_color_map[magenta]=35
	fg_color_map[cyan]=36

  if [[ $# -lt 2 ]]; then
    cat
    return 0
  fi

  local clname="$1"
  local pattern="$2"
  shift 2 # 彈出前兩個參數

  pattern="${pattern//,/|}"

	fg_c=$(echo -e "\e[1;${fg_color_map[$clname]}m")
	c_rs=$'\e[0m'
	\sed -uE s"/$pattern/$fg_c\0$c_rs/g" | hl "$@"
}

#########################################################################
# 高亮输出
#########################################################################
function h() {
  if [ ! -t 1 ]; then
    \cat $@
  else
    # local sn=()
    declare -a sn
    while [ $# -gt 0 ] && [[ "$1" == -* ]]; do
      sn+=("$1")
      shift
    done
    if [ $# -eq 0 ]; then
      # CAT="highlight -O xterm256 -t 4 -s bipolar -S sh"
      # highlight -O xterm256 -t 4 -s $style -S $syntax
      if type highlight &>/dev/null; then
        highlight ${sn[*]} -O xterm256 -t 4 -s bipolar --force
      elif type bat &>/dev/null; then
        bat ${sn[*]} -Pp
      elif type ccat &>/dev/null; then
        ccat $${sn[*]}
      else
        \cat ${sn[*]}
      fi
    else
      if [[ $(file "$1" | grep -o "text" | wc -l ) -lt 1 ]]; then
        echo -en "\033[1m"
        \cat ${sn[*]} $@
        echo -en "\033[0m"
      else
        if type highlight &>/dev/null; then
          highlight ${sn[*]} -O xterm256 -t 4 -s bipolar $@ 2> /dev/null || highlight ${sn[*]} -O xterm256 -t 4 -s bipolar $@ 2> /dev/null || \cat ${sn[*]} $@
        elif type bat &>/dev/null; then
          bat ${sn[*]} -Pp $@ 2> /dev/null || \cat ${sn[*]} $@
        elif type ccat &>/dev/null; then
          ccat ${sn[*]} $@ 2> /dev/null || \cat ${sn[*]} $@
        else
          echo -en "\033[1m"
          \cat ${sn[*]} $@
          echo -en "\033[0m"
        fi
      fi
    fi
  fi
}

#########################################################################
# 图标符号
#########################################################################
function icon() {
  # 官方 CSS 数据源
  local DATA_URL="https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/css/nerd-fonts-generated.css"
  local CACHE_FILE="$HOME/.cache/nf_icons.txt"

  # 1. 自动初始化/更新缓存
  if [[ ! -s "$CACHE_FILE" || -n $(find "$CACHE_FILE" -mtime +30) ]]; then
    echo -n "Syncing official icon library... "

    curl -ksL "$DATA_URL" | grep -A 1 "^\.nf-" | sed -n 'N;s/^\.nf-\(.*\):before.*content:[[:space:]]*"\\\(.*\)".*$/\1 \2/p' > "$CACHE_FILE"
    # curl -sL "$DATA_URL" | grep -A 1 "^\.nf-" | sed -n 'N;s/^\.nf-\(.*\):before.*content:.*"\\\(.*\)".*$/\1 \2/p' | while read -r line; do
    #    local name=$(echo "$line" | awk '{print $1}')
    #    local hex=$(echo "$line" | awk '{print $2}')
    #
    #    if [[ -n "$name" && -n "$hex" ]]; then
    #        echo "$name $hex" > "$CACHE_FILE"
    #    fi
    # done

    if [[ -s "$CACHE_FILE" ]]; then
      echo "[✓]"
    else
      echo "[✕]"
      exit 1
    fi
  fi

  local search_term="$1"
  local matches=$(grep -i "$search_term" "$CACHE_FILE")

  echo -e "ICON\tNAME"
  echo -e "----\t----"
  if [[ -n "$matches" ]]; then
    echo "$matches" | while read -r name hex; do
      [[ ${#hex} -le 4 ]] && icon=$(printf "\u$hex") || icon=$(printf "\U$hex") printf "%s\t%s\n" "$icon" "$name"
    done
  fi
}

#########################################################################
# 压缩解压
#########################################################################
# 自动压缩
function cx() {
  if [ -z "$1" ]; then
    echo "Usage: cx <file1> [file2] [file3] ...)"
    return 1
  fi

  for arg in "$@"; do
    if [ ! -e "$arg" ]; then
      echo "❌ Error: Path $arg does not exist. Compression aborted"
      return 1
    fi
  done

  local output_name=""
  
  if [ "$#" -eq 1 ]; then
    local target_path="${1%/}"
    output_name="$(basename "$target_path").tgz"
  else
    local first_target="${1%/}"
    local parent_path=$(cd "$(dirname "$first_target")" && pwd)
    local parent_name=$(basename "$parent_path")

    if [ "$parent_name" = "/" ] || [ -z "$parent_name" ]; then
      parent_name="archive"
    fi
    output_name="${parent_name}.tgz"
  fi

  tar -cvzf "$output_name" "$@"

  echo "✅ Compressed $# item(s) to ./${output_name} successfully"
}

# 自动解压
function ex() {
  if [ -z "$1" ]; then
    echo "Usage: ex <file1> [file2] [file_3] ..."
    return 1
  fi

  for n in "$@"; do
    if [ ! -f "$n" ] ; then
      echo "❌ Error: $n is not a valid file or does not exist"
      continue
    fi

    local file_lower=$(echo "$n" | tr '[:upper:]' '[:lower:]')
    
    local base_dir="${n%.*}"
    if [[ "$file_lower" =~ \.tar\.(gz|bz2|xz)$ ]]; then
      base_dir="${base_dir%.*}"
    fi

    local item_count=0
    
    case "$file_lower" in
      *.tar.bz2|*.tar.gz|*.tar.xz|*.tar.zst|*.tbz2|*.tgz|*.txz|*.tzst|*.tar)
        item_count=$(tar -tf "$n" 2>/dev/null | awk -F/ '{print $1}' | sort -u | grep -v '^$' | wc -l) ;;
      *.zip)
        item_count=$(unzip -Z -1 "$n" 2>/dev/null | awk -F/ '{print $1}' | sort -u | grep -v '^$' | wc -l) ;;
      *.7z|*.rar|*.ar|*.arj|*.cab|*.deb|*.iso|*.rpm|*.apk|*.jar)
        item_count=$(7z l "$n" 2>/dev/null | awk '/----/ {flag=!flag; next} flag' | awk '{print $NF}' | awk -F/ '{print $1}' | sort -u | grep -v '^$' | wc -l) ;;
      *)
        item_count=1 ;;
    esac

    local target_dir="."
    if [ "$item_count" -gt 1 ]; then
      target_dir="./$base_dir"
      mkdir -p "$target_dir"
    fi

    case "$file_lower" in
      *.tar.bz2|*.tar.gz|*.tar.xz|*.tar.zst|*.tbz2|*.tgz|*.txz|*.tzst|*.tar) 
        tar -xvf "$n" -C "$target_dir" ;;
      *.zip)
        unzip "$n" -d "$target_dir" ;;
      *.7z|*.ar|*.arj|*.cab|*.deb|*.iso|*.rpm|*.apk|*.rar|*.jar)     
        7z x "$n" -o"$target_dir" ;;
      *.lzma)
        [ "$target_dir" != "." ] && cp "$n" "$target_dir" && cd "$target_dir" && unlzma -k "$n" && rm "$n" && cd - >/dev/null || unlzma -k "$n" ;;
      *.bz2)
        [ "$target_dir" != "." ] && cp "$n" "$target_dir" && cd "$target_dir" && bunzip2 -k "$n" && rm "$n" && cd - >/dev/null || bunzip2 -k "$n" ;;
      *.gz)
        [ "$target_dir" != "." ] && cp "$n" "$target_dir" && cd "$target_dir" && gunzip -k "$n" && rm "$n" && cd - >/dev/null || gunzip -k "$n" ;;
      *.xz)
        [ "$target_dir" != "." ] && cp "$n" "$target_dir" && cd "$target_dir" && unxz -k "$n" && rm "$n" && cd - >/dev/null || unxz -k "$n" ;;
      *)
        echo "⚠️ Error: $n - Unsupported archive format"; continue ;;
    esac

    echo "✅ Extracted $n to $target_dir successfully"
    echo "-------------------------------------------------------"
  done
}

#########################################################################
# 批量重命名
#########################################################################
function rnm() {
  if [[ -z "$1" || -z "$2" ]]; then
    echo "❌ Error: Missing arguments!"
    echo "Usage: rnm '<regex_pattern>' '<replace_template>'"
    echo "Example: rnm 'prefix_(.*)\.mp4' '2026_\$1.mp4'"
    return 1
  fi

  local pattern="$1"
  local template="$2"
  local count=0

  echo "🔍 Scanning files matching regex: /${pattern}/ ..."
  echo "------------------------------------------------"

  for src in *; do
    if [[ -e "$src" && "$src" =~ ^${pattern}$ ]]; then
      local dst="$template"
      local i=1
      for group in "${match[@]}"; do
        dst="${dst//\$${i}/$group}"
        ((i++))
      done

      [[ "$src" == "$dst" ]] && continue

      if [[ -e "$dst" ]]; then
        echo "⚠️ Skipped: $dst already exists! Cannot overwrite."
        continue
      fi

      echo "✨ '$src'  ->  '$dst'"
      mv "$src" "$dst"
      ((count++))
    fi
  done

  echo "------------------------------------------------"
  echo "✅ Done! $count file(s) renamed successfully."
}

#########################################################################
# Authenticator认证器
#########################################################################
function auth() {
  if ! command -v python3 &> /dev/null; then
    echo "ERROR: python3 not found. This function requires Python 3 for secure cryptographic calculations."
        
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      echo "HINT: Run 'sudo apt install python3' (Debian/Ubuntu) or 'sudo yum install python3' (CentOS/RHEL)"
    elif [[ "$OSTYPE" == "darwin"* ]]; then
      echo "HINT: Run 'brew install python' or download it from python.org"
    else
      echo "HINT: Please install Python 3 and ensure it is in your PATH."
    fi
    return 1
  fi

  if [[ -z "$OTPAUTH_MIGRATION" ]]; then
    echo "ERROR: Environment variable OTPAUTH_MIGRATION is not set."
    echo "Usage: export OTPAUTH_MIGRATION='otpauth-migration://...'"
    return 1
  fi

  local filter_account="$1"

  python3 -c "
import base64, re, time, hmac, hashlib, struct, urllib.parse

def get_totp(secret_b32):
    try:
        now = time.time()
        remaining = int(30 - (now % 30))
        
        missing_padding = len(secret_b32) % 8
        if missing_padding:
            secret_b32 += '=' * (8 - missing_padding)
            
        key = base64.b32decode(secret_b32.upper())
        msg = struct.pack('>Q', int(now / 30))
        h = hmac.new(key, msg, hashlib.sha1).digest()
        offset = h[-1] & 0xf
        code = struct.unpack('>I', h[offset:offset+4])[0] & 0x7fffffff
        return f'{code % 1000000:06d}', remaining
    except:
        return 'INVALID', 0

def main():
    url = '$OTPAUTH_MIGRATION'
    filter_name = '$filter_account'.lower()
    
    parsed = urllib.parse.urlparse(url)
    data_qs = urllib.parse.parse_qs(parsed.query).get('data', [''])
    if not data_qs[0]:
        print('Error: No data found in migration URL.')
        return

    try:
        decoded = base64.b64decode(data_qs[0])
    except:
        print('Error: Failed to decode base64 data.')
        return
    
    items = re.findall(b'\x0a.\x0a\x0a(.*?)\x12.(.*?)(?:\x1a|\x20|$)', decoded, re.DOTALL)
    
    header = f'{\"ACCOUNT\":<16} | {\"SECRET\":<18} | {\"OTPCODE\":<10} | {\"REMAIN\":<6}'
    print(header)
    print('-' * len(header))
    
    found = False
    for secret_raw, name_raw in items:
        try:
            name = name_raw.decode('utf-8', errors='ignore').split('\x1a')[0]
            secret = base64.b32encode(secret_raw).decode().replace('=', '')
            
            if filter_name and filter_name not in name.lower():
                continue
                
            otp, time_left = get_totp(secret)
            
            print(f'{name[:16]:<16} | {secret:<18} | {otp:<10} | {time_left:>3}s')
            found = True
        except:
            continue

    if not found and filter_name:
        print(f'No account found matching \"{filter_name}\"')

main()
"
}

########################################
# WEB搜索
########################################
function web() {
  # get the open command
  local open_cmd
  if [[ "$OSTYPE" = darwin* ]]; then
    open_cmd='open'
  else
    open_cmd='xdg-open'
  fi

  # check whether the search engine is supported
  if [[ ! $1 =~ '(google|bing|baidu|pan115|zhongzilou)' ]]; then
    echo "Search engine $1 not supported."
    return 1
  fi

  local url="https://www.$1.com"

  # no keyword provided, simply open the search engine homepage
  if [[ $# -le 1 ]]; then
    $open_cmd "$url"
    return
  fi
  local kwd=($@)
  unset kwd[1]
  kwd=$(echo $kwd)
  case $1 in
    "baidu")
      url="${url}/s?wd=$kwd" ;;
    "pan115")
      url="${url/https/http}/search?key=$kwd" ;;
    "zhongzilou")
      url="${url}/list/$kwd""/1" ;;
    *)
      url="${url}/search?q=$kwd"
  esac

  # shift   # shift out $1

  # url="${url%?}" # remove the last '+'
  nohup $open_cmd "$url" &> /dev/null 
}

alias baidu='web baidu'
alias bing='web bing'
alias google='web google'
alias pan='web pan115'
alias zzl='web zhongzilou'
# add your own !bang searches here

#########################################################################
# YouTube下载
#########################################################################
function yd() {
  if ! command -v yt-dlp &> /dev/null; then
    echo "yt-dlp Tool not found. Please execute this command to install: sudo wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp -O ./usr/bin/yt-dlp && sudo chmod a+x /usr/bin/yt-dlp"
    return 1
  fi

  local url="$1"
    
  local default_res="best"
  local default_proxy="socks5://127.0.0.1:7890"
    
  local res=""
  local proxy=""
  local resolution="bestvideo*+bestaudio/best"

  if [ -z "$url" ]; then
    echo "Usage: yd <URL> [Resolution] [Proxy]"
    return 1
  fi

  if [ -n "$2" ] && [ -n "$3" ]; then
    res="$2"
    proxy="$3"
  elif [ -n "$2" ]; then
    if [[ "$2" =~ ^[0-9]+p?$ ]]; then
      res="$2"
      proxy="$default_proxy"
    elif [[ "$2" =~ ^(http|https|socks5):// ]]; then
      res="$default_res"
      proxy="$2"
    else
      res="$2"
      proxy="$default_proxy"
    fi
  else
    res="$default_res"
    proxy="$default_proxy"
  fi

  if [ "$res" == "-i" ]; then
    echo "Fetching available formats using proxy: $proxy ..."
    echo "------------------------------------------------"
    yt-dlp --proxy "$proxy" --cookies-from-browser chrome --js-runtimes node -F "$url"
    echo "------------------------------------------------"
        
    echo "Choose download mode (Press ENTER for default 1080p):"
    echo "[1] Smart Resolution Limit  (e.g., 2160, 1080, 720, 480)"
    echo "[2] Exact Format ID Combin  (e.g., 137+251)"
    echo "------------------------------------------------"
    printf "Enter your choice (Resolution or ID): "
    read choice

    if [ -z "$choice" ]; then
      res="1080"
    else
      res="$choice"
    fi
  fi

  if [[ "$res" == "best" ]]; then
    resolution="bestvideo*+bestaudio/best"
  elif [[ "$res" =~ ^[0-9]+p?$ ]]; then
    resolution="bestvideo[height<=${res%p}]+bestaudio/best"
  else
    resolution="$res"
  fi

  echo "Downloading $url [$res $proxy]..."
  echo "------------------------------------------------"

  yt-dlp --proxy "$proxy" --cookies-from-browser chrome -f "$resolution" -o "%(playlist_index&{}.|)s%(title)s.%(ext)s" --download-archive videos.txt --js-runtimes node --retries 100 --fragment-retries 100 "$url"
}

#########################################################################
# 一键推送代码
#########################################################################
function gtp() {
  # 1. 校验自定义的 Git 环境变量是否存在
  if [[ -z "$GIT_USER" || -z "$GIT_TOKEN" ]]; then
    echo "❌ 错误: 请先设置环境变量 GIT_USER 和 GIT_TOKEN"
    return 1
  fi

  local is_new_repo=false

  # 2. 检查当前目录是否是一个 Git 仓库，如果不是则自动初始化
  if ! git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "🛈 检测到当前目录不是 Git 仓库, 正在自动初始化 ..."
    git init
    # 强制将默认分支设为 main (符合现代 Git 习惯)
    git branch -M main
    is_new_repo=true
  else
    local git_root=$(git rev-parse --show-toplevel 2>/dev/null)
    local current_dir=$(pwd)

    if [[ "$git_root" != "$current_dir" ]]; then
      echo -n "⚠️ 是否自动切换到代码仓库根目录并继续提交?(Y/n): "
      read response
      if [[ -z "$response" ]] || [[ "$response" =~ ^[Yy]$ ]]; then
        cd "$git_root" || return 1
        echo "✦ 已切换至代码仓库根目录, 继续执行 ..."
      else
        echo "✧ 已取消操作, 请手动切换到根目录后重试"
        return 1
      fi
    fi
  fi

  # 3. 获取或提示输入远端仓库地址
  local remote_name="origin"
  local remote_url=$(git remote get-url "$remote_name" 2>/dev/null)

  if [[ -z "$remote_url" && "$is_new_repo" == false ]]; then
    remote_url=$(git remote -v | head -n 1 | awk '{print $2}')
  fi

  # 如果是全新仓库且没有关联过远端，提示用户输入一次
  if [[ -z "$remote_url" ]]; then
    echo -n "☞ 未检测到远端仓库, 请粘贴远端仓库 HTTPS 或 SSH 地址: "
    read input_url
    if [[ -z "$input_url" ]]; then
      echo "❌ 错误: 远端仓库地址不能为空"
      return 1
    fi
    remote_url="$input_url"
    # 本地关联该地址，方便以后直接使用
    git remote add "$remote_name" "$remote_url"
    echo "📦 已成功关联远端仓库 $remote_name"
  fi

  # 4. 自动暂存和创建首次/后续提交
  if [[ -n $(git status --porcelain) || "$is_new_repo" == true ]]; then
    # 检查是否有文件可以提交，全新目录如果是空的，先建一个说明文件避免提交失败
    if [[ -z $(ls -A) ]]; then
      echo "# New Project" > README.md
      echo "🛈 当前为空目录, 已自动生成 README.md"
    fi
      
    echo "♨ 正在创建本地 Commit ..."
    git add .
    
    local commit_msg="$1"
    if [[ -z "$commit_msg" ]]; then
      if [ "$is_new_repo" = true ]; then
        commit_msg="Initial commit via gpush"
      else
        commit_msg="Auto commit via gpush"
      fi
    fi
    git commit -m "$commit_msg"
  fi

  # 5. 获取当前分支名称 (此时确保一定有分支了)
  local current_branch=$(git branch --show-current)
  if [[ -z "$current_branch" ]]; then
    current_branch="main"
  fi

  # 6. 解析并重构带 Token 的 URL
  local target_url=""
  if [[ "$remote_url" =~ https://(.*) ]]; then
    local clean_url="${match[1]}"
    clean_url="${clean_url#*@}"
    target_url="https://${GIT_USER}:${GIT_TOKEN}@${clean_url}"
  elif [[ "$remote_url" =~ git@(.*):(.*) ]]; then
    local domain="${match[1]}"
    local path="${match[2]}"
    target_url="https://${GIT_USER}:${GIT_TOKEN}@${domain}/${path}"
  else
    echo "❌ 错误: 无法解析的远端 URL 格式: $remote_url"
    return 1
  fi

  # 7. 执行推送
  echo "⏳ 正在推送分支 [$current_branch] 到远端仓库 $remote_url ..."
  
  # 如果是全新仓库，推送时加上 -u 参数以锁定上游分支
  if [ "$is_new_repo" = true ]; then
    if git push -u "$target_url" "$current_branch"; then
      echo "⛳ 全新仓库首次推送成功"
    else
      echo "❌ 推送失败，请检查 GIT_TOKEN 权限, 网络, 或远端仓库是否为空"
      return 1
    fi
  else
    if git push "$target_url" "$current_branch"; then
      echo "⛳ 代码推送成功"
    else
      echo "❌ 推送失败，请检查 GIT_TOKEN 权限或网络连接"
      return 1
    fi
  fi
}

#########################################################################
# AI问答
#########################################################################
function ai() {
  if ! (( $+commands[curl] )) || ! (( $+commands[jq] )); then
    echo "\e[1;31m❌ Error: 'curl' and 'jq' are required for this function\e[0m" >&2
    return 1
  fi

  local api_key="${OPENAI_API_KEY}"
  local api_base="${OPENAI_API_BASE:-https://api.openai.com/v1}"
  local model="${OPENAI_MODEL:-gpt-4o-mini}"

  [[ -z "$api_key" ]] && api_key="${AI_API_KEY}"
  [[ "$api_base" == "https://api.openai.com/v1" && -n "$AI_API_BASE" ]] && api_base="$AI_API_BASE"
  [[ "$model" == "gpt-4o-mini" && -n "$AI_MODEL" ]] && model="$AI_MODEL"

  if [[ -z "$api_key" ]]; then
    echo -e "\e[1;31m❌ Error: Environment AI_API_KEY not set\e[0m" >&2
    return 1
  fi

  local prompt=""

  if [ ! -t 0 ]; then
    local stdin_content=$(cat)
    if [[ -n "$1" ]]; then
      prompt="Context/Input:\n\"\"\"\n$stdin_content\n\"\"\"\n\nInstruction: $1"
    else
      prompt="$stdin_content"
    fi
  else
    if [[ -z "$1" ]]; then
      echo "Usage: ai \"your question here\" or cat file.txt | ai \"explain this\""
      return 1
    fi
    prompt="$1"
  fi

  echo -e "\e[1;36m❖ AI ($model) Thinking...\e[0m"

  local json_payload=$(jq -n \
    --arg model "$model" \
    --arg prompt "$prompt" \
    '{
      model: $model,
      messages: [
        {role: "system", content: "You are a helpful, concise terminal assistant. Answer the user question accurately. Use markdown if necessary."},
        {role: "user", content: $prompt}
      ],
      stream: false
    }')

  local response
  response=$(curl -s -X POST "$api_base/chat/completions" \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $api_key" \
    -d "$json_payload")

  if [[ $? -ne 0 || -z "$response" ]]; then
    echo -e "\e[1;31m❌ Error: Failed to connect to the AI API\e[0m" >&2
    return 1
  fi

  local error_msg=$(echo "$response" | jq -r '.error.message // empty')
  if [[ -n "$error_msg" ]]; then
    echo -e "\e[1;31m❌ Error: $error_msg\e[0m" >&2
    return 1
  fi

  local reply=$(echo "$response" | jq -r '.choices[0].message.content // empty')

  if [[ -z "$reply" ]]; then
    echo -e "\e[1;31m❌ Error: Empty response or invalid format from API: $response\e[0m" >&2
    return 1
  fi

  echo -e "\e[1;32m❖ AI ($model) Response:\e[0m"
  if (( $+commands[glow] )); then
    echo "$reply" | glow -
  else
    echo "$reply"
  fi
}

#########################################################################
# AI词典
#########################################################################
function dict() {
  local key="xxxx"
  local url="https://open.bigmodel.cn/api/paas/v4/chat/completions"
  local model="glm-4-flash"

  if [[ -z "$1" ]]; then echo "Usage: dict word/sentence"; return; fi

  local system_content=$(cat <<EOF
# Role
你是一个极度严谨的中英双语语言专家，擅长将复杂的词汇和句子转化为简洁的结构化的学习笔记。

# Workflow & Rules
1. 识别输入：判断输入是单个词语（Word/Phrase）还是完整句子（Sentence）。
2. 处理词语：
  - 必须在词语后提供标准音标，使用斜杠包裹(如:book /bʊk/)，中文词汇使用拼音。
  - 必须分词性（n., v., adj. 等）罗列所有常用释义。
  - 释义总数量最多不要超过10个。
  - 每个释义前提供可数不可数单数复数及物不及物等标注(如:[c],[i]), 释义后必须提供对应的原语种定义。
  - 每个释义最多提供一个简短的双语对照例句。
3. 处理句子：
  - 在首行提供整句的国际音标或拼音。
  - 提供准确、地道的对应语言翻译。

# Output Format (Strictly Follow)
(如果是词语，则按以下格式：)
目标词汇 /音标/

词性 (中文词性名)
  序号. [标注] 对应翻译 原语种定义/解释
    > 原语种例句 [例句翻译]

(如果是句子，则按以下格式：)
/整句音标/

原句
翻译结果

# Example 1
User: book
Assistant:
book /bʊk/

n. (名词)
  1. [c] 书，书籍 number of printed or written sheets of paper bound together in a cover
  2. [pl] 账簿 written records of the finances of a business; accounts
    > That student lost his book yesterday. [那个学生昨天丢了书。]
v. (动词)
  1. [i][t] 预订 ask and pay for a seat for the theatre, a journey etc.
    > I will book you on a direct flight to London. [我将为你预订直飞伦敦的航班。]

# Example 2
User: 报告
Assistant:
报告 /bào gào/

n. (名词)
  1. [c] report 书面文件或正式陈述
  2. [c] lecture，presentation 正式的演说或讲座
    > 年度财务报告显示利润大幅增长。[The annual financial report shows a significant profit.]
v. (动词)
  1. [i][t] report to 向其他人汇报情况
    > 你必须向警方报告任何可疑活动。[You must report any suspicious activity to the police.]

# Example 3
User: I like to read book
Assistant:
/aɪ lʌv tuː riːd bʊks/

I love to read books.
我喜欢读书。

# Example 4
User: 我喜欢读书
Assistant：
/wǒ xǐ huān dú shū/

我喜欢读书。
I love to read books.
EOF
)

  local payload=$(python3 -c "import sys, json; print(json.dumps({
    'model': sys.argv[1],
    'messages': [
      {'role': 'system', 'content': sys.argv[2]},
      {'role': 'user', 'content': sys.argv[3]}
    ],
    'temperature': 0.1
  }))" "$model" "$system_content" "$*")

  curl -s -X POST "$url" -H "Content-Type: application/json" -H "Authorization: Bearer $key" -d "$payload" | python3 -c "import sys, json; print(json.load(sys.stdin,strict=False)['choices'][0]['message']['content'])" 2>/dev/null || echo "查询失败, 请检查网络或APIKey"
}

#########################################################################
# kubectl自动补全延迟加载
#########################################################################
function kubectl() {
  if ! type __start_kubectl >/dev/null 2>&1; then
    source <(command kubectl completion zsh)
  fi
  command kubectl "$@"
}
alias k="kubectl"

#########################################################################
# kubectl精简yaml
#########################################################################
function kneat() {
  python3 -c "
import sys, yaml
data = yaml.safe_load(sys.stdin)
def clean(d):
    if not isinstance(d, dict): return
    # 移除指定的元数据键
    meta_to_del = ['managedFields', 'uid', 'resourceVersion', 'creationTimestamp', 'generation', 'generateName', 'selfLink', 'ownerReferences']
    if 'metadata' in d:
        for k in meta_to_del: d['metadata'].pop(k, None)
        if 'annotations' in d['metadata']:
            d['metadata']['annotations'].pop('kubectl.kubernetes.io/last-applied-configuration', None)
    # 移除 status
    d.pop('status', None)
clean(data)
print(yaml.dump(data, default_flow_style=False))
"
}

#########################################################################
# nvm加载较慢, 启用延迟加载
#########################################################################
# function nvm() {
#  [ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh"
#  [ -s "$HOME/.nvm/bash_completion" ] && . "$HOME/.nvm/bash_completion"
#  command nvm "$@"
# }

if [ -f /usr/share/nvm/init-nvm.sh ]; then
  source /usr/share/nvm/init-nvm.sh --no-use
fi

#########################################################################
# 推荐工具
#########################################################################
function awesome(){
  echo "fping: https://github.com/schweikert/fping (A high performance ping tool)"
  echo "coreutils: https://github.com/uutils/coreutils (A cross-platform rust rewrite of the GNU coreutils)"
  echo "bat: https://github.com/sharkdp/bat (A cat clone with wings)"
  echo "fd: https://github.com/sharkdp/fd (A modern replacement for find)"
  echo "eza: https://github.com/eza-community/eza (A modern replacement for ls)"
  echo "procs: https://github.com/dalance/procs (A modern replacement for ps)"
  echo "dust: https://github.com/bootandy/dust ( A modern replacement for du)"
  echo "duf: https://github.com/muesli/duf (A modern replacement for df)"
  echo "zoxide: https://github.com/ajeetdsouza/zoxide (A smarter cd command)"
  echo "ripgrep: https://github.com/BurntSushi/ripgrep (A modern replacement for grep)"
  echo "peco: https://github.com/peco/peco (A simplistic interactive filtering tool)"
  echo "highlight: http://andre-simon.de/zip/download.php (A text highlight cli tool)"
  echo "htop: https://github.com/htop-dev/htop (An interactive process viewer)"
  echo "btop: https://github.com/aristocratos/btop (A monitor of resources)"
  echo "bottom: https://github.com/ClementTsang/bottom (Another cross-platform graphical monitor)"
  echo "nmap: https://github.com/nmap/nmap (The network mapper)"
  echo "usql: https://github.com/xo/usql (Universal command-line interface for sql databases)"
  echo "jq: https://github.com/jqlang/jq (A command-line JSON processor)"
  echo "jid: https://github.com/simeji/jid (A JSON incremental digger)"
  echo "fx: https://github.com/antonmedv/fx (A terminal JSON viewer and processor)"
  echo "yq: https://github.com/mikefarah/yq (A command-line YAML processor)"
  echo "grex: https://github.com/pemistahl/grex (A command-line tool for generating regular expressions)"
  echo "vegeta: https://github.com/tsenart/vegeta (A http load testing tool and library)"
  echo "k6: https://github.com/grafana/k6 (A modern load testing tool)"
  echo "gore: https://github.com/x-motemen/gore (Another Go REPL)"
  echo "gomacro: https://github.com/cosmos72/gomacro (An interactive Go interpreter and debugger with REPL)"
  echo "gonb: https://github.com/janpfeifer/gonb (A go notebook kernel for jupyter)"
  echo "tmux: https://github.com/tmux/tmux (A terminal multiplexer)"
  echo "trzsz: https://github.com/trzsz/trzsz-go (A simple file transfer tool as alternative to lrzsz)"
  echo "lf: https://github.com/gokcehan/lf (A terminal file manager)"
  echo "goproxy: https://github.com/snail007/goproxy (A high performance multiproxy)"
  echo "wuzz: https://github.com/asciimoo/wuzz (An interactive cli tool for http inspection)"
  echo "websocketd: https://github.com/joewalnes/websocketd (Turn any program into a websocket server)"
  echo "claws: https://github.com/thehowl/claws (Awesome websocket client)"
  echo "gohttpserver: https://github.com/codeskyblue/gohttpserver (The best http static file server)"
  echo "gofs: https://github.com/xshrim/gofs (A simple http file server)"
  echo "zookeepercli: https://github.com/openark/zookeepercli (A lightweight dependable cli for zookeeper)"
  echo "kaf: https://github.com/birdayz/kaf (A modern cli for apache kafka)"
  echo "iredis: https://github.com/laixintao/iredis (A terminal client for redis)"
  echo "redis-cli: https://github.com/holys/redis-cli (A pure go implementation of redis-cli)"
  echo "redis-tui: https://github.com/mylxsw/redis-tui (A redis text-based UI client in cli)"
  echo "lazygit: https://github.com/jesseduffield/lazygit (A simple terminal UI for git commands)"
  echo "lazydocker: https://github.com/jesseduffield/lazydocker (The lazier way to manage everthing docker)"
  echo "ctop: https://github.com/bcicen/ctop (Top-like interface for container metrics)"
  echo "k9s: https://github.com/derailed/k9s (A kubernetes cli to manager cluster)"
  echo "kube-explorer: https://github.com/cnrancher/kube-explorer (A portable explorer for kubernetes)"
  echo "kind: https://github.com/kubernetes-sigs/kind (Kubernetes In Docker)"
  echo "rbac-tool: https://github.com/alcideio/rbac-tool (A collection of kubernetes rbac tools)"
  echo "gemini-cli: https://github.com/google-gemini/gemini-cli (An open-source AI agent for gemini) "
  echo "awesome: https://github.com/uhub/awesome-shell https://github.com/alebcay/awesome-shell https://github.com/agarr  harr/awesome-cli-apps https://terminalsare.sexy (Awesome shell tool collection)"
}

#########################################################################
# 数据库连接
#########################################################################
# SQLite 连接
function sqlite() {
  # 检查 usql 命令是否存在
  if ! command -v usql &> /dev/null; then
    echo -e "\e[1;31mError: usql command not found\e[0m"
    return 1
  fi

  # 初始化变量
  local DB_FILE="" # SQLite 只需要一个文件路径
  local ARGS=()

  # 1. 解析命令行参数
	while [ "$#" -gt 0 ]; do
    case "$1" in
      -f)
        if [ -n "$2" ]; then
          DB_FILE="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -d)
        if [ -n "$2" ]; then
          DB_FILE="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      *)
        ARGS+=("$1")
        shift 1
        ;;
    esac
  done
  set -- "${ARGS[@]}"

  # 默认使用内存数据库
  if [ -z "$DB_FILE" ]; then
    DB_FILE=":memory:"
  fi

  # 2. 构造连接 URI ( usql format: sqlite://file_path )
  local URI="sqlite://$DB_FILE"
    
  echo -e "\e[1;36mConnect: $URI\e[0m"

  # 3. 调用 usql
	usql "$URI" $@
}

# MySQL 连接
function mysql() {
  # 检查 usql 命令是否存在
  if ! command -v usql &> /dev/null; then
    echo -e "\e[1;31mError: usql command not found\e[0m"
    return 1
  fi

  # 初始化变量，设置默认值
  local HOST="127.0.0.1"
  local PORT="3306"
  local USER="root"
  local PASS=""
  local DB=""
  local ARGS=()

  # 1. 解析命令行参数
	while [ "$#" -gt 0 ]; do
    case "$1" in
      -h)
        if [ -n "$2" ]; then
          HOST="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -P)
        if [ -n "$2" ]; then
          PORT="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -u)
        if [ -n "$2" ]; then
          USER="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -p)
        if [ -n "$2" ]; then
          PASS="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -d)
        if [ -n "$2" ]; then
          DB="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      *)
        ARGS+=("$1")
        shift 1
        ;;
    esac
  done
  set -- "${ARGS[@]}"

  # 2. 构造连接 URI ( usql format: mysql://user:pass@host:port/database )
  local URI="mysql://"

  # 添加用户和密码
  if [ -n "$USER" ]; then
    URI+="$USER"
    if [ -n "$PASS" ]; then
      # URL编码密码，防止特殊字符干扰URI
      local ENCODED_PASS=$(echo "$PASS" | awk '{ gsub(/[^a-zA-Z0-9-._~]/, "\\&"); print }')
      URI+=":$ENCODED_PASS"
    fi
    URI+="@"
  fi

  # 添加主机和端口
  URI+="$HOST"
  if [ -n "$PORT" ]; then
    URI+=":$PORT"
  fi

  # 添加数据库
  if [ -n "$DB" ]; then
    URI+="/$DB"
  fi
    
  echo -e "\e[1;36mConnect: $USER@$HOST:$PORT/$DB\e[0m"
	
  # 3. 调用 usql
	usql "$URI" $@
}

# PostgreSQL 连接
function pgsql() {
  # 检查 usql 命令是否存在
  if ! command -v usql &> /dev/null; then
    echo -e "\e[1;31mError: usql command not found\e[0m"
    return 1
  fi

  # 初始化变量，设置默认值
  local HOST="127.0.0.1"
  local PORT="5432"
  local USER="postgres"
  local PASS=""
  local DB=""
  local ARGS=()

  # 1. 解析命令行参数
	while [ "$#" -gt 0 ]; do
    case "$1" in
      -h)
        if [ -n "$2" ]; then
          HOST="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -P)
        if [ -n "$2" ]; then
          PORT="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -u)
        if [ -n "$2" ]; then
          USER="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -p)
        if [ -n "$2" ]; then
          PASS="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -d)
        if [ -n "$2" ]; then
          DB="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      *)
        ARGS+=("$1")
        shift 1
        ;;
    esac
  done
  set -- "${ARGS[@]}"

  # 2. 构造连接 URI ( usql format: postgresql://user:pass@host:port/database )
  local URI="postgresql://"

  # 添加用户和密码
  if [ -n "$USER" ]; then
    URI+="$USER"
    if [ -n "$PASS" ]; then
      # URL编码密码，防止特殊字符干扰URI
      local ENCODED_PASS=$(echo "$PASS" | awk '{ gsub(/[^a-zA-Z0-9-._~]/, "\\&"); print }')
      URI+=":$ENCODED_PASS"
    fi
    URI+="@"
  fi

  # 添加主机和端口
  URI+="$HOST"
  if [ -n "$PORT" ]; then
    URI+=":$PORT"
  fi

  # 添加数据库
  # PostgreSQL中如果未指定数据库名，通常连接到与用户名同名的数据库。
  if [ -z "$DB" ]; then
    DB="$USER"
  fi
  URI+="/$DB"
    
  echo -e "\e[1;36mConnect: $USER@$HOST:$PORT/$DB\e[0m"

  # 3. 调用 usql
	usql "$URI" $@
}

# Oracle 连接
function oracle() {
  # 检查 usql 命令是否存在
  if ! command -v usql &> /dev/null; then
    echo -e "\e[1;31mError: usql command not found\e[0m"
    return 1
  fi

  # 初始化变量，设置默认值
  local HOST="127.0.0.1"
  local PORT="1521"
  local USER="system"
  local PASS=""
  local SERVICE_NAME=""
  local ARGS=()

  # 1. 解析命令行参数
	while [ "$#" -gt 0 ]; do
    case "$1" in
      -h)
        if [ -n "$2" ]; then
          HOST="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -P)
        if [ -n "$2" ]; then
          PORT="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -u)
        if [ -n "$2" ]; then
          USER="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -p)
        if [ -n "$2" ]; then
          PASS="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -d)
        if [ -n "$2" ]; then
          SERVICE_NAME="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      *)
        ARGS+=("$1")
        shift 1
        ;;
    esac
  done
  set -- "${ARGS[@]}"

  # 检查 SERVICE_NAME 是否缺失
  if [ -z "$SERVICE_NAME" ]; then
    echo -e "\e[1;31mError: Missing Service Name or SID. Use -d <service/sid>.\e[0m" >&2
    return 1
  fi

  # 2. 构造连接 URI ( usql format: oracle://user:pass@host:port/service_name )
  local URI="oracle://" # Oracle 协议

  # 添加用户和密码
  if [ -n "$USER" ]; then
    URI+="$USER"
    if [ -n "$PASS" ]; then
      local ENCODED_PASS=$(echo "$PASS" | awk '{ gsub(/[^a-zA-Z0-9-._~]/, "\\&"); print }')
      URI+=":$ENCODED_PASS"
    fi
    URI+="@"
  fi

  # 添加主机和端口
  URI+="$HOST"
  if [ -n "$PORT" ]; then
      URI+=":$PORT"
  fi

  # 添加 Service Name/SID
  URI+="/$SERVICE_NAME"
  
  echo -e "\e[1;36mConnect: $USER@$HOST:$PORT/$SERVICE_NAME\e[0m"

  # 3. 调用 usql
	usql "$URI" $@
}

# SQL Server 连接
function mssql() {
  # 检查 usql 命令是否存在
  if ! command -v usql &> /dev/null; then
      echo -e "\e[1;31mError: usql command not found\e[0m"
      return 1
  fi

  # 初始化变量，设置默认值
  local HOST="127.0.0.1"
  local PORT="1433"
  local USER="sa"
  local PASS=""
  local DB="" 
  local ARGS=()

    # 1. 解析命令行参数
	while [ "$#" -gt 0 ]; do
    case "$1" in
      -h)
        if [ -n "$2" ]; then
          HOST="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -P)
        if [ -n "$2" ]; then
          PORT="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -u)
        if [ -n "$2" ]; then
          USER="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -p)
        if [ -n "$2" ]; then
          PASS="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -d)
        if [ -n "$2" ]; then
          DB="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      *)
        ARGS+=("$1")
        shift 1
        ;;
    esac
  done
  set -- "${ARGS[@]}"

  # 2. 构造连接 URI ( usql format: sqlserver://user:pass@host:port/database )
  local URI="sqlserver://"

  # 添加用户和密码
  if [ -n "$USER" ]; then
    URI+="$USER"
    if [ -n "$PASS" ]; then
      local ENCODED_PASS=$(echo "$PASS" | awk '{ gsub(/[^a-zA-Z0-9-._~]/, "\\&"); print }')
      URI+=":$ENCODED_PASS"
    fi
    URI+="@"
  fi

  # 添加主机和端口
  URI+="$HOST"
  if [ -n "$PORT" ]; then
    URI+=":$PORT"
  fi

  # 添加数据库 (如果未指定，通常连接到默认或 master 数据库)
  if [ -n "$DB" ]; then
    URI+="/$DB"
  fi
  
  # 构造显示的连接字符串
  local DISPLAY_DB=${DB:-"<default>"}
  echo -e "\e[1;36mConnect: $USER@$HOST:$PORT/$DISPLAY_DB\e[0m"

  # 3. 调用 usql
	usql "$URI" $@
}

# DB2 连接
function db2() {
  # 检查 usql 命令是否存在
  if ! command -v usql &> /dev/null; then
    echo -e "\e[1;31mError: usql command not found\e[0m"
    return 1
  fi

  # 初始化变量，设置默认值
  local HOST="127.0.0.1"
  local PORT="50000"
  local USER="db2user"
  local PASS=""
  local DB=""
  local ARGS=()

  # 1. 解析命令行参数
	while [ "$#" -gt 0 ]; do
    case "$1" in
      -h)
        if [ -n "$2" ]; then
          HOST="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -P)
        if [ -n "$2" ]; then
          PORT="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -u)
        if [ -n "$2" ]; then
          USER="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -p)
        if [ -n "$2" ]; then
          PASS="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      -d)
        if [ -n "$2" ]; then
          DB="$2"
          shift 2
        else
          echo -e "\e[1;31mError: option $1 requires an argument\e[0m" >&2
          return 1
        fi
        ;;
      *)
        ARGS+=("$1")
        shift 1
        ;;
    esac
  done
  set -- "${ARGS[@]}"

  # 检查数据库名是否缺失 (连接 DB2 通常需要指定数据库名)
  if [ -z "$DB" ]; then
    echo -e "\e[1;31mError: Missing Database Name. Use -d <database_name>.\e[0m" >&2
    return 1
  fi

  # 2. 构造连接 URI ( usql 格式: db2://user:pass@host:port/database )
  local URI="db2://"

  # 添加用户和密码
  if [ -n "$USER" ]; then
    URI+="$USER"
    if [ -n "$PASS" ]; then
      # 使用原始 awk 编码逻辑 (注意: 此编码方式并非标准 URL 编码，可能不适用于所有特殊字符)
      local ENCODED_PASS=$(echo "$PASS" | awk '{ gsub(/[^a-zA-Z0-9-._~]/, "\\&"); print }')
      URI+=":$ENCODED_PASS"
    fi
    URI+="@"
  fi

  # 添加主机和端口
  URI+="$HOST"
  if [ -n "$PORT" ]; then
    URI+=":$PORT"
  fi

  # 添加数据库名
  URI+="/$DB"
    
  echo -e "\e[1;36mConnect: $USER@$HOST:$PORT/$DB\e[0m"

  # 3. 调用 usql
	usql "$URI" $@
}

#########################################################################
# 远程主机批量执行任务(类似ansible)
#########################################################################
function batch() {
  local usage='
USAGE: \n
COMMAND: \n
\tbatch -u [user] -s [password] -p [port] <mode> <hosts> <args> \n
MODES: \n
\tping: ping hosts \n
\tshell: run command on hosts \n
\tscript: execute script on hosts \n
\tcopy: copy local files to hosts \n
\tfetch: fetch files on hosts to local \n
\ttemplate: replace string for the file on hosts \n
EXAMPLES: \n
\tbatch ping "127.0.0.1 196.168.0.1" \n
\tbatch ping "${array[*]}" \n
\tbatch -u root -p 22 shell "${array[*]}" "ps" \n
\tbatch -s password script "${array[*]}" "run.sh" \n
\tbatch copy "${array[*]}" "/home/demo/run.sh /root/" \n
\tbatch template "${array[*]}" "/home/demo/run.sh foo bar" \n
  '
  local user="root"
  local pw=""
  local port="22"
  local cfile=""
  local args=()
  while [ $# -gt 0 ] && [[ "$1" != "--" ]]; do
    while getopts "u:s:p:f:" opt; do
      case $opt in
      u)
        user="$OPTARG"
        ;;
      s)
        pw="sshpass -p $OPTARG"
        if ! type sshpass &>/dev/null; then
          echo "sshpass required"
          exit 1
        fi
        ;;
      p)
        port="$OPTARG"
        ;;
      f)
        cfile="$OPTARG"
        ;;
      *)
        echo -e $usage
        exit 0
        ;;
      esac
    done

    shift $((OPTIND - 1))

    while [ $# -gt 0 ] && (! [[ "$1" =~ ^- ]] || [[ "$1" =~ ^-- ]]); do
      args=("${args[@]}" "$1")
      shift
      OPTIND=1 # reset OPTIND
    done
  done

  local mode=${args[1]}
  local hosts
  local cmd
  if [ -f "$cfile" ]; then
    IFS=$'\r\n' read -d '' -r -a hosts < $cfile
    cmd= ${args[2]}
  else
    hosts=${args[2]}
    cmd=${args[3]}
  fi

  setopt shwordsplit   # Compatible with bash word split
  for host in ${hosts[*]}; do
    case $mode in
    ping)
      if /bin/ping -c 1 -w 1 $host &>/dev/null; then
        echo "$host [succ]"
      else
        echo "$host [fail]"
      fi
      ;;
    shell)
      $pw ssh -p $port $user@$host $cmd
      ;;
    script)
      $pw ssh -p $port $user@$host "bash $cmd"
      ;;
    copy)
      local src=`echo $cmd | awk '{print $1}'`
      local dest=`echo $cmd | awk '{print $2}'`
      $pw scp -r -P $port $src $user@$host:$dest
      ;;
    fetch)
      local src=`echo $cmd | awk '{print $1}'`
      local dest=`echo $cmd | awk '{print $2}'`
      $pw scp -r -P $port $user@$host:$src $dest
      ;;
    template)
      local src=`echo $cmd | awk '{print $1}'`
      local old=`echo $cmd | awk '{print $2}'`
      local new=`echo $cmd | awk '{print $3}'`
      $pw ssh -p $port $user@$host "sed -i 's/$old/$new/g' $src"
      ;;
    *)
      echo $usage
      exit 1
      ;;
    esac
  done
  unsetopt shwordsplit
}

#########################################################################
# ansible输出json提取
#########################################################################
function ans() {
  local text
  local host=$1
  local offset
  host=$(echo $host|sed 's/\./\\./g')
  #shift
  #read -d '' text
  #IFS=$'\r\n' read -d '' -r -a text < $2
  if [ $# == 1 ]; then
    text=$(cat $2)
  else
    if [ -f $2 ]; then
      text=$(cat $2)
    else
      offset=$2
      text=$(cat $3)
    fi
  fi
  if [ -n "$offset" ] && type jq >/dev/null 2>&1; then
    echo "$text" | \grep -Pzo "\[?$host\]?.* => {\n(.*\n)*?}\n?"|sed "s/^\S.* => {/{/g" | jq -rsM . | jq -rM .[$offset]
  else
    echo "$text" | \grep -Pzo "\[?$host\]?.* => {\n(.*\n)*?}\n?"|sed "s/^\S.* => {/{/g"
  fi
}

#########################################################################
# 查看指定插件中定义的函数
#########################################################################
function func() {
  if [[ -z "$1" || ! -f "$1" ]]; then
    echo "Usage: func [zsh plugin file path]"
    return 1
  fi

  # Pass the absolute path of the plugin
  local plugin_path=$1

  # Run in an isolated sub-shell
  zsh -f -c "
    # 1. Initialize the completion system (Fixes: command not found: compdef)
    autoload -Uz compinit && compinit -i
      
    # 2. Record functions *after* completion init but *before* loading the plugin
    before=(\"\${(@k)functions}\")
      
    # 3. Source the target plugin
    source '$plugin_path'
      
    # 4. Record functions after loading the plugin
    after=(\"\${(@k)functions}\")
      
    # 5. Calculate the difference
    diff_funcs=(\${after:|before})
      
    # 6. Filter out internal completion functions and native hooks
    plugin_funcs=()
    for f in \${diff_funcs[@]}; do
      local src_path=\"\$functions_source[\$f]\"
      # Exclude functions starting with '_' or standard Zsh hook names
      if [[ ! \"\$f\" =~ ^_ && ! \"\$f\" =~ \"^(add-zsh-hook|chpwd|precmd|preexec|periodic|zcalc|zargs|zed|zkbd|zle-keymap-select|zsh_)\" && ! \"\$src_path\" =~ \"/zsh/\" ]]; then
        plugin_funcs+=(\"\$f\")
      fi
    done
      
    echo '======================================================================'
    echo ' 📦 Plugin Path: $plugin_path'
    echo \" 📊 Functions Count: \${#plugin_funcs} (embed functions filtered)\"
    echo '======================================================================'
    printf \"%-30s | %s\n\" '[Function Name]' '[Description (First Comment Line)]'
    echo '----------------------------------------------------------------------'

    # 7. Loop through clean functions and extract the first comment line
    for func in \${(o)plugin_funcs}; do
      # Find the line number of the function definition
      # local line_num=\$(grep -nE \"^[ \\t]*(function[ \\t]+\"\$func\"([ \\t]+|\\$)|[^#]*\"\$func\"[ \\t]*\\\\([ \\t]*\\\\))\" '$plugin_path' | head -n 1 | cut -d: -f1)
      # only get function definition with function keyword
      local line_num=\$(grep -nE \"^[ \\t]*function[ \\t]+\"\$func\"([ \\t]+|\\$|\\()\" '$plugin_path' | head -n 1 | cut -d: -f1)

      local target_comment='(No Description)'

      if [[ -z \"\$line_num\" || \"\$line_num\" -lt 1 ]]; then
        continue
      fi
          
      # Define range window (Max 3 lines above, stopping at line 1)
      local start_line=\$((\$line_num - 3))
      if (( start_line < 1 )) start_line=1
      local end_line=\$((\$line_num - 1))
              
      # Extract the 3 lines and reverse them (bottom-up)
      local lines_above=\$(sed -n \"\${start_line}, \${end_line}p\" '$plugin_path' | tail -r 2>/dev/null || sed -n \"\${start_line}, \${end_line}p\" '$plugin_path' | tac 2>/dev/null)
              
      # Use grep to instantly pick the first line starting with a #, then trim it
      local comment_line=\$(echo \"\$lines_above\" | grep -E '^[ \\t]*#[ \\t]*[^ \\t#]+' | head -n 1)
              
      if [[ -n \"\$comment_line\" ]]; then
        target_comment=\$(echo \"\$comment_line\" | sed -E 's/^[ \\t#]*//')
      fi
          
      printf \"%-30s | %s\n\" \"\$func\" \"\$target_comment\"
    done
    echo '======================================================================'
  "
}

#########################################################################
# zshrc重载
#########################################################################
function src() {
	local cache="$ZSH_CACHE_DIR"
	autoload -U compinit zrecompile
	compinit -i -d "$cache/zcomp-$HOST"

	for f in ~/.zshrc "$cache/zcomp-$HOST"; do
		zrecompile -p $f && command rm -f $f.zwc.old
	done

	# Use $SHELL if available; remove leading dash if login shell
	[[ -n "$SHELL" ]] && exec ${SHELL#-} || exec zsh
}
alias reload='src'

#########################################################################
# 自动执行sudo命令(Alt+Enter)
#########################################################################
sudo-command-line() {
  [[ -z $BUFFER ]] && zle up-history
  if [[ $BUFFER == sudo\ * ]]; then
    LBUFFER="${LBUFFER#sudo }"
  elif [[ $BUFFER == $EDITOR\ * ]]; then
    LBUFFER="${LBUFFER#$EDITOR }"
    LBUFFER="sudoedit $LBUFFER"
  elif [[ $BUFFER == sudoedit\ * ]]; then
    LBUFFER="${LBUFFER#sudoedit }"
    LBUFFER="$EDITOR $LBUFFER"
  else
    LBUFFER="sudo $LBUFFER"
  fi
    
  zle accept-line
}
zle -N sudo-command-line
# Defined shortcut keys: [Alt] [Enter]
bindkey -M emacs '^[^M' sudo-command-line
bindkey -M vicmd '^[^M' sudo-command-line
bindkey -M viins '^[^M' sudo-command-line

# 用户加入sudo组
function sd() {
  if [[ -n "$1" ]]; then
    user="$1"
  else
    user="$USER"
  fi

  if grep -q "^sudo:" /etc/group; then
    sudo usermod -aG sudo $user
  else
    sudo usermod -aG wheel $user
  fi

  cfgfile="/etc/sudoers.d/${user}-nopasswd"
  content="${user} ALL=(ALL) NOPASSWD: ALL"
  # content="%sudo ALL=(ALL) NOPASSWD: ALL"

  if echo "$content" | sudo tee "$cfgfile" > /dev/null; then
    sudo chmod 0440 $cfgfile
  fi

  if grep -q "^docker:" /etc/group; then
    sudo usermod -aG docker $user
  fi
}

#########################################################################
#临时冻结
#########################################################################
_zsh_freeze_and_do() {
  zle push-line-or-edit
}
zle -N _zsh_freeze_and_do
bindkey '^Q' _zsh_freeze_and_do

#########################################################################
#标点符号自动补全
#########################################################################
# 1. Core pairing and skipping logic
_zsh_native_autopair() {
  local l_char="$KEYS"
  local r_char=""

  # Define pairs (English & Chinese)
  case "$l_char" in
    # English pairs
    '(') r_char=')' ;;
    '[') r_char=']' ;;
    '{') r_char='}' ;;
    '"') r_char='"' ;;
    "'") r_char="'" ;;
    '`') r_char='`' ;;
    '<') r_char='>' ;;
    # Chinese pairs
    '（') r_char='）' ;;
    '【') r_char='】' ;;
    '{')  r_char='}' ;;  # Zsh treats Chinese { } same as English if input method maps it
    '《') r_char='》' ;;
    '“') r_char='”' ;;
    '‘') r_char='’' ;;
    '「') r_char='」' ;;
  esac

  # SKIPPING LOGIC: If the next character in RBUFFER matches the typed closing char
  # Use helper comparison to safely handle multi-byte Chinese characters
  if [[ -n "$r_char" && "${RBUFFER}" == "${l_char}"* ]]; then
    LBUFFER+="$l_char"
    RBUFFER="${RBUFFER#?}"
  elif [[ -n "$r_char" ]]; then
    # PAIRING LOGIC: Insert both and keep cursor in the middle
    LBUFFER+="$l_char"
    RBUFFER="$r_char$RBUFFER"
  else
    # Fallback for unmapped keys
    zle self-insert
  fi
}

# Bind keys for pairing (Opening characters)
zle -N _zsh_native_autopair
for char in '(' '[' '{' '"' "'" '`' '<' '（' '【' '《' '“' '‘' '「'; do
  bindkey "$char" _zsh_native_autopair
done

# Explicitly bind closing characters for the skipping feature
_zsh_native_skip_close() {
  local c_char="$KEYS"
  # Safely check if RBUFFER starts with the pressed closing character
  if [[ "${RBUFFER}" == "${c_char}"* ]]; then
    LBUFFER+="$c_char"
    RBUFFER="${RBUFFER#?}"
  else
    zle self-insert
  fi
}
zle -N _zsh_native_skip_close
for char in ')' ']' '}' '>' '）' '】' '》' '”' '’' '」'; do
  bindkey "$char" _zsh_native_skip_close
done

# 2. SMART DELETE LOGIC: Delete both if cursor is inside an empty pair (Multi-byte Safe)
_zsh_native_autodelete() {
  local matched=0
    
  # Check if the text surrounding the cursor forms a known pair
  # Using array approach to handle multi-byte characters safely
  local pairs=(
    "()" "[]" "{}" '""' "''" '``' "<>"
    "（）" "【】" "《》" "“”" "‘’" "「」"
  )

  for pair in "${pairs[@]}"; do
    local left="${pair[1]}"
    local right="${pair[2]}"
        
    if [[ "${LBUFFER}" == *"${left}" && "${RBUFFER}" == "${right}"* ]]; then
      # Safe deletion of 1 character from left and 1 from right (handles multi-byte)
      LBUFFER="${LBUFFER%?}"
      RBUFFER="${RBUFFER#?}"
      matched=1
      break
    fi
  done
    
  if [[ $matched -eq 0 ]]; then
    # Normal backspace behavior
    zle backward-delete-char
  fi
}
zle -N _zsh_native_autodelete
bindkey '^?' _zsh_native_autodelete # ^? represents Backspace

# 3. SMART SPACE LOGIC: Expand space inside standard pairs
_zsh_native_autospace() {
  if [[ "${LBUFFER}" == *"{" && "${RBUFFER}" == "}"* ]] || \
    [[ "${LBUFFER}" == *"[" && "${RBUFFER}" == "]"* ]] || \
    [[ "${LBUFFER}" == *"(" && "${RBUFFER}" == ")"* ]] || \
    [[ "${LBUFFER}" == *"（" && "${RBUFFER}" == "）"* ]]; then
    LBUFFER+=" "
    RBUFFER=" $RBUFFER"
  else
    zle self-insert
  fi
}
zle -N _zsh_native_autospace
bindkey ' ' _zsh_native_autospace

#########################################################################
#目录跳转后自动显示目录内容
#########################################################################
_listpwd() {
  emulate -L zsh
  \ls -F --color=auto
}

chpwd_functions+=(_listpwd)
# add-zsh-hook -Uz chpwd listpwd #(){ listpwd }
# add-zsh-hook -Uz precmd (){ echo "AAA" }
# Hook Functions (http://zsh.sourceforge.net/Doc/Release/Functions.html)
# chpwd: 当前目录改变时触发
# periodic: 设置PERIOD环境变量后, 每隔PERIOD秒触发一次(输出在提示符前)
# precmd: 每次绘制提示符前触发
# preexec: 每次执行命令前触发
# zshaddhistory: 写入历史记录前执行
# zshexit: zsh退出前触发

#########################################################################
# 显示命令执行时间
#########################################################################
# If command execution time above min. time, plugins will not output time.
ZSH_COMMAND_TIME_MIN_SECONDS=5

# Message to display (set to "" for disable).
ZSH_COMMAND_TIME_MSG="Execution time: %s sec"

# Message color.
ZSH_COMMAND_TIME_COLOR="cyan"

_command_time_preexec() {
  timer=${timer:-$SECONDS}
  ZSH_COMMAND_TIME_MSG=${ZSH_COMMAND_TIME_MSG-"Time: %s"}
  ZSH_COMMAND_TIME_COLOR=${ZSH_COMMAND_TIME_COLOR-"white"}
  export ZSH_COMMAND_TIME=""
}

_command_time_precmd() {
  if [ $timer ]; then
    timer_show=$(($SECONDS - $timer))
    if [ -n "$TTY" ] && [ $timer_show -ge ${ZSH_COMMAND_TIME_MIN_SECONDS:-3} ]; then
      export ZSH_COMMAND_TIME="$timer_show"
      if [ ! -z ${ZSH_COMMAND_TIME_MSG} ]; then
        zsh_command_time
      fi
    fi
    unset timer
  fi
}

zsh_command_time() {
  if [ -n "$ZSH_COMMAND_TIME" ]; then
    timer_show=$(printf '%dh:%02dm:%02ds\n' $(($ZSH_COMMAND_TIME/3600)) $(($ZSH_COMMAND_TIME%3600/60)) $(($ZSH_COMMAND_TIME%60)))
    print -P "%F{$ZSH_COMMAND_TIME_COLOR}$(printf "${ZSH_COMMAND_TIME_MSG}\n" "$timer_show")%f"
  fi
}

precmd_functions+=(_command_time_precmd)
preexec_functions+=(_command_time_preexec)

#########################################################################
# fzf配置
#########################################################################
export FZF_DEFAULT_OPTS='--bind=ctrl-t:top,change:top --bind ctrl-e:down,ctrl-u:up'
#export FZF_DEFAULT_OPTS='--bind ctrl-e:down,ctrl-u:up --preview "[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || (ccat --color=always {} || highlight -O ansi -l {} || cat {}) 2> /dev/null | head -500"'
#export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_DEFAULT_COMMAND='fd'
export FZF_COMPLETION_TRIGGER='\'
export FZF_TMUX=1
export FZF_TMUX_HEIGHT='80%'
export fzf_preview_cmd='[[ $(file --mime {}) =~ binary ]] && echo {} is a binary file || highlight -O ansi -l {} || (ccat --color=always {} || cat {}) 2> /dev/null | head -500'

_fzf_fpath=${0:h}/fzf
fpath+=$_fzf_fpath
autoload -U $_fzf_fpath/*(.:t)
unset _fzf_fpath

_fzf_compgen_path() {
  fd --hidden --follow --exclude ".git" . "$1"
}

# Use fd to generate the list for directory completion
_fzf_compgen_dir() {
  fd --type d --hidden --follow --exclude ".git" . "$1"
}

# (EXPERIMENTAL) Advanced customization of fzf options via _fzf_comprun function
# - The first argument to the function is the name of the command.
# - You should make sure to pass the rest of the arguments to fzf.
_fzf_comprun() {
  local command=$1
  shift

  case "$command" in
    cd)           fzf "$@" --preview 'tree -C {} | head -200' ;;
    export|unset) fzf "$@" --preview "eval 'echo \$'{}" ;;
    ssh)          fzf "$@" --preview 'dig {}' ;;
    *)            fzf "$@" ;;
  esac
}

fzf-redraw-prompt() {
	local precmd
	for precmd in $precmd_functions; do
		$precmd
	done
	zle reset-prompt
}
zle -N fzf-redraw-prompt

fzf-find-widget() {
  # 检查传进来的第一个参数是不是 'only_dir'
  local type_flag="f"
  local prompt_msg="Find File > "
  if [[ "$1" == "only_dir" ]]; then
    type_flag="d"
    prompt_msg="Change Dir > "
  fi

  local selected=$(
    if command -v fd &>/dev/null; then
      # 如果是 only_dir，则 --type d (只找目录)，否则 --type f (只找文件)
      fd --type $type_flag --hidden --follow --exclude .git 2>/dev/null | fzf --height=40% --layout=reverse --prompt="$prompt_msg"
    else
      if [[ "$type_flag" == "d" ]]; then
        find . -type d -not -path '*/.*' 2>/dev/null | sed 's|^\./||' | fzf --height=40% --layout=reverse --prompt="$prompt_msg"
      else
        find . -type f -not -path '*/.*' 2>/dev/null | sed 's|^\./||' | fzf --height=40% --layout=reverse --prompt="$prompt_msg"
      fi
    fi
  )

  if [[ -n "$selected" ]]; then
    LBUFFER="${LBUFFER}${selected:q}"
  fi
  zle reset-prompt
}
zle -N fzf-find-widget
bindkey '^t' fzf-find-widget

fzf-cd-widget() {
	local tokens=(${(z)LBUFFER})
	if (( $#tokens <= 1 )); then
		zle fzf-find-widget 'only_dir'
		if [[ -d $LBUFFER ]]; then
			cd $LBUFFER
			local ret=$?
			LBUFFER=
			zle fzf-redraw-prompt
			return $ret
		fi
	fi
}
zle -N fzf-cd-widget
bindkey '^j' fzf-cd-widget

fzf-history-widget() {
	local num=$(fhistory $LBUFFER)
	local ret=$?
	if [[ -n $num ]]; then
		zle vi-fetch-history -n $num
	fi
	zle reset-prompt
	return $ret
}
zle -N fzf-history-widget
bindkey '^h' fzf-history-widget

fif() {
  if [ ! "$#" -gt 0 ]; then echo "Need a string to search for!"; return 1; fi
  rg --files-with-matches --no-messages "$1" | fzf --preview "highlight -O ansi -l {} 2> /dev/null | rg --colors 'match:bg:yellow' --ignore-case --pretty --context 10 '$1' || rg --ignore-case --pretty --context 10 '$1' {}"
}

find-in-file() {
	grep --line-buffered --color=never -r "" * | fzf
}
zle -N find-in-file
bindkey '^g' find-in-file

# 利用 fzf 实时过滤当前目录下的文件/历史命令
fzf-incremental-complete() {
  local selected=$(fc -rl 1 | awk '{$1=""; print $0}' | fzf --query="$LBUFFER" --layout=reverse --height=40%)
  if [ -n "$selected" ]; then
    LBUFFER="$selected"
  fi
  zle reset-prompt
}
zle -N fzf-incremental-complete
# 绑定到 Ctrl + Space (空格)，按一下就弹出实时过滤面板
bindkey '^ ' fzf-incremental-complete

#使用:<<' 注释内容 ' 的形式注释掉剩余内容
:<<'

'

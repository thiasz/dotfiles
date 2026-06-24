# LANG=en_EN.UTF-8
# ---------- HOMEBREW (apple)----------
if command -v /opt/homebrew/bin/brew >/dev/null 2>&1; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
elif command -v brew >/dev/null 2>&1; then
	eval "$(brew shellenv)"
fi
# ---------- HOMEBREW (intel) ----------
if command -v /usr/local/bin/brew >/dev/null 2>&1; then
  eval "$(/usr/local/bin/brew shellenv)"
elif command -v brew >/dev/null 2>&1; then
	eval "$(brew shellenv)"
fi

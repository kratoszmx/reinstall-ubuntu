# OpenClaw history helpers
# - keep obviously sensitive commands out of history
# - append non-sensitive OpenClaw exec commands into ~/.zsh_history

_openclaw_history_is_sensitive() {
    emulate -L zsh
    local lower="${(L)1}"

    case "$lower" in
        *token*|*apikey*|*api_key*|*authorization:*|*bearer\ *|*password*|*passwd*|*secret*|*access\ *key*)
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

if [[ -o interactive ]]; then
    autoload -Uz add-zsh-hook

    _openclaw_filter_sensitive_history() {
        emulate -L zsh
        local cmd="${1%$'\n'}"

        _openclaw_history_is_sensitive "$cmd" && return 1
        return 0
    }

    add-zsh-hook zshaddhistory _openclaw_filter_sensitive_history
fi

if [[ "${OPENCLAW_SHELL:-}" == "exec" && -n "${ZSH_EXECUTION_STRING:-}" ]]; then
    if ! _openclaw_history_is_sensitive "$ZSH_EXECUTION_STRING"; then
        print -r -- ": ${EPOCHSECONDS}:0;$ZSH_EXECUTION_STRING" >> "${HISTFILE:-${ZDOTDIR:-$HOME}/.zsh_history}"
    fi
fi

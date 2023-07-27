## [@bashly-upgrade completions send_completions]
send_completions() {
  echo $'# liferay completion                                       -*- shell-script -*-'
  echo $''
  echo $'# This bash completions script was generated by'
  echo $'# completely (https://github.com/dannyben/completely)'
  echo $'# Modifying it manually is not recommended'
  echo $''
  echo $'_liferay_completions_filter() {'
  echo $'  local words="$1"'
  echo $'  local cur=${COMP_WORDS[COMP_CWORD]}'
  echo $'  local result=()'
  echo $''
  echo $'  if [[ "${cur:0:1}" == "-" ]]; then'
  echo $'    echo "$words"'
  echo $'  '
  echo $'  else'
  echo $'    for word in $words; do'
  echo $'      [[ "${word:0:1}" != "-" ]] && result+=("$word")'
  echo $'    done'
  echo $''
  echo $'    echo "${result[*]}"'
  echo $''
  echo $'  fi'
  echo $'}'
  echo $''
  echo $'_liferay_completions() {'
  echo $'  local cur=${COMP_WORDS[COMP_CWORD]}'
  echo $'  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")'
  echo $'  local compline="${compwords[*]}"'
  echo $''
  echo $'  case "$compline" in'
  echo $'    \'changed-modules\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'super-deploy\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'completions\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'morning\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'folder\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'build\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'sync\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'kill\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'run\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'cm\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'ij\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'gw\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'sd\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    *)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_liferay_completions_filter "--help --version -h -v build changed-modules cm completions folder gw ij kill morning run sd super-deploy sync")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'  esac'
  echo $'} &&'
  echo $'complete -F _liferay_completions liferay'
  echo $''
  echo $'# ex: filetype=sh'
}
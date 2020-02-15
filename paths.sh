################################################################################
##                                                                            ##
##              !!! PLEASE USE CAUTION WHEN USING THIS FILE !!!               ##
##                                                                            ##
##  THIS FILE CANNOT BE USED AS IS YOU MAY HAVE TO CUSTOMISE IT TO USE IT.    ##
##  Even if this file is shared on my public git hub it has not been designed ##
##  for public use. It was not created with the idea that someone else would  ##
##  be using it. The files in this repository have been created for my usage  ##
##  only. They are available so you can see how I have customized my system.  ##
##  I decided to put them in the public space so anyone can download them     ##
##  and edit them. I hope this can inspire someone or serve as a reference.   ##
##                                                                            ##
#+           Copyright (c) 2019-present Benjamin Vincent Kasapoglu            ##
#&                                                                            ##
#&     This Source Code Form is subject to the terms of the Mozilla Public    ##
#&     License, v. 2.0. If a copy of the MPL was not distributed with this    ##
#&           file, You can obtain one at http://mozilla.org/MPL/2.0/.         ##
#&                                                                            ##
##     The above copyright notice and this license notice shall be included   ##
##           in all copies or substantial portions of the Software.           ##
##                                                                            ##
################################################################################
init_projects_paths() {

    export AHMYZSH=${AHMYZSH}

    export CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
    source "${CUSTOM_TMUX}/paths.sh"

    export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
    source "${CUSTOM_ZSH}/paths.sh"

    export NODE_REPL="${AHMYZSH}/node-repl"
    source "${NODE_REPL}/paths.sh"

    export OHMYZSH="${AHMYZSH}/ohmyzsh"
    source "${OHMYZSH}/paths.sh"

    export POWERLEVLE10K="${AHMYZSH}/powerlevel10k"
    source "${POWERLEVLE10K}/paths.sh"

    export POWERLINE="${AHMYZSH}/powerline"
    source "${POWERLINE}/paths.sh"

    export PYTHON_REPL="${AHMYZSH}/python-repl"
    source "${PYTHON_REPL}/paths.sh"
}

init_paths() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then
        export CACHE_FOLDER="${HOME}/.cache/p10k-${USER}"
        mkdir -p CACHE_FOLDER
        export AHMYZSH="${HOME}/ahmyzsh"
        export NODE_REPL="${AHMYZSH}/node-repl"
        export POWERLEVEL10K="${AHMYZSH}/powerlevel10k"
        export PYTHON_REPL="${AHMYZSH}/python-repl"
        export CUSTOM_ZSH="${AHMYZSH}/custom-zsh"
        {
            export ZSH_SOURCES="${CUSTOM_ZSH}/sources"
            {
                export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                export ZSH_COMPUTE="${ZSH_SOURCES}/compute"
                export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"
            }

            export ZSH_BIN="${CUSTOM_ZSH}/bin"
            {
                export ZSH_BIN_ETC="${ZSH_BIN}/etc"
            }
        }
        export OHMYZSH="${AHMYZSH}/ohmyzsh"
        {
            export ZSH="${OHMYZSH}"
        }
        export CUSTOM_TMUX="${AHMYZSH}/custom-tmux"
        {
            export TMUX_BIN="${CUSTOM_TMUX}/bin"
            export TMUX_LOADER="${TMUX_BIN}/tmux-loader.sh"
            export TMUX_CONFIGS="${CUSTOM_TMUX}/configs"
            export TMUX_COMMON_CONF="${TMUX_CONFIGS}/common.tmux.config"
            export TMUX_COMMON_THEME="${TMUX_CONFIGS}/theme.tmux.config"
        }
        export POWERLINE="${AHMYZSH}/powerline"
        {
            export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"
            {
                export PWRLN_TMUX_CONF="${POWERLINE_BINDINGS}/tmux/powerline.conf"
            }
        }
    fi

    load_my_envs
    init_projects_paths
}

# source "${AHMYZSH}/paths.sh"
load_my_envs() {
    if [ "$PARENT_ENV_LOADED" != 'true' ]; then

        {
            export ZSH_BIN="${CUSTOM_ZSH}/bin"
            export ZSH_BIN_ETC="${ZSH_BIN}/etc"
            export ZSH_SOURCES="${CUSTOM_ZSH}/sources"

            {
                export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                export ZSH_COMPUTE="${ZSH_SOURCES}/compute"
                export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                export ZSH_LAYOUTS="${ZSH_SOURCES}/layouts"

                # { #* FPATH +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                #     local _FPATH="${CUSTOM_ZSH}"
                #     local _FPATH="${_FPATH}:${ZSH_SOURCES}"
                #     local _FPATH="${_FPATH}:${ZSH_COMPLETION}"
                #     local _FPATH="${_FPATH}:${ZSH_COMPUTE}"
                #     local _FPATH="${_FPATH}:${ZSH_FLAGS}"
                #     local _FPATH="${_FPATH}:${ZSH_LAYOUTS}"

                #     export fpath="${_FPATH}:${fpath}"
                # } #* FPATH +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

            }
        }

        export POWERLINE_BINDINGS="${POWERLINE}/powerline/bindings"

        export PS2="$(tput setab 7)$(tput setaf 0)  "

        # Ruby
        export WITH_RBENV='true'
        export PATH_RBENV='/Users/neb_401/.rbenv/shims'

        # GEM
        export WITH_BIN_GEM='true'
        export PATH_BIN_GEM='/usr/local/lib/ruby/gems/2.6.0/bin:/usr/local/opt/ruby/bin'

        export PERL5LIB="${HOME}/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"

        export PERL_LOCAL_LIB_ROOT="${HOME}/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
        export PERL_MB_OPT='--install_base "${HOME}/perl5"'
        export PERL_MM_OPT='INSTALL_BASE=/Users/neb_401/perl5'
        export PATH_PKG_CONFIG='/usr/local/opt/sqlite/lib/pkgconfig'
        # export PATH_PKG_CONFIG="/usr/local/opt/openssl/lib/pkgconfig"
        export WITH_ANACONDA='true'
        export PATH_ANACONDA3="${HOME}/anaconda3/tungsten/bin"

        export LOAD_ONCE_00="true"

        export NODE_DEPLOYEMENT_ENV='false'
        export NODE_ENV='development'
        export NODE_LOCAL_ENV='true'
        export NODE_NO_READLINE=1
        export NODE_REMOTE_ENV='true'
        export NODE_REPL_HISTORY_SIZE=10000
        export NODE_REPL_HISTORY="${HOME}/.node_repl_history"
        export NODE_REPL_MODE='sloppy'
        export NODE_TEST_ENV='false'
        export NPM_CHECK_INSTALLER='pnpm'
        export PYTHONSTARTUP="${HOME}/.pythonrc"

        export GITHUB_TOKEN="${MAC_BOOK_PRO_ENV_REPO_GIST_HOOK_NOTIFICATIONS}"
        export GITHUB_PASSWORD="${GITHUB_TOKEN}"
        export GITHUB_USER='Luxcium'

        export LOCALPORT=80
        export PORT=80
        export SERVER='dev-server'
        {
            {
                export PWRLN_BINDINGS="${POWERLINE}/powerline/bindings"
                {
                    export PWRLN_ZSH_CONF="${PWRLN_BINDINGS}/zsh/powerline.zsh"

                }

                {
                    export NODE_REPL_SCRIPT="${NODE_REPL}/repl.js"

                    {
                    }
                    {
                    }
                }

                {
                    export SOURCE_ALL="${ZSH_SOURCES}/.source_all.sh"
                    export SOURCE_FUNCTIONS="${ZSH_SOURCES}/.source_functions.zsh"
                    export ZSH_FLAGS="${ZSH_SOURCES}/flags"
                    export ZSH_LUXCIUM="${ZSH_SOURCES}"
                    export ZSH_COMPLETION="${ZSH_SOURCES}/completion"
                    {
                        export ZSH_SRC="${ZSH_LUXCIUM}"
                        {
                            export PATH_ZSH_FUNCTIONS="${ZSH_LUXCIUM}"
                            export PATH_COMPLETION="${ZSH_LUXCIUM}/completion"
                            export ZSH_FLAGS_VALUES="${ZSH_LUXCIUM}/flags/values"
                        }
                    }
                }

            }

        }

        export PATH_INSDR_CODE_EXT="${HOME}/.vscode-insiders/extensions"
        export PATH_LXIO_PRJ="${HOME}/Developer/LuxciumProject"

        export PATH_LXIO="${PATH_LXIO_PRJ}/luxcium.io"
        export PATH_OH_MY_ZSH="${ZSH}"
        export PATH_QUESTRADE="${PATH_LXIO_PRJ}/questrade-ts"
        export PATH_IEXCLOUD_API_WRAPPER="${PATH_LXIO_PRJ}/iexcloud-api-wrapper"
        export PATH_IEX_API="${PATH_LXIO_PRJ}/iex-luxcium-api"

        # /Users/neb_401/.vscode-insiders/extensions/dev-pop-n-lock-theme-vscode
        export DEV_POPNLOCK="${PATH_INSDR_CODE_EXT}/dev-pop-n-lock-theme-vscode"
    fi

}

##!!0###########################################################################
##!!                                                                          ##
#+!!         Copyright (c) 2019-present Benjamin Vincent Kasapoglu            ##
#&!!                                                                          ##
#&!!   This Source Code Form is subject to the terms of the Mozilla Public    ##
#&!!   License, v. 2.0. If a copy of the MPL was not distributed with this    ##
#&!!         file, You can obtain one at http://mozilla.org/MPL/2.0/.         ##
#&!!                                                                          ##
##!!   The above copyright notice and this license notice shall be included   ##
##!!         in all copies or substantial portions of the Software.           ##
##!!                                                                          ##
##!!          ------------------------------------------------------          ##
##!!                                                                          ##
##!!    Disclaimer of Warranty                                                ##
##!!   -------------------------                                              ##
##!!                                                                          ##
##!!   Covered Software is provided under this License on an "as is"          ##
##!!   basis, without warranty of any kind, either expressed, implied, or     ##
##!!   statutory, including, without limitation, warranties that the          ##
##!!   Covered Software is free of defects, merchantable, fit for a           ##
##!!   particular purpose or non-infringing. The entire risk as to the        ##
##!!   quality and performance of the Covered Software is with You.           ##
##!!   Should any Covered Software prove defective in any respect, You        ##
##!!   (not any Contributor) assume the cost of any necessary servicing,      ##
##!!   repair, or correction. This disclaimer of warranty constitutes an      ##
##!!   essential part of this License. No use of any Covered Software is      ##
##!!   authorized under this License except under this disclaimer.            ##
##!!                                                                          ##
##!!0###########################################################################

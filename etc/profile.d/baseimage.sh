# If not root
if [ "$(id -u)" != "0" ]; then

    # Clang
    export CC="clang"
    export CFLAGS="-fsanitize=signed-integer-overflow -fsanitize=undefined -ggdb3 -O0 -std=c11 -Wall -Werror -Wextra -Wno-sign-compare -Wno-unused-parameter -Wno-unused-variable -Wshadow"
    export LDLIBS="-lcrypt -lcs50 -lm"

    # File mode creation mask
    umask 0077
fi

# Aliases
alias pip="pip3 --no-cache-dir"
alias pip3="pip3 --no-cache-dir"
alias pylint="pylint3"
alias python="python3"

# Localization
export LANG="C.UTF-8"
export LC_ALL="C.UTF-8"
export LC_CTYPE="C.UTF-8"

# Java
export CLASSPATH=".:/usr/share/java/cs50.jar"
export JAVA_HOME="/opt/jdk-12.0.1"

# Node
export NODE_ENV="dev"

# Python
export PATH="$HOME"/.local/bin:"$PATH"
export PYTHONDONTWRITEBYTECODE="1"

# Ruby
export GEM_HOME="$HOME"/.gem
export PATH="$GEM_HOME"/bin:"$PATH"

#source ~/.cargo/env
rustup-init -y
rustup default stable
rustup component add rust-src
rustup component add rls
rustup component add rust-src
rustup component add rls

source ~/.cargo/env

cargo install fd
cargo install zenith

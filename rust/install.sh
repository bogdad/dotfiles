source ~/.cargo/env
rustup override add nightly-2017-06-08-x86_64-apple-darwin
rustup default nightly-2017-06-08-x86_64-apple-darwin
rustup component add rust-src
rustup component add rls
rustup component add rust-src --toolchain nightly-2017-06-08-x86_64-apple-darwin
rustup component add rls --toolchain nightly-2017-06-08-x86_64-apple-darwin
rustup override add nightly-2017-06-08-x86_64-apple-darwin

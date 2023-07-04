function cargo-fix
    cargo fix --allow-dirty --allow-staged
    cargo +nightly fmt
end


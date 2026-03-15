# List available commands
default:
    @just --list

watch:
    typst watch main.typ

clean:
    rm -f main.pdf

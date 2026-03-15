default:
    @just --list

[doc("Watch main.typ and hotreload")]
watch:
    typst watch main.typ

[doc("Compile the PDF")]
build:
    typst compile main.typ

[doc("Clean generated files")]
clean:
    rm -f main.pdf

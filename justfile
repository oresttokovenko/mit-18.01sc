default:
    @just --list

[doc("Watch main.typ and hotreload")]
watch:
    typst watch main.typ

[doc("Compile the PDF")]
build:
    typst compile main.typ

[doc("Format all Typst files")]
fmt:
    typstyle -i .

[doc("Clean generated files")]
clean:
    rm -f main.pdf

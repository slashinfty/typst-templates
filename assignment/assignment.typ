#let format(
    title: "Document Title",
    course: "Course Name",
    doc
) = {
    set page(
        paper: "us-letter",
        margin: (
            x: 0.75in,
            y: 1in
        ),
        header: locate(loc => {
            if(loc.page() > 1) {
                columns(2)[
                    #par[
                        #title
                    ]
                    #colbreak()
                    #align(right)[
                        #course
                    ]
                ]
                line(length: 100%)
            } else {
                columns(2)[
                    #par[
                        Name: #box(width: 1fr, line(length: 100%))
                    ]
                    #colbreak()
                    #align(right)[
                        Period: #box(line(length: 15mm))#h(6mm)Date: #box(width: 1fr, line(length: 100%))
                    ]
                ]
            }
        }),
        numbering: "1"
    )

    set text(
        size: 12pt,
        font: "New Computer Modern Math"
    )

    /* Document Content */
    align(center)[
        = #title
        == #course
    ]
    v(5mm)
    doc
}

#let q = counter("question")

#let question(number: none, content) = {
    if (number == none) { q.step() } else { q.update(number) }
    par[
        #q.display()) #content
    ]
}

#let p = counter("part")

#let part(number: none, content) = {
    if (number == none) { p.step() } else { p.update(number) }
    par(first-line-indent: 1cm)[
        #p.display("A")) #content
    ]
}

#let diagram(path, width: 25%, pos: "right", content) = {
    if (pos == "left") {
        grid(
            columns: (width, 1fr),
            rows: auto,
            gutter: 1cm,
            image(path, width: 100%),
            content
        )
    } else if (pos == "right") {
        grid(
            columns: (1fr, width),
            rows: auto,
            gutter: 1cm,
            content,
            image(path, width: 100%)
        )
    } else if (pos == "center") {
        align(center)[
            #box(width: width, image(path, width: 100%))
        ]
    }
}
#import "assignment.typ": *
#show: doc => format(
    title: "Example Document",
    course: "Fake Course",
    doc
)

#question[#lorem(20)]

#v(2cm)

#diagram("example.png")[#question[#lorem(20)]]

#v(2cm)

#diagram(
    "example.png",
    width: 40%,
    pos: "center"
)[]

#pagebreak()

#question[#lorem(20)]

#columns(3)[
    #part[#lorem(3)]
    #colbreak()
    #part[#lorem(3)]
    #colbreak()
    #part[#lorem(3)]
]

#v(2cm)

#question(number: 10)[#lorem(20)]
#part(number: 1)[#lorem(5)]
#part[#lorem(5)]
#part[#lorem(5)]
#part[#lorem(5)]
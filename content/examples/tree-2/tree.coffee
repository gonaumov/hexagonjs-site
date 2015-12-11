data = [
  {
    "name": "parent 1",
    "children": [
      {
        "name": "parent 2",
        "children": [
          {
            "name": "item 1",
            "color": "defaultCol"
          },
          {
            "name": "item 2",
            "color": "positiveCol"
          }
        ]
      },
      {
        "name": "parent 3",
        "children": [
          {
            "name": "item 3",
            "color": "warningCol"
          },
          {
            "name": "item 4",
            "color": "negativeCol"
          }
        ]
      },
      {
        "name": "parent 4",
        "children": [
          {
            "name": "item 5",
            "color": "infoCol"
          },
          {
            "name": "item 6",
            "color": "defaultCol"
          }
        ]
      }
    ]
  },
  {
    "name": "item 7"
  }
]


tree = new hx.Tree('#tree', {
  renderer:(element, datum) ->
    hx.select(element)
      .text(datum.name)
      .style('color', hx.theme.palette[datum.color])
  items: data
})
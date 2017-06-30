$ ->
  $('#product-table').dataTable
    aaSorting: [ [
      1
      'desc'
    ] ]
    processing: true
    serverSide: true
    ajax: $('#product-table').data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'name'}
      {data: 'details'}
      {data: 'qt'}
    ]
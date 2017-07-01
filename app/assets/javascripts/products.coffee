$ ->
  $('#product-table').dataTable
    aaSorting: [ [
      1
      'desc'
    ] ]
    "aoColumnDefs" : [
     {
       'bSortable' : false,
       'aTargets' : [ 3]
     }]
    processing: true
    serverSide: true
    ajax: $('#product-table').data('source')
    pagingType: 'full_numbers'
    columns: [
      {data: 'name'}
      {data: 'details'}
      {data: 'qt'}
      {data: 'action'}
    ]
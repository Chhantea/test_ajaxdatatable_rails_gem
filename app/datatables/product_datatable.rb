class ProductDatatable < AjaxDatatablesRails::Base
def_delegators :@view, :link_to, :h, :mailto, :edit_resource_path, :other_method, :truncate
  def view_columns
    # Declare strings in this format: ModelName.column_name
    # or in aliased_join_table.column_name format
    @view_columns ||= {
      # id: { source: "User.id", cond: :eq },
      # name: { source: "User.name", cond: :like }
    name: { source: "Product.name", cond: :like, searchable: true, orderable: true },
    details:  { source: "Product.details",  cond: :like },
    qt:        { source: "Product.qt" }
    }
  end
  private

  def data
    records.map do |record|
      {
       name: link_to(truncate(record.name, length: 30),  {:action => "index",:id =>record.id, method: :get, remote: true}),
        details:record.details,
         qt: record.qt,
        action: link_to("asd",{:action => "index",:id =>record.id, method: :get, remote: true},class: "btn btn-success")
      }
    end
  end



  def get_raw_records
    # insert query here
    Product.all
  end

  # ==== These methods represent the basic operations to perform on records
  # and feel free to override them

  # def filter_records(records)
  # end

  # def sort_records(records)
  # end

  # def paginate_records(records)
  # end

  # ==== Insert 'presenter'-like methods below if necessary
end

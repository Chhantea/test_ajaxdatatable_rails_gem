gem 'jquery-datatables-rails'
gem 'ajax-datatables-rails'

bundle
https://github.com/jbox-web/ajax-datatables-rails#searching-on-non-text-based-columns
command to generate datatable something
rails generate datatable {any name you want}
if search error or sort error


$ bundle exec rails generate datatable:config
Doing so, will create the config/initializers/ajax_datatables_rails.rb file with the following content:

AjaxDatatablesRails.configure do |config|
  # available options for db_adapter are: :pg, :mysql, :mysql2, :sqlite, :sqlite3
  # config.db_adapter = :pg

  # available options for orm are: :active_record, :mongoid
  # config.orm = :active_record
end
uncomment config.db_adapter  and add your Database type example
     config.db_adapter = :mysql2
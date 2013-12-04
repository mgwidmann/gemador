# This migration comes from rails_exception_handler_admin (originally 20130904021511)
class CreateRailsExceptionHandlerAdminErrorMessages < ActiveRecord::Migration
  def change
    create_table :error_messages do |t|
      t.string :class_name
      t.string :message
      t.string :trace
      t.string :params
      t.string :target_url
      t.string :referer_url
      t.string :user_agent
      t.string :user_info
      t.string :app_name
      t.string :doc_root
      t.date :created_at
      t.date :updated_at

      t.timestamps
    end
    @connection = ActiveRecord::Base.establish_connection("#{Rails.env}").connection
  end


  def connection
    @connection ||= ActiveRecord::Base.establish_connection("exception_database").connection
  end

end

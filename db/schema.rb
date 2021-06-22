
ActiveRecord::Schema.define(version: 2021_06_22_050848) do


  enable_extension "plpgsql"

  create_table "swiits", force: :cascade do |t|
    t.string "user"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end

class AddImmigration < ActiveRecord::Migration
  def change
    add_foreign_key "bids_labels", "bids", :name => "bids_labels_bid_id_fk"
    add_foreign_key "bids_labels", "labels", :name => "bids_labels_label_id_fk"
    add_foreign_key "projects_tags", "projects", :name => "projects_tags_project_id_fk"
    add_foreign_key "projects_tags", "tags", :name => "projects_tags_tag_id_fk"
    add_foreign_key "amendments", "officers", :name => "amendments_posted_by_officer_id_fk", :column => "posted_by_officer_id"
    add_foreign_key "amendments", "projects", :name => "amendments_project_id_fk"
    add_foreign_key "bid_reviews", "bids", :name => "bid_reviews_bid_id_fk"
    add_foreign_key "bid_reviews", "officers", :name => "bid_reviews_officer_id_fk"
    add_foreign_key "bids", "projects", :name => "bids_project_id_fk"
    add_foreign_key "bids", "vendors", :name => "bids_vendor_id_fk"
    add_foreign_key "collaborators", "officers", :name => "collaborators_added_by_officer_id_fk", :column => "added_by_officer_id"
    add_foreign_key "collaborators", "officers", :name => "collaborators_officer_id_fk"
    add_foreign_key "collaborators", "projects", :name => "collaborators_project_id_fk"
    add_foreign_key "comments", "officers", :name => "comments_officer_id_fk"
    add_foreign_key "event_feeds", "events", :name => "event_feeds_event_id_fk"
    add_foreign_key "event_feeds", "users", :name => "event_feeds_user_id_fk"
    add_foreign_key "labels", "projects", :name => "labels_project_id_fk"
    add_foreign_key "officers", "roles", :name => "officers_role_id_fk"
    add_foreign_key "project_revisions", "projects", :name => "project_revisions_project_id_fk"
    add_foreign_key "project_revisions", "officers", :name => "project_revisions_saved_by_officer_id_fk", :column => "saved_by_officer_id"
    add_foreign_key "projects", "officers", :name => "projects_posted_by_officer_id_fk", :column => "posted_by_officer_id"
    add_foreign_key "questions", "officers", :name => "questions_officer_id_fk"
    add_foreign_key "questions", "projects", :name => "questions_project_id_fk"
    add_foreign_key "questions", "vendors", :name => "questions_vendor_id_fk"
    add_foreign_key "responses", "response_fields", :name => "responses_response_field_id_fk"
    add_foreign_key "responses", "users", :name => "responses_user_id_fk"
    add_foreign_key "saved_searches", "vendors", :name => "saved_searches_vendor_id_fk"
    add_foreign_key "vendor_profiles", "vendors", :name => "vendor_profiles_vendor_id_fk"
    add_foreign_key "watches", "users", :name => "watches_user_id_fk"
  end
end

# frozen_string_literal: true
# This migration comes from decidim_meetings (originally 20170110142105)

class CloseAMeeting < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_meetings_meetings, :closing_report, :jsonb
    add_column :decidim_meetings_meetings, :attendees_count, :integer
    add_column :decidim_meetings_meetings, :contributions_count, :integer
    add_column :decidim_meetings_meetings, :attending_organizations, :text
    add_column :decidim_meetings_meetings, :closed_at, :time
    add_index :decidim_meetings_meetings, :closed_at
  end
end

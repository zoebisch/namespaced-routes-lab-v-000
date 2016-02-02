require 'rails_helper'

RSpec.describe Admin::SettingsController, type: :controller do

  describe "#index" do
    it "gets new pref if none exists" do
      get :index
      expect(assigns[:preference].persisted?).to eq true
    end

    it "gets existing pref if exists" do
      pref = Preference.create(artist_sort_order: "ASC")
      get :index
      expect(assigns[:preference]).to eq pref
    end

  end

  describe "#update" do
    it "returns http success" do
      pref = Preference.create(artist_sort_order: "ASC", song_sort_order: "DESC")
      patch :update, id: pref.id, preference: {artist_sort_order: "DESC", id: pref.id}
      expect(response).to redirect_to(admin_settings_index_path)
      expect(Preference.first.artist_sort_order).to eq "DESC"
    end
  end

end

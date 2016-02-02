require 'rails_helper'

RSpec.describe Admin::AccessController, type: :controller do

  describe "#index" do
    it "gets new pref if none exists" do
      get :index
      expect(assigns[:preference].persisted?).to eq true
    end

    it "gets existing pref if exists" do
      pref = Preference.create(allow_create_songs: true)
      get :index
      expect(assigns[:preference]).to eq pref
    end

  end

   describe "#update" do
    it "returns http success" do
      pref = Preference.create(allow_create_songs: true, song_sort_order: "DESC")
      patch :update, id: pref.id, preference: {allow_create_songs: false, id: pref.id}
      expect(response).to redirect_to(admin_access_index_path)
      expect(Preference.first.allow_create_songs).to eq false
    end
  end

end

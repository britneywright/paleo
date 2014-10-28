require 'rails_helper'

describe FoodsController do
  describe 'GET #index' do
    context 'with params[:search]' do
      it "populates an array of foods that contain the letters typed"
      it "renders the :index template"
    end
  end

  describe 'GET #show' do
    it "renders the :show template"
  end

  describe 'GET #new' do
    it "renders the :new template"
  end

  describe 'PATCH #update' do
    context "with valid attributes" do
      it "updates the food in the database"
      it "redirects to the food"
    end
    context "with invalid attributes" do
      it "does not update the contact"
      it "re-renders the #edit template"
    end
  end
end
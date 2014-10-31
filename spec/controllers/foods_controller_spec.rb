require 'rails_helper'

describe FoodsController do
  describe 'GET #index' do
    context 'with params[:search]' do
      it "populates an array of foods that contain the letters typed" do
        bacon = create(:food, name: "bacon")
        get :index, search: "b"
        #expect(assigns(:food)).to match_array([bacon])
      end

      it "renders the :index template" do
        get :index
        expect(response).to render_template :index
      end
    end
  end

  describe 'GET #show' do
    it "assigns the requested food to @food" do
      food = create(:food)
      get :show, id: food
      expect(assigns(:food)).to eq food
    end

    it "renders the :show template" do
      food = create(:food)
      get :show, id: food
      expect(assigns(:food)).to eq food
    end
  end

  describe 'GET #new' do
    it "assigns a new Food to @food" do
      get :new
      expect(assigns(:food)).to be_a_new(Food)
    end
    it "renders the :new template" do
      get :new
      expect(response).to render_template :new
    end
  end

  describe 'GET #edit' do
    it "assigns the requested food to @food" do
      food = create(:food)
      get :edit, id: food
      expect(assigns(:food)).to eq food
    end

    it "renders the :edit template" do
      food = create(:food)
      get :edit, id: food
      expect(response).to render_template :edit
    end
  end

  describe 'PATCH #update' do

    before :each do 
      @food = create(:food, 
        name: "fish",
        paleo: false,
        slug: "fish")
    end

    context "with valid attributes" do
      it "locates the requested @food" do
        patch :update, id: @food,
        food: attributes_for(:food)
        expect(assigns(:food)).to eq(@food)
      end
      it "chages @food's attributes" do
        patch :update, id: @food,
        food: attributes_for(:food, 
          name: "Snickers",
          paleo: false)
        @food.reload
        expect(@food.name).to eq("Snickers")
        expect(@food.paleo).to eq(false)
      end
      it "redirects to the food" do
        patch :update, id: @food,
        food: attributes_for(:food)
        expect(response).to redirect_to @food
      end
    end
    context "with invalid attributes" do
      it "does not change the food's attributes" do
        patch :update, id: @food,
        food: attributes_for(:food,
          name: nil,
          paleo: true)
        @food.reload
        expect(@food.name).to eq('fish')
      end

      it "re-renders the edit template" do
        patch :update, id: @food,
        food: attributes_for(:invalid_food)
        expect(response).to render_template :edit
      end
    end
  end
end
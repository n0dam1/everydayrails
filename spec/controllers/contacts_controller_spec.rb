require 'rails_helper'

describe ContactsController do
  describe 'GET #index' do
    # params[:letter]がある場合
    context 'with params[:letter]' do
      # 指定された文字で始まる連絡先を配列にまとめること
      it "populates an array of contacts starting with the letter"
      # :indexテンプレートを表示すること
      it "renders the :index template"
    end

    # params[:letter]がない場合
    context 'without params[:letter]' do
      # 全ての連絡先を配列にまとめること
      it "populates an array of all contacts"
      # :indexテンプレートを表示すること
      it "renders the :index template"
    end
  end

  describe "GET #show" do
    # @contactに要求された連絡先を割り当てること
    it "assigns the requested contact to @contact" do
      contact = create(:contact)
      get :show, id: contact
      expect(assigns(:contact)).to eq contact
    end
    # :showテンプレートを表示すること
    it "renders the :show template" do
      contact = create(:contact)
      get :show, id: contact
      expect(response).to render_template :show
    end
  end

  describe "GET #new" do
    # @contactに新しい連絡先を割り当てること
    it "assigns a new Contact to @contact"
    # :newテンプレートを表示すること
    it "renders the :new template"
  end

  describe "GET #edit" do
    # 有効な属性の場合
    context "with valid attributes" do
      # データベースに新しい連絡先を保存すること
      it "saves the new contact in the database"
      # contacts#showにリダイレクトすること
      it "redirects to contacts#show"
    end
    # 無効な属性の場合
    context "with invalid attributes" do
      # データベースに新しい連絡先を保存すること
      it "does not save the new contact in the database"
      # :newテンプレートを再表示すること
      it "re-renders the :new template"
    end
  end

  describe "PATCH #update" do
    # 有効な属性の場合
    context "with valid attributes" do
      # 要求された@contactを取得すること
      it "assigns the requested contact to @contact"
      # @contactの属性を変更すること
      it "redirects to contacts#show"
      # 更新した連絡先のページへリダイレクトすること
      it "redirects to the updated contact"
    end
    # 無効な属性の場合
    context "with invalid attributes" do
      # データベースに新しい連絡先を保存すること
      it "does not change the new contact in the database"
      # :newテンプレートを再表示すること
      it "re-renders the :new template"
    end
  end

  describe "DELETE #destroy" do
    # 連絡先を削除すること
    it "deletes the contact"
    # contacts#indexにリダイレクトすること
    it "redirects to contacts#index"
  end
end

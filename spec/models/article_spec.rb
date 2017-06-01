require "spec_helper"

describe Article do 
  describe "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "associations" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "return the article title" do
      # создаем объект article хитрым способом
      article = create(:article, title: 'Lorem Ibsum')

      # assert, проверка
      expect(article.subject).to eq 'Lorem Ibsum'
    end
  end

  describe "#last_comment" do
    it "returns the last_comment" do
      # создаем статью, но в этот раз с комментариями
      article = create(:article_with_comments)

      # проверка
      expect(article.last_comment.body).to eq "comment body 3"
    end
  end
end
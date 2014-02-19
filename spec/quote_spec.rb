require 'spec_helper'

describe Quote do
  it "is invalid without quote text" do
    expect(Quote.create(text: "", author: "Mike Vezzani")).to be_invalid
  end
  it "is invalid without quote author" do
    expect(Quote.create(text: "The World is Beautiful", author: "")).to be_invalid
  end
end

require "test_helper"

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @company = companies(:hometown_painting)
  end

  test "displays all companies" do
    get companies_path
    assert_response :success
  end

  test "displays a single company" do
    get company_path(@company)
    assert_response :success
  end

  test "email should be unique" do
    one = company(:one)
    two = company(:two)
    one.email = two.email
    assert_not one.valid?
  end
end

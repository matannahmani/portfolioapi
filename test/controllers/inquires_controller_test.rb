require 'test_helper'

class InquiresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inquire = inquires(:one)
  end

  test "should get index" do
    get inquires_url, as: :json
    assert_response :success
  end

  test "should create inquire" do
    assert_difference('Inquire.count') do
      post inquires_url, params: { inquire: { email: @inquire.email, name: @inquire.name, text: @inquire.text } }, as: :json
    end

    assert_response 201
  end

  test "should show inquire" do
    get inquire_url(@inquire), as: :json
    assert_response :success
  end

  test "should update inquire" do
    patch inquire_url(@inquire), params: { inquire: { email: @inquire.email, name: @inquire.name, text: @inquire.text } }, as: :json
    assert_response 200
  end

  test "should destroy inquire" do
    assert_difference('Inquire.count', -1) do
      delete inquire_url(@inquire), as: :json
    end

    assert_response 204
  end
end

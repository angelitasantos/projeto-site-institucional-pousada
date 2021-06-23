require "test_helper"

class CinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cin = cins(:one)
  end

  test "should get index" do
    get cins_url
    assert_response :success
  end

  test "should get new" do
    get new_cin_url
    assert_response :success
  end

  test "should create cin" do
    assert_difference('Cin.count') do
      post cins_url, params: { cin: { code: @cin.code, description: @cin.description, status: @cin.status } }
    end

    assert_redirected_to cin_url(Cin.last)
  end

  test "should show cin" do
    get cin_url(@cin)
    assert_response :success
  end

  test "should get edit" do
    get edit_cin_url(@cin)
    assert_response :success
  end

  test "should update cin" do
    patch cin_url(@cin), params: { cin: { code: @cin.code, description: @cin.description, status: @cin.status } }
    assert_redirected_to cin_url(@cin)
  end

  test "should destroy cin" do
    assert_difference('Cin.count', -1) do
      delete cin_url(@cin)
    end

    assert_redirected_to cins_url
  end
end

require 'test_helper'

class PersonalObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_obra = personal_obras(:one)
  end

  test "should get index" do
    get personal_obras_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_obra_url
    assert_response :success
  end

  test "should create personal_obra" do
    assert_difference('PersonalObra.count') do
      post personal_obras_url, params: { personal_obra: {  } }
    end

    assert_redirected_to personal_obra_url(PersonalObra.last)
  end

  test "should show personal_obra" do
    get personal_obra_url(@personal_obra)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_obra_url(@personal_obra)
    assert_response :success
  end

  test "should update personal_obra" do
    patch personal_obra_url(@personal_obra), params: { personal_obra: {  } }
    assert_redirected_to personal_obra_url(@personal_obra)
  end

  test "should destroy personal_obra" do
    assert_difference('PersonalObra.count', -1) do
      delete personal_obra_url(@personal_obra)
    end

    assert_redirected_to personal_obras_url
  end
end

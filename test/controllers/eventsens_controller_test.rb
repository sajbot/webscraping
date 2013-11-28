require 'test_helper'

class EventsensControllerTest < ActionController::TestCase
  setup do
    @eventsen = eventsens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:eventsens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create eventsen" do
    assert_difference('Eventsen.count') do
      post :create, eventsen: { city: @eventsen.city, event: @eventsen.event, number: @eventsen.number }
    end

    assert_redirected_to eventsen_path(assigns(:eventsen))
  end

  test "should show eventsen" do
    get :show, id: @eventsen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @eventsen
    assert_response :success
  end

  test "should update eventsen" do
    patch :update, id: @eventsen, eventsen: { city: @eventsen.city, event: @eventsen.event, number: @eventsen.number }
    assert_redirected_to eventsen_path(assigns(:eventsen))
  end

  test "should destroy eventsen" do
    assert_difference('Eventsen.count', -1) do
      delete :destroy, id: @eventsen
    end

    assert_redirected_to eventsens_path
  end
end

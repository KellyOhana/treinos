require "test_helper"

class TreinosProntosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @treinos_pronto = treinos_prontos(:one)
  end

  test "should get index" do
    get treinos_prontos_url
    assert_response :success
  end

  test "should get new" do
    get new_treinos_pronto_url
    assert_response :success
  end

  test "should create treinos_pronto" do
    assert_difference("TreinoPronto.count") do
      post treinos_prontos_url, params: { treinos_pronto: {  } }
    end

    assert_redirected_to treinos_pronto_url(TreinoPronto.last)
  end

  test "should show treinos_pronto" do
    get treinos_pronto_url(@treinos_pronto)
    assert_response :success
  end

  test "should get edit" do
    get edit_treinos_pronto_url(@treinos_pronto)
    assert_response :success
  end

  test "should update treinos_pronto" do
    patch treinos_pronto_url(@treinos_pronto), params: { treinos_pronto: {  } }
    assert_redirected_to treinos_pronto_url(@treinos_pronto)
  end

  test "should destroy treinos_pronto" do
    assert_difference("TreinoPronto.count", -1) do
      delete treinos_pronto_url(@treinos_pronto)
    end

    assert_redirected_to treinos_prontos_url
  end
end

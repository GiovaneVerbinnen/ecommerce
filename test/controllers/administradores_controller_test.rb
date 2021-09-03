require 'test_helper'

class AdministradoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @administradore = administradores(:one)
  end

  test "should get index" do
    get administradores_url
    assert_response :success
  end

  test "should get new" do
    get new_administradore_url
    assert_response :success
  end

  test "should create administradore" do
    assert_difference('Administradore.count') do
      post administradores_url, params: { administradore: { email: @administradore.email, nome: @administradore.nome, senha: @administradore.senha } }
    end

    assert_redirected_to administradore_url(Administradore.last)
  end

  test "should show administradore" do
    get administradore_url(@administradore)
    assert_response :success
  end

  test "should get edit" do
    get edit_administradore_url(@administradore)
    assert_response :success
  end

  test "should update administradore" do
    patch administradore_url(@administradore), params: { administradore: { email: @administradore.email, nome: @administradore.nome, senha: @administradore.senha } }
    assert_redirected_to administradore_url(@administradore)
  end

  test "should destroy administradore" do
    assert_difference('Administradore.count', -1) do
      delete administradore_url(@administradore)
    end

    assert_redirected_to administradores_url
  end
end

require "application_system_test_case"

class AdministradoresTest < ApplicationSystemTestCase
  setup do
    @administradore = administradores(:one)
  end

  test "visiting the index" do
    visit administradores_url
    assert_selector "h1", text: "Administradores"
  end

  test "creating a Administradore" do
    visit administradores_url
    click_on "New Administradore"

    fill_in "Email", with: @administradore.email
    fill_in "Nome", with: @administradore.nome
    fill_in "Senha", with: @administradore.senha
    click_on "Create Administradore"

    assert_text "Administradore was successfully created"
    click_on "Back"
  end

  test "updating a Administradore" do
    visit administradores_url
    click_on "Edit", match: :first

    fill_in "Email", with: @administradore.email
    fill_in "Nome", with: @administradore.nome
    fill_in "Senha", with: @administradore.senha
    click_on "Update Administradore"

    assert_text "Administradore was successfully updated"
    click_on "Back"
  end

  test "destroying a Administradore" do
    visit administradores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Administradore was successfully destroyed"
  end
end

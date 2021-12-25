require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "creating a Invoice" do
    visit invoices_url
    click_on "New Invoice"

    fill_in "Address", with: @invoice.address
    fill_in "Amount", with: @invoice.amount
    fill_in "Company name", with: @invoice.company_name
    fill_in "Pref", with: @invoice.pref
    fill_in "Sub1", with: @invoice.sub1
    fill_in "Subtotal", with: @invoice.subtotal
    fill_in "Tax", with: @invoice.tax
    fill_in "Tax rate", with: @invoice.tax_rate
    fill_in "Tel", with: @invoice.tel
    fill_in "Title", with: @invoice.title
    fill_in "Zip", with: @invoice.zip
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "updating a Invoice" do
    visit invoices_url
    click_on "Edit", match: :first

    fill_in "Address", with: @invoice.address
    fill_in "Amount", with: @invoice.amount
    fill_in "Company name", with: @invoice.company_name
    fill_in "Pref", with: @invoice.pref
    fill_in "Sub1", with: @invoice.sub1
    fill_in "Subtotal", with: @invoice.subtotal
    fill_in "Tax", with: @invoice.tax
    fill_in "Tax rate", with: @invoice.tax_rate
    fill_in "Tel", with: @invoice.tel
    fill_in "Title", with: @invoice.title
    fill_in "Zip", with: @invoice.zip
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice" do
    visit invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice was successfully destroyed"
  end
end

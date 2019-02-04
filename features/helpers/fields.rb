module FieldsHelper
  def field_id(field)
    case field
    when 'First Name'
    'user_first_name'
    when 'Last Name'
    'user_last_name'
    when 'Email'
      'user_email'
    when 'Password'
      'user_password'
    when 'Product Name'
      'product_name'
    when 'Price'
      'product_price'
    else
      field
    end
  end
end

World FieldsHelper

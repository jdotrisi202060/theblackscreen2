require 'test_helper'

class BlacksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Black.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Black.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Black.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to black_url(assigns(:black))
  end
  
  def test_edit
    get :edit, :id => Black.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Black.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Black.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Black.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Black.first
    assert_redirected_to black_url(assigns(:black))
  end
  
  def test_destroy
    black = Black.first
    delete :destroy, :id => black
    assert_redirected_to blacks_url
    assert !Black.exists?(black.id)
  end
end

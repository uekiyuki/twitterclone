module HeiheisHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm' || action_name == 'create'
      confirm_heiheis_path
    else action_name == 'edit'
      heihei_path
    end
  end
end

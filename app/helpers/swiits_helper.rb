module SwiitsHelper
    def choose_new_or_edit
        if action_name == 'new' || action_name == 'create'
          confirm_switters_path
        elsif action_name == 'edit'
          switter_path
        end
    end
end

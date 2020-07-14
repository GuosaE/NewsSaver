module CurrentProfile
    
    private

        def set_profile
            @profile = Profile.find(session[:profile_id])
        rescue ActiveRecord::RecordNotFound
            @profile = Profile.create
            session[:profile_id] = @profile.id
        end
end
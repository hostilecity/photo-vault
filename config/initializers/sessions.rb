Rails.application.config.session_store :cookie_store,
                                       key: "_photo_vault_session",
                                       expire_after: 1.hour

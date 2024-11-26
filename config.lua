return {
    Notify = function(title, message, type, duration)
        lib.notify({
            title = title,
            description = message,
            type = type,
            duration = duration or 5000,
            icon = 'fas fa-circle-info'
        })
    end,
}
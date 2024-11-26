return {
    Notify = function(title, message, type, duration)
        exports.rhrp_lib:Notify(title, message, type, duration or 5000, 'fas fa-circle-info')
    end,
}
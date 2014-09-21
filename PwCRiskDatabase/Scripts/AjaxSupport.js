function GetData(TagetPage, TagetFunction) {
    var result;
    $.ajax({
        type: "POST",
        url: TagetPage + "/" + TagetFunction,
        async: false,
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            result = msg.d;
        }
    });
    return result;
}
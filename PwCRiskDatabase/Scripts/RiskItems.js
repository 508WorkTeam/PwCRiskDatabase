$(function () {
    var list = new Array("121321", "2131", "313123");
    $.each(list, function (i, item) {
        alert(item);
    });
});
var tagetpage = "RiskItems.aspx";
var tagetfunc = "GetData";
function button_click()
{
    var TypeList = GetData(tagetpage, tagetfunc);
    $.each(TypeList, function (i, item) {
                alert("用户ID" + item.TypeNumber + " 用户姓名 ：" + item.TypeName);
            });
}  
#pragma checksum "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "e56b053bee59b510ff4dbfcee9dd927d54aa0525"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Reservation_Index), @"mvc.1.0.view", @"/Views/Reservation/Index.cshtml")]
[assembly:global::Microsoft.AspNetCore.Mvc.Razor.Compilation.RazorViewAttribute(@"/Views/Reservation/Index.cshtml", typeof(AspNetCore.Views_Reservation_Index))]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#line 1 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\_ViewImports.cshtml"
using PetKeeper;

#line default
#line hidden
#line 2 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\_ViewImports.cshtml"
using PetKeeper.Models;

#line default
#line hidden
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"e56b053bee59b510ff4dbfcee9dd927d54aa0525", @"/Views/Reservation/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"8778e46b671931921a26e1eaa39c91cb4ef51d85", @"/Views/_ViewImports.cshtml")]
    public class Views_Reservation_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<PetKeeper.Models.PodaciViewModel>>
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("name", "_CreatePartial", global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __backed__tagHelperScopeManager = null;
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager __tagHelperScopeManager
        {
            get
            {
                if (__backed__tagHelperScopeManager == null)
                {
                    __backed__tagHelperScopeManager = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperScopeManager(StartTagHelperWritingScope, EndTagHelperWritingScope);
                }
                return __backed__tagHelperScopeManager;
            }
        }
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            BeginContext(54, 2, true);
            WriteLiteral("\r\n");
            EndContext();
#line 3 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
   
    var podaciViewModel = new PodaciViewModel() { };

#line default
#line hidden
            BeginContext(118, 54, false);
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("partial", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "e56b053bee59b510ff4dbfcee9dd927d54aa05253823", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.PartialTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.Name = (string)__tagHelperAttribute_0.Value;
            __tagHelperExecutionContext.AddTagHelperAttribute(__tagHelperAttribute_0);
#line 6 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
__Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.For = ModelExpressionProvider.CreateModelExpression(ViewData, __model => podaciViewModel);

#line default
#line hidden
            __tagHelperExecutionContext.AddTagHelperAttribute("for", __Microsoft_AspNetCore_Mvc_TagHelpers_PartialTagHelper.For, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            EndContext();
            BeginContext(172, 348, true);
            WriteLiteral(@"

    <button type=""button"" class=""btn btn-primary"" data-toggle=""modal"" data-target=""#myModal"" data-backdrop=""static"" data-keyboard=""false"" style=""margin: 6px"">
        &nbsp;Kreiraj
    </button>
    <div id=""openModal"">

    </div>

    <table class=""table"">
        <thead>
            <tr>
                <th>
                    ");
            EndContext();
            BeginContext(521, 39, false);
#line 19 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
               Write(Html.DisplayNameFor(model => model.Ime));

#line default
#line hidden
            EndContext();
            BeginContext(560, 67, true);
            WriteLiteral("\r\n                </th>\r\n                <th>\r\n                    ");
            EndContext();
            BeginContext(628, 43, false);
#line 22 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
               Write(Html.DisplayNameFor(model => model.Starost));

#line default
#line hidden
            EndContext();
            BeginContext(671, 67, true);
            WriteLiteral("\r\n                </th>\r\n                <th>\r\n                    ");
            EndContext();
            BeginContext(739, 48, false);
#line 25 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
               Write(Html.DisplayNameFor(model => model.DatumPrijema));

#line default
#line hidden
            EndContext();
            BeginContext(787, 67, true);
            WriteLiteral("\r\n                </th>\r\n                <th>\r\n                    ");
            EndContext();
            BeginContext(855, 40, false);
#line 28 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
               Write(Html.DisplayNameFor(model => model.Rasa));

#line default
#line hidden
            EndContext();
            BeginContext(895, 67, true);
            WriteLiteral("\r\n                </th>\r\n                <th>\r\n                    ");
            EndContext();
            BeginContext(963, 39, false);
#line 31 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
               Write(Html.DisplayNameFor(model => model.Pol));

#line default
#line hidden
            EndContext();
            BeginContext(1002, 67, true);
            WriteLiteral("\r\n                </th>\r\n                <th>\r\n                    ");
            EndContext();
            BeginContext(1070, 46, false);
#line 34 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
               Write(Html.DisplayNameFor(model => model.Sterilisan));

#line default
#line hidden
            EndContext();
            BeginContext(1116, 67, true);
            WriteLiteral("\r\n                </th>\r\n                <th>\r\n                    ");
            EndContext();
            BeginContext(1184, 46, false);
#line 37 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
               Write(Html.DisplayNameFor(model => model.Vakcinisan));

#line default
#line hidden
            EndContext();
            BeginContext(1230, 25, true);
            WriteLiteral("\r\n                </th>\r\n");
            EndContext();
            BeginContext(1367, 42, true);
            WriteLiteral("                <th>\r\n                    ");
            EndContext();
            BeginContext(1410, 42, false);
#line 43 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
               Write(Html.DisplayNameFor(model => model.Status));

#line default
#line hidden
            EndContext();
            BeginContext(1452, 106, true);
            WriteLiteral("\r\n                </th>\r\n                <th></th>\r\n            </tr>\r\n        </thead>\r\n        <tbody>\r\n");
            EndContext();
#line 49 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
             foreach (var item in Model)
            {

#line default
#line hidden
            BeginContext(1615, 72, true);
            WriteLiteral("                <tr>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(1688, 38, false);
#line 53 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.Ime));

#line default
#line hidden
            EndContext();
            BeginContext(1726, 79, true);
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(1806, 42, false);
#line 56 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.Starost));

#line default
#line hidden
            EndContext();
            BeginContext(1848, 79, true);
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(1928, 47, false);
#line 59 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.DatumPrijema));

#line default
#line hidden
            EndContext();
            BeginContext(1975, 79, true);
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(2055, 39, false);
#line 62 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.Rasa));

#line default
#line hidden
            EndContext();
            BeginContext(2094, 79, true);
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(2174, 38, false);
#line 65 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.Pol));

#line default
#line hidden
            EndContext();
            BeginContext(2212, 79, true);
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(2292, 45, false);
#line 68 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.Sterilisan));

#line default
#line hidden
            EndContext();
            BeginContext(2337, 79, true);
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n                        ");
            EndContext();
            BeginContext(2417, 45, false);
#line 71 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.Vakcinisan));

#line default
#line hidden
            EndContext();
            BeginContext(2462, 29, true);
            WriteLiteral("\r\n                    </td>\r\n");
            EndContext();
            BeginContext(2614, 50, true);
            WriteLiteral("                    <td>\r\n                        ");
            EndContext();
            BeginContext(2665, 41, false);
#line 77 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
                   Write(Html.DisplayFor(modelItem => item.Status));

#line default
#line hidden
            EndContext();
            BeginContext(2706, 131, true);
            WriteLiteral("\r\n                    </td>\r\n                    <td>\r\n                        <button type=\"button\" class=\"btn btn-success btn-sm\"");
            EndContext();
            BeginWriteAttribute("onclick", " onclick=\"", 2837, "\"", 2864, 3);
            WriteAttributeValue("", 2847, "getEdit(", 2847, 8, true);
#line 80 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
WriteAttributeValue("", 2855, item.Id, 2855, 8, false);

#line default
#line hidden
            WriteAttributeValue("", 2863, ")", 2863, 1, true);
            EndWriteAttribute();
            BeginContext(2865, 93, true);
            WriteLiteral(">Edit</button> \r\n                        <button type=\"button\" class=\"btn btn-primary btn-sm\"");
            EndContext();
            BeginWriteAttribute("onclick", " onclick=\"", 2958, "\"", 2988, 3);
            WriteAttributeValue("", 2968, "getDetails(", 2968, 11, true);
#line 81 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
WriteAttributeValue("", 2979, item.Id, 2979, 8, false);

#line default
#line hidden
            WriteAttributeValue("", 2987, ")", 2987, 1, true);
            EndWriteAttribute();
            BeginContext(2989, 95, true);
            WriteLiteral(">Details</button> \r\n                        <button type=\"button\" class=\"btn btn-danger btn-sm\"");
            EndContext();
            BeginWriteAttribute("onclick", " onclick=\"", 3084, "\"", 3114, 3);
            WriteAttributeValue("", 3094, "getDeleted(", 3094, 11, true);
#line 82 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
WriteAttributeValue("", 3105, item.Id, 3105, 8, false);

#line default
#line hidden
            WriteAttributeValue("", 3113, ")", 3113, 1, true);
            EndWriteAttribute();
            BeginContext(3115, 69, true);
            WriteLiteral("> Delete</button>\r\n                    </td>\r\n                </tr>\r\n");
            EndContext();
#line 85 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
            }

#line default
#line hidden
            BeginContext(3199, 37, true);
            WriteLiteral("        </tbody>\r\n    </table>\r\n   \r\n");
            EndContext();
            BeginContext(3507, 2, true);
            WriteLiteral("\r\n");
            EndContext();
            DefineSection("Scripts", async() => {
                BeginContext(3531, 2, true);
                WriteLiteral("\r\n");
                EndContext();
#line 94 "E:\faks\master1\softversko\Andrijevic\Projekat\Glavni\PetKeeper\PetKeeper\Views\Reservation\Index.cshtml"
          await Html.RenderPartialAsync("_ValidationScriptsPartial");

#line default
#line hidden
                BeginContext(3605, 10928, true);
                WriteLiteral(@"
        <script type=""text/javascript"">

            $('#submitButton').click(function (e) {

                var validated = true;

                var ime = $('#ime').val();
                var starost = $('#starost').val();
                var datumPrijema = $('#datumPrijema').val();
                var rasa = $('#rasa').find("":selected"").val();
                var pol = $('#pol').find("":selected"").val();
                var sterilisan = $('#sterilisan').find("":selected"").val();
                var vakcinisan = $('#vakcinisan').find("":selected"").val();


                var valid = $('#myModalForm').valid();

                if (!valid) {
                    validated = false;
                }
                else {
                    e.preventDefault();
                }
                //$.validator.unobtrusive.parse($('#myModalForm'));
                if (validated) {
                    var dataToPassToController = {
                        Ime: ime,
                     ");
                WriteLiteral(@"   Starost: starost,
                        DatumPrijema: datumPrijema,
                        Rasa: rasa,
                        Pol: pol,
                        Sterilisan: sterilisan,
                        Vakcinisan: vakcinisan

                    }
                    $.ajax({
                        dataType: ""json"",
                        data: dataToPassToController,
                        type: ""POST"",
                        url: ""/Reservation/Create"",
                        success: function (result) {
                            if (result) {
                                $('#myModal').modal('hide');
                                $('#myModal').on('hidden.bs.modal', function () {
                                    bootbox.alert(""Reservation created successfully"", function () {
                                        location.reload();
                                    });
                                })
                            }
                        ");
                WriteLiteral(@"    else {
                                bootbox.alert(""None"");
                            }
                        },
                        error: function (request, status, error) {
                            switch (request.status) {
                                case 401:
                                    bootbox.alert(""You don't have permission to access this resource ! (401 UNAUTHORIZED)"");
                                    //window.location.href = '/Home/Error401';
                                    break;
                                case 403:
                                    bootbox.alert(""You don't have permission to access this resource ! (403 FORBIDDEN)"");
                                    //window.location.href = '/Home/Error403';
                                    break;
                                default:
                                    window.location.href = '/Home/Error';
                                    break;
                            }");
                WriteLiteral(@"
                        }

                    });
                }
            });
            function getEdit(id) {

                $.ajax({
                    dataType: ""html"",
                    type: ""GET"",
                    url: ""/Reservation/Edit/"" + id,
                    success: function (result) {
                        $('#openModal').html(result);

                        $('#myEditModal').modal('show');

                        $.validator.unobtrusive.parse($('#editModal'));

                        $('#submitButtonEdit').on('click', function (e) {

                            var validated = true;

                            var id = $('#editId').val();
                            var ime = $('#editIme').val();
                            var starost = $('#editStarost').val();
                            var datumPrijema = $('#editDatumPrijema').val();
                            var rasa = $('#editRasa').find("":selected"").val();
                           ");
                WriteLiteral(@" var pol = $('#editPol').find("":selected"").val();
                            var sterilisan = $('#editSterilisan').find("":selected"").val();
                            var vakcinisan = $('#editVakcinisan').find("":selected"").val();
                            var status = $('#editStatus').find("":selected"").val();
                            var user = $('#editUser').val();



                            var valid = $('#editModal').valid();

                            if (!valid) {
                                validated = false;

                            }
                            else {
                                e.preventDefault();
                            }
                            if (validated) {
                                var editData = {
                                    Id: id,
                                    Ime: ime,
                                    Starost: starost,
                                    DatumPrijema: datumPrijema,
             ");
                WriteLiteral(@"                       Rasa: rasa,
                                    Pol: pol,
                                    Sterilisan: sterilisan,
                                    Vakcinisan: vakcinisan,
                                    Status: status,
                                    User: user

                                };
                            }
                            $.ajax({
                                dataType: ""json"",
                                data: editData,
                                type: ""POST"",
                                url: ""/Reservation/Edit"",
                                success: function (result) {
                                    if (result) {
                                        $('#myEditModal').modal('hide');
                                        $('#myEditModal').on('hidden.bs.modal', function () {
                                            bootbox.alert(""Reservation edited successfully"", function () {
               ");
                WriteLiteral(@"                                 location.reload();
                                            });
                                        })
                                    }
                                    else {
                                        bootbox.alert(""None"");
                                    }
                                }
                            });
                        });
                    },
                    error: function (request, status, error) {
                        switch (request.status) {
                            case 401:
                                bootbox.alert(""You don't have permission to access this resource ! (401 UNAUTHORIZED)"");
                                //window.location.href = '/Home/Error401';
                                break;
                            case 403:
                                bootbox.alert(""You don't have permission to access this resource ! (403 FORBIDDEN)"");
                     ");
                WriteLiteral(@"           //window.location.href = '/Home/Error403';
                                break;
                            default:
                                window.location.href = '/Home/Error';
                                break;
                        }
                    }
                });
            }
            function getDetails(id) {

            $.ajax({
                dataType: ""html"",
                type: ""GET"",
                url: ""/Reservation/Details/"" + id,
                success: function (result) {

                    $('#openModal').html(result);
                    $('#myDetailsModal').modal();

                
                },
                error: function (request, status, error) {
                    switch (request.status) {
                        case 401:
                            bootbox.alert(""You don't have permission to access this resource ! (401 UNAUTHORIZED)"");
                            //window.location.href = '/Home/Erro");
                WriteLiteral(@"r401';
                            break;
                        case 403:
                            bootbox.alert(""You don't have permission to access this resource ! (403 FORBIDDEN)"");
                            //window.location.href = '/Home/Error403';
                            break;
                        default:
                            window.location.href = '/Home/Error';
                            break;
                    }
                }
            });

        }

        function getDeleted(id) {

            bootbox.confirm({
                message: ""Do you want to delete this?"",
                buttons: {
                    confirm: {
                        label: 'Yes',
                        className: 'btn-success'
                    },
                    cancel: {
                        label: 'No',
                        className: 'btn-danger'
                    }
                },
                callback: function (result) {
     ");
                WriteLiteral(@"               if (result === true) {
                        $.ajax({
                            dataType: ""json"",
                            type: ""POST"",
                            url: ""/Reservation/Delete/"" + id,
                            success: function (result) {
                                if (result) {
                                    bootbox.alert(""Reservation deleted successfully"", function () {
                                        location.reload();
                                    });
                                }
                            },
                            error: function (request, status, error) {
                                switch (request.status) {
                                    case 401:
                                        bootbox.alert(""You don't have permission to access this resource ! (401 UNAUTHORIZED)"");
                                        //window.location.href = '/Home/Error401';
                                ");
                WriteLiteral(@"        break;
                                    case 403:
                                        bootbox.alert(""You don't have permission to access this resource! (403 FORBIDDEN)"");
                                        //window.location.href = '/Home/Error403';
                                        break;
                                    default:
                                        window.location.href = '/Home/Error';
                                        break;
                                }
                            }
                        });
                    }

                }
            });

        }

        </script>
    ");
                EndContext();
            }
            );
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<PetKeeper.Models.PodaciViewModel>> Html { get; private set; }
    }
}
#pragma warning restore 1591

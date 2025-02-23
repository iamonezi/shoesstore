#pragma checksum "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "b0c1c78fd49d3a71522590e3be1b928513338deb"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_ShoppingCart_ViewCart), @"mvc.1.0.view", @"/Views/ShoppingCart/ViewCart.cshtml")]
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
#nullable restore
#line 1 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\_ViewImports.cshtml"
using ShoeStore;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\_ViewImports.cshtml"
using ShoeStore.Models;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"b0c1c78fd49d3a71522590e3be1b928513338deb", @"/Views/ShoppingCart/ViewCart.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"1a88365dfa4fe47f3fe8267342870d6cfd8da64d", @"/Views/_ViewImports.cshtml")]
    #nullable restore
    public class Views_ShoppingCart_ViewCart : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<IEnumerable<BusinessObject.OrderDetail>>
    #nullable disable
    {
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_0 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("alt", new global::Microsoft.AspNetCore.Html.HtmlString(""), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_1 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("style", new global::Microsoft.AspNetCore.Html.HtmlString("width: 50px;"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_2 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("class", new global::Microsoft.AspNetCore.Html.HtmlString("mb-5"), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        private static readonly global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute __tagHelperAttribute_3 = new global::Microsoft.AspNetCore.Razor.TagHelpers.TagHelperAttribute("action", new global::Microsoft.AspNetCore.Html.HtmlString(""), global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
        #line hidden
        #pragma warning disable 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperExecutionContext __tagHelperExecutionContext;
        #pragma warning restore 0649
        private global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner __tagHelperRunner = new global::Microsoft.AspNetCore.Razor.Runtime.TagHelpers.TagHelperRunner();
        #pragma warning disable 0169
        private string __tagHelperStringValueBuffer;
        #pragma warning restore 0169
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
        private global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper;
        private global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper;
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
            WriteLiteral("\r\n");
#nullable restore
#line 3 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
  
    ViewData["Title"] = "ViewCart";
    Layout = "~/Views/Shared/_Layout.cshtml";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"

<!-- Page Header Start -->
<div class=""container-fluid bg-secondary mb-5"">
    <div class=""d-flex flex-column align-items-center justify-content-center"" style=""min-height: 180px"">
        <h1 class=""font-weight-semi-bold text-uppercase mb-3"">Shopping Cart</h1>
        <div class=""d-inline-flex"">
            <p class=""m-0""><a");
            BeginWriteAttribute("href", " href=\"", 476, "\"", 483, 0);
            EndWriteAttribute();
            WriteLiteral(@">Home</a></p>
            <p class=""m-0 px-2"">-</p>
            <p class=""m-0"">Shopping Cart</p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<!-- Cart Start -->
<div class=""container-fluid pt-5"">
    <div class=""row px-xl-5"">
        <div class=""col-lg-8 table-responsive mb-5"">
            <table class=""table table-bordered text-center mb-0"">
                <thead class=""bg-secondary text-dark"">
                    <tr>
                        <th>Products</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Total</th>
                        <th>Remove</th>
                    </tr>
                </thead>
                <tbody class=""align-middle"">
");
#nullable restore
#line 36 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                     if(Model != null){
                        

#line default
#line hidden
#nullable disable
#nullable restore
#line 37 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                         foreach (var item in Model)
                        {

#line default
#line hidden
#nullable disable
            WriteLiteral("                            <tr>\r\n                                <td class=\"align-middle\">\r\n                                    ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("img", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagOnly, "b0c1c78fd49d3a71522590e3be1b928513338deb7211", async() => {
            }
            );
            __Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.Razor.TagHelpers.UrlResolutionTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_Razor_TagHelpers_UrlResolutionTagHelper);
            BeginAddHtmlAttributeValues(__tagHelperExecutionContext, "src", 2, global::Microsoft.AspNetCore.Razor.TagHelpers.HtmlAttributeValueStyle.DoubleQuotes);
            AddHtmlAttributeValue("", 1504, "~/", 1504, 2, true);
#nullable restore
#line 41 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
AddHtmlAttributeValue("", 1506, item.Product.ImageUrl, 1506, 22, false);

#line default
#line hidden
#nullable disable
            EndAddHtmlAttributeValues(__tagHelperExecutionContext);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_0);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_1);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(" ");
#nullable restore
#line 41 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                                                                                                Write(item.Product.Name);

#line default
#line hidden
#nullable disable
            WriteLiteral("\r\n                                </td>\r\n                                <td class=\"align-middle\">$");
#nullable restore
#line 43 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                                                     Write(item.Product.Price);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td class=\"align-middle\">\r\n");
#nullable restore
#line 45 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                                 using (Html.BeginForm("Update_Quantity_Cart", "ShoppingCart")){

#line default
#line hidden
#nullable disable
            WriteLiteral(@"                                        <div class=""input-group quantity mx-auto"" style=""width: 100px;"">
                                            <div class=""input-group-btn"">
                                                <button class=""btn btn-sm btn-primary btn-minus"">
                                                    <i class=""fa fa-minus""></i>
                                                </button>
                                            </div>
                                            <input type=""hidden"" name=""status"" value=""cart"">
                                            <input type=""hidden""");
            BeginWriteAttribute("value", " value=\"", 2489, "\"", 2512, 1);
#nullable restore
#line 53 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
WriteAttributeValue("", 2497, item.ProductId, 2497, 15, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(" name=\"proId\">\r\n                                            <input type=\"text\" class=\"form-control form-control-sm bg-secondary text-center input-quantity-cart\" name=\"quantity\"");
            BeginWriteAttribute("quan", "\r\n                                       quan=\"", 2689, "\"", 2758, 1);
#nullable restore
#line 55 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
WriteAttributeValue("", 2736, item.Product.Quantity, 2736, 22, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            BeginWriteAttribute("value", "\r\n                                       value=\"", 2759, "\"", 2821, 1);
#nullable restore
#line 56 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
WriteAttributeValue("", 2807, item.Quantity, 2807, 14, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@" readonly>
                                            <div class=""input-group-btn"">
                                                <button class=""btn btn-sm btn-primary btn-plus"">
                                                    <i class=""fa fa-plus""></i>
                                                </button>
                                            </div>
                                        </div>
");
#nullable restore
#line 63 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                                }

#line default
#line hidden
#nullable disable
            WriteLiteral("                                         \r\n                                </td>\r\n                                <td class=\"align-middle\">$");
#nullable restore
#line 66 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                                                      Write(item.Quantity * item.Product.Price);

#line default
#line hidden
#nullable disable
            WriteLiteral("</td>\r\n                                <td class=\"align-middle\">\r\n                                    <a");
            BeginWriteAttribute("href", " href=\"", 3562, "\"", 3605, 2);
            WriteAttributeValue("", 3569, "/ShoppingCart/Remove/", 3569, 21, true);
#nullable restore
#line 68 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
WriteAttributeValue("", 3590, item.ProductId, 3590, 15, false);

#line default
#line hidden
#nullable disable
            EndWriteAttribute();
            WriteLiteral(@">
                                        <button class=""btn btn-sm btn-primary"">
                                            <i class=""fa fa-times""></i>
                                        </button>
                                    </a>
                                </td>
                            </tr>
");
#nullable restore
#line 75 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                        }

#line default
#line hidden
#nullable disable
#nullable restore
#line 75 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                         
                    }

#line default
#line hidden
#nullable disable
            WriteLiteral("                    \r\n                </tbody>\r\n            </table>\r\n        </div>\r\n        <div class=\"col-lg-4\">\r\n            ");
            __tagHelperExecutionContext = __tagHelperScopeManager.Begin("form", global::Microsoft.AspNetCore.Razor.TagHelpers.TagMode.StartTagAndEndTag, "b0c1c78fd49d3a71522590e3be1b928513338deb14837", async() => {
                WriteLiteral(@"
                <div class=""input-group"">
                    <input type=""text"" class=""form-control p-4"" placeholder=""Coupon Code"">
                    <div class=""input-group-append"">
                        <button class=""btn btn-primary"">Apply Coupon</button>
                    </div>
                </div>
            ");
            }
            );
            __Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.FormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_FormTagHelper);
            __Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper = CreateTagHelper<global::Microsoft.AspNetCore.Mvc.TagHelpers.RenderAtEndOfFormTagHelper>();
            __tagHelperExecutionContext.Add(__Microsoft_AspNetCore_Mvc_TagHelpers_RenderAtEndOfFormTagHelper);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_2);
            __tagHelperExecutionContext.AddHtmlAttribute(__tagHelperAttribute_3);
            await __tagHelperRunner.RunAsync(__tagHelperExecutionContext);
            if (!__tagHelperExecutionContext.Output.IsContentModified)
            {
                await __tagHelperExecutionContext.SetOutputContentAsync();
            }
            Write(__tagHelperExecutionContext.Output);
            __tagHelperExecutionContext = __tagHelperScopeManager.End();
            WriteLiteral(@"
            <div class=""card border-secondary mb-5"">
                <div class=""card-header bg-secondary border-0"">
                    <h4 class=""font-weight-semi-bold m-0"">Cart Summary</h4>
                </div>
                <div class=""card-body"">
                    <div class=""d-flex justify-content-between mb-3 pt-1"">
                        <h6 class=""font-weight-medium"">Subtotal</h6>
                        <h6 class=""font-weight-medium"">$");
#nullable restore
#line 97 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                                                   Write(ViewBag.TotalPrice);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h6>
                    </div>
                    <div class=""d-flex justify-content-between"">
                        <h6 class=""font-weight-medium"">Shipping</h6>
                        <h6 class=""font-weight-medium"">$10</h6>
                    </div>
                </div>
                <div class=""card-footer border-secondary bg-transparent"">
                    <div class=""d-flex justify-content-between mt-2"">
                        <h5 class=""font-weight-bold"">Total</h5>
                        <h5 class=""font-weight-bold"">$");
#nullable restore
#line 107 "D:\Studies\FPT\SU2023\PRN221\ProjectShoeStore\PRN221_FinalProject\ShoeStore\Views\ShoppingCart\ViewCart.cshtml"
                                                  Write(ViewBag.TotalPrice + 10);

#line default
#line hidden
#nullable disable
            WriteLiteral(@"</h5>
                    </div>
                    <a href=""/ShoppingCart/CheckOut""><button class=""btn btn-block btn-primary my-3 py-3"">Proceed To Checkout</button></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Cart End -->
");
            DefineSection("scripts", async() => {
                WriteLiteral(@"
    <script>

        $(document).ready(function () {
            var newVal = 1;
            
            $('.quantity button').on('click', function () {
                console.log(quantity);
                var button = $(this);
                var oldValue = button.parent().parent().find('.input-quantity-cart').val();
                var quantity = button.parent().parent().find('.input-quantity-cart').attr(""quan"");
                if (button.hasClass('btn-plus')) {
                    newVal = parseFloat(oldValue) + 1;
                    if (newVal > quantity) {
                        alert(""Maximum is "" + quantity);
                        newVal--;
                    }

                } else {
                    if (oldValue > 1) {
                        newVal = parseFloat(oldValue) - 1;
                    } else {
                        newVal = 1;
                    }
                }
                button.parent().parent().find('.input-quantity-cart').val(newVal)");
                WriteLiteral(";\r\n                $(\'.input-quantity\').val(newVal);\r\n            });        \r\n        });\r\n    </script>\r\n");
            }
            );
        }
        #pragma warning restore 1998
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; } = default!;
        #nullable disable
        #nullable restore
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<IEnumerable<BusinessObject.OrderDetail>> Html { get; private set; } = default!;
        #nullable disable
    }
}
#pragma warning restore 1591

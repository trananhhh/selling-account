<%-- Document : cart Created on : Feb 18, 2022, 10:54:09 PM Author : _trananhhh --%>
    <%@page import="model.Item" %>
        <%@page import="java.util.ArrayList" %>
            <%@page import="java.util.List" %>
                <%@page import="model.Plan" %>
                    <%@page contentType="text/html" pageEncoding="UTF-8" %>
                        <!DOCTYPE html>
                        <html>

                        <head>
                            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
                            <title>Giỏ hàng</title>
                            <link rel="stylesheet" href="./css/base.css">
                            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                                rel="stylesheet"
                                integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                                crossorigin="anonymous" />
                            <link rel="stylesheet"
                                href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css"
                                integrity="sha512-Oy+sz5W86PK0ZIkawrG0iv7XwWhYecM3exvUtMKNJMekGFJtVAhibhRPTpmyTj8+lJCkmWfnpxKgT2OopquBHA=="
                                crossorigin="anonymous" referrerpolicy="no-referrer" />
                            <style>
                                .item-container {
                                    width: 500px;
                                    flex-direction: row;
                                }

                                .purchase-box {
                                    justify-content: flex-end;
                                    padding-right: 8px;
                                }

                                p {
                                    padding: 0;
                                    margin: 0;
                                    font-size: 24px;
                                }

                                .creditCardForm {
                                    max-width: 700px;
                                    background-color: #fff;
                                    margin: 100px auto;
                                    overflow: hidden;
                                    padding: 25px;
                                    color: #4c4e56;
                                }

                                .creditCardForm label {
                                    width: 100%;
                                    margin-bottom: 10px;
                                }

                                .creditCardForm .heading h1 {
                                    text-align: center;
                                    font-family: 'Open Sans', sans-serif;
                                    color: #4c4e56;
                                }

                                .creditCardForm .payment {
                                    float: left;
                                    font-size: 18px;
                                    padding: 10px 25px;
                                    margin-top: 20px;
                                    position: relative;
                                }

                                .creditCardForm .payment .form-group {
                                    float: left;
                                    margin-bottom: 15px;
                                }

                                .creditCardForm .payment .form-control {
                                    line-height: 40px;
                                    height: auto;
                                    padding: 0 16px;
                                }

                                .creditCardForm .owner {
                                    width: 63%;
                                    margin-right: 10px;
                                }

                                .creditCardForm .CVV {
                                    width: 35%;
                                }

                                .creditCardForm #card-number-field {
                                    width: 100%;
                                }

                                .creditCardForm #expiration-date {
                                    width: 49%;
                                }

                                .creditCardForm #credit_cards {
                                    width: 50%;
                                    margin-top: 25px;
                                    text-align: right;
                                }

                                .creditCardForm #pay-now {
                                    width: 100%;
                                    margin-top: 25px;
                                }

                                .creditCardForm .payment .btn {
                                    width: 100%;
                                    margin-top: 3px;
                                    font-size: 24px;
                                    background-color: #2ec4a5;
                                    color: white;
                                }

                                .creditCardForm .payment select {
                                    padding: 10px;
                                    margin-right: 15px;
                                }

                                .transparent {
                                    opacity: 0.2;
                                }

                                @media(max-width: 650px) {

                                    .creditCardForm .owner,
                                    .creditCardForm .CVV,
                                    .creditCardForm #expiration-date,
                                    .creditCardForm #credit_cards {
                                        width: 100%;
                                    }

                                    .creditCardForm #credit_cards {
                                        text-align: left;
                                    }
                                }

                                #sel-month {
                                    display: inline-block;
                                    width: 135px;
                                }

                                #sel-year {
                                    display: inline-block;
                                    width: 100px;
                                }

                                #visa {
                                    height: 36px;
                                    width: 100px;
                                    margin-left: 30px;
                                }
                            </style>
                            <link rel="stylesheet"
                                href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
                                integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
                                crossorigin="anonymous" referrerpolicy="no-referrer" />
                        </head>

                        <body>
                            <div class="container">
                                <h1>Giỏ hàng</h1>
                                <div class="item-list">
                                    <a href="./plans" id="back-btn"><i class="fa-solid fa-arrow-left"></i>Mua thêm</a>
                                    <% List<Item> listItems = (ArrayList) request.getAttribute("itemsInCart");
                                        for(Item i : listItems){
                                        Plan p = i.getPlan();
                                        int duration = i.getDuration();
                                        int idx = listItems.indexOf(i);
                                        %>
                                        <div class="item-container" id="item-<%= idx %>">
                                            <div class="left-box">
                                                <h3>
                                                    <%= p.getName() %>
                                                </h3>
                                            </div>
                                            <div class="right-box">
                                                <span>
                                                    <%= duration %>
                                                </span> x
                                                <span>
                                                    <%= p.getPrice() %>
                                                </span>
                                                <h4 class="final-price">
                                                    <%= duration*p.getPrice() %>
                                                </h4>
                                                <i class="fa-solid fa-trash-can remove-btn"
                                                    onclick="removeItem(<%= idx %>)"></i>
                                            </div>
                                        </div>
                                        <% } %>
                                            <div class="purchase-box">
                                                <p>Tổng cộng: </p>
                                                <h4 class="total" id="total"></h4>
                                                <p>vnd</p>
                                                <button id="purchase" type="button" class="btn btn-primary"
                                                    data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                    Thanh toán
                                                </button>
                                            </div>
                                </div>
                                <div class="modal fade" id="exampleModal" tabindex="-1"
                                    aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">Set up your credit or
                                                    debit card</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                    aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                <div class="container-fluid">
                                                    <!--<div class="creditCardForm">-->
                                                    <div class="payment">
                                                        <form method="POST" action="/purchase">
                                                            <div class="row mb-3">
                                                                <div class="form-group owner col-8">
                                                                    <!-- <label for="owner">Owner</label> -->
                                                                    <input type="text" class="form-control" id="owner"
                                                                        placeholder="Name" required>
                                                                </div>
                                                                <div class="form-group CVV col-4">
                                                                    <input type="text" class="form-control" id="cvv"
                                                                        placeholder="CVV" minlength="3" maxlength="3" required>
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">

                                                                <div class="form-group" id="card-number-field">
                                                                    <input type="text" class="form-control"
                                                                        id="cardNumber" placeholder="Card Number" minlength="16" maxlength="16"
                                                                        required>
                                                                </div>
                                                            </div>
                                                            <div class="row mb-3">
                                                                <div class="form-group col-8" id="expiration-date">
                                                                    <select id="sel-month" class="form-select" required>
                                                                        <option value="01">January</option>
                                                                        <option value="02">February </option>
                                                                        <option value="03">March</option>
                                                                        <option value="04">April</option>
                                                                        <option value="05">May</option>
                                                                        <option value="06">June</option>
                                                                        <option value="07">July</option>
                                                                        <option value="08">August</option>
                                                                        <option value="09">September</option>
                                                                        <option value="10">October</option>
                                                                        <option value="11">November</option>
                                                                        <option value="12">December</option>
                                                                    </select>
                                                                    <select id="sel-year" class="form-select" required>
                                                                        <option value="16"> 2016</option>
                                                                        <option value="17"> 2017</option>
                                                                        <option value="18"> 2018</option>
                                                                        <option value="19"> 2019</option>
                                                                        <option value="20"> 2020</option>
                                                                        <option value="21"> 2021</option>
                                                                    </select>
                                                                    <!-- </div> -->
                                                                </div>
                                                                <div class="form-group col-4 justify-content-end"
                                                                    id="credit_cards">
                                                                    <img src="./assests/img/purchase.png" id="visa">
                                                                </div>
                                                            </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary"
                                                    data-bs-dismiss="modal">Close</button>
                                                <button type="submit" class="btn btn-primary">Confirm</button>
                                            </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                                integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                                crossorigin="anonymous"></script>
                        </body>
                        <script>
                            let totalPrice = document.getElementById("total");
                            let priceList = document.getElementsByClassName("final-price");
                            var s = 0;
                            for (var x of priceList) s += parseInt(x.innerHTML);
                            totalPrice.innerHTML = s.toLocaleString();

                            removeItem = (id) => {
                                if (confirm("Bạn muốn xoá sản phẩm này?")) {
                                    window.location = "./delete-item-in-cart?id=" + id;
                                }

                            }
                            $(function () {

                                var owner = $('#owner');
                                var cardNumber = $('#cardNumber');
                                var cardNumberField = $('#card-number-field');
                                var CVV = $("#cvv");
                                var mastercard = $("#mastercard");
                                var confirmButton = $('#confirm-purchase');
                                var visa = $("#visa");
                                var amex = $("#amex");

                                // Use the payform library to format and validate
                                // the payment fields.

                                cardNumber.payform('formatCardNumber');
                                CVV.payform('formatCardCVC');


                                cardNumber.keyup(function () {

                                    amex.removeClass('transparent');
                                    visa.removeClass('transparent');
                                    mastercard.removeClass('transparent');

                                    if ($.payform.validateCardNumber(cardNumber.val()) == false) {
                                        cardNumberField.addClass('has-error');
                                    } else {
                                        cardNumberField.removeClass('has-error');
                                        cardNumberField.addClass('has-success');
                                    }

                                    if ($.payform.parseCardType(cardNumber.val()) == 'visa') {
                                        mastercard.addClass('transparent');
                                        amex.addClass('transparent');
                                    } else if ($.payform.parseCardType(cardNumber.val()) == 'amex') {
                                        mastercard.addClass('transparent');
                                        visa.addClass('transparent');
                                    } else if ($.payform.parseCardType(cardNumber.val()) == 'mastercard') {
                                        amex.addClass('transparent');
                                        visa.addClass('transparent');
                                    }
                                });

                                confirmButton.click(function (e) {

                                    e.preventDefault();

                                    var isCardValid = $.payform.validateCardNumber(cardNumber.val());
                                    var isCvvValid = $.payform.validateCardCVC(CVV.val());

                                    if (owner.val().length < 5) {
                                        alert("Wrong owner name");
                                    } else if (!isCardValid) {
                                        alert("Wrong card number");
                                    } else if (!isCvvValid) {
                                        alert("Wrong CVV");
                                    } else {
                                        // Everything is correct. Add your form submission code here.
                                        alert("Everything is correct");
                                    }
                                });
                            });
                            !function a(b, c, d) { function e(g, h) { if (!c[g]) { if (!b[g]) { var i = "function" == typeof require && require; if (!h && i) return i(g, !0); if (f) return f(g, !0); var j = new Error("Cannot find module '" + g + "'"); throw j.code = "MODULE_NOT_FOUND", j } var k = c[g] = { exports: {} }; b[g][0].call(k.exports, function (a) { var c = b[g][1][a]; return e(c ? c : a) }, k, k.exports, a, b, c, d) } return c[g].exports } for (var f = "function" == typeof require && require, g = 0; g < d.length; g++)e(d[g]); return e }({ 1: [function (a, b, c) { var d; d = a(2), function (a) { return a.payform = d, a.payform.fn = { formatCardNumber: function () { return d.cardNumberInput(this.get(0)) }, formatCardExpiry: function () { return d.expiryInput(this.get(0)) }, formatCardCVC: function () { return d.cvcInput(this.get(0)) }, formatNumeric: function () { return d.numericInput(this.get(0)) } }, a.fn.payform = function (b) { return null != a.payform.fn[b] && a.payform.fn[b].call(this), this } }(window.jQuery || window.Zepto) }, {}], 2: [function (a, b, c) { var d = [].indexOf || function (a) { for (var b = 0, c = this.length; c > b; b++)if (b in this && this[b] === a) return b; return -1 }; !function (a, c) { return "undefined" != typeof b && null !== b ? b.exports = c() : "function" == typeof define && "object" == typeof define.amd ? define(a, c) : this[a] = c() }("payform", function () { var a, b, c, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w; return v = function (a) { var b, c, d; return null != a.selectionStart ? a.selectionStart : null != document.selection ? (a.focus(), b = document.selection.createRange(), d = a.createTextRange(), c = d.duplicate(), d.moveToBookmark(b.getBookmark()), c.setEndPoint("EndToStart", d), c.text.length) : void 0 }, u = function (a) { return function (b) { return null == b && (b = window.event), b.target = b.target || b.srcElement, b.which = b.which || b.keyCode, null == b.preventDefault && (b.preventDefault = function () { return this.returnValue = !1 }), a(b) } }, w = function (a, b, c) { return c = u(c), null != a.addEventListener ? a.addEventListener(b, c, !1) : a.attachEvent("on" + b, c) }, m = {}, c = /(\d{1,4})/g, m.cards = [{ type: "visaelectron", pattern: /^4(026|17500|405|508|844|91[37])/, format: c, length: [16], cvcLength: [3], luhn: !0 }, { type: "maestro", pattern: /^(5(018|0[23]|[68])|6(39|7))/, format: c, length: [12, 13, 14, 15, 16, 17, 18, 19], cvcLength: [3], luhn: !0 }, { type: "forbrugsforeningen", pattern: /^600/, format: c, length: [16], cvcLength: [3], luhn: !0 }, { type: "dankort", pattern: /^5019/, format: c, length: [16], cvcLength: [3], luhn: !0 }, { type: "visa", pattern: /^4/, format: c, length: [13, 16], cvcLength: [3], luhn: !0 }, { type: "mastercard", pattern: /^5[0-5]/, format: c, length: [16], cvcLength: [3], luhn: !0 }, { type: "amex", pattern: /^3[47]/, format: /(\d{1,4})(\d{1,6})?(\d{1,5})?/, length: [15], cvcLength: [3, 4], luhn: !0 }, { type: "dinersclub", pattern: /^3[0689]/, format: c, length: [14], cvcLength: [3], luhn: !0 }, { type: "discover", pattern: /^6([045]|22)/, format: c, length: [16], cvcLength: [3], luhn: !0 }, { type: "unionpay", pattern: /^(62|88)/, format: c, length: [16, 17, 18, 19], cvcLength: [3], luhn: !1 }, { type: "jcb", pattern: /^35/, format: c, length: [16], cvcLength: [3], luhn: !0 }], a = function (a) { var b, c, d, e; for (a = (a + "").replace(/\D/g, ""), e = m.cards, c = 0, d = e.length; d > c; c++)if (b = e[c], b.pattern.test(a)) return b }, b = function (a) { var b, c, d, e; for (e = m.cards, c = 0, d = e.length; d > c; c++)if (b = e[c], b.type === a) return b }, l = function (a) { var b, c, d, e, f, g; for (d = !0, e = 0, c = (a + "").split("").reverse(), f = 0, g = c.length; g > f; f++)b = c[f], b = parseInt(b, 10), (d = !d) && (b *= 2), b > 9 && (b -= 9), e += b; return e % 10 === 0 }, k = function (a) { var b; return null != ("undefined" != typeof document && null !== document && null != (b = document.selection) ? b.createRange : void 0) && document.selection.createRange().text ? !0 : null != a.selectionStart && a.selectionStart !== a.selectionEnd }, o = function (a) { var b; return b = v(a.target), a.target.value = m.formatCardNumber(a.target.value), null != b && "change" !== a.type ? a.target.setSelectionRange(b, b) : void 0 }, h = function (b) { var c, d, e, f, g, h, i; return e = String.fromCharCode(b.which), !/^\d+$/.test(e) || (i = b.target.value, c = a(i + e), f = (i.replace(/\D/g, "") + e).length, h = 16, c && (h = c.length[c.length.length - 1]), f >= h || (d = v(b.target), d && d !== i.length)) ? void 0 : (g = c && "amex" === c.type ? /^(\d{4}|\d{4}\s\d{6})$/ : /(?:^|\s)(\d{4})$/, g.test(i) ? (b.preventDefault(), setTimeout(function () { return b.target.value = i + " " + e })) : g.test(i + e) ? (b.preventDefault(), setTimeout(function () { return b.target.value = i + e + " " })) : void 0) }, e = function (a) { var b, c; return c = a.target.value, 8 !== a.which || (b = v(a.target), b && b !== c.length) ? void 0 : /\d\s$/.test(c) ? (a.preventDefault(), setTimeout(function () { return a.target.value = c.replace(/\d\s$/, "") })) : /\s\d?$/.test(c) ? (a.preventDefault(), setTimeout(function () { return a.target.value = c.replace(/\d$/, "") })) : void 0 }, p = function (a) { var b; return b = v(a.target), a.target.value = m.formatCardExpiry(a.target.value), null != b && "change" !== a.type ? a.target.setSelectionRange(b, b) : void 0 }, g = function (a) { var b, c; return b = String.fromCharCode(a.which), /^\d+$/.test(b) ? (c = a.target.value + b, /^\d$/.test(c) && "0" !== c && "1" !== c ? (a.preventDefault(), setTimeout(function () { return a.target.value = "0" + c + " / " })) : /^\d\d$/.test(c) ? (a.preventDefault(), setTimeout(function () { return a.target.value = c + " / " })) : void 0) : void 0 }, i = function (a) { var b, c; return b = String.fromCharCode(a.which), /^\d+$/.test(b) ? (c = a.target.value, /^\d\d$/.test(c) ? a.target.value = c + " / " : void 0) : void 0 }, j = function (a) { var b, c; return c = String.fromCharCode(a.which), "/" === c || " " === c ? (b = a.target.value, /^\d$/.test(b) && "0" !== b ? a.target.value = "0" + b + " / " : void 0) : void 0 }, f = function (a) { var b, c; return c = a.target.value, 8 !== a.which || (b = v(a.target), b && b !== c.length) ? void 0 : /\d\s\/\s$/.test(c) ? (a.preventDefault(), setTimeout(function () { return a.target.value = c.replace(/\d\s\/\s$/, "") })) : void 0 }, n = function (a) { var b; return b = v(a.target), a.target.value = a.target.value.replace(/\D/g, "").slice(0, 4), null != b && "change" !== a.type ? a.target.setSelectionRange(b, b) : void 0 }, t = function (a) { var b; if (!(a.metaKey || a.ctrlKey || 0 === a.which || a.which < 33)) return b = String.fromCharCode(a.which), /^\d+$/.test(b) ? void 0 : a.preventDefault() }, r = function (b) { var c, d, e; return d = String.fromCharCode(b.which), /^\d+$/.test(d) && !k(b.target) ? (e = (b.target.value + d).replace(/\D/g, ""), c = a(e), c && e.length > c.length[c.length.length - 1] ? b.preventDefault() : e.length > 16 ? b.preventDefault() : void 0) : void 0 }, s = function (a) { var b, c; return b = String.fromCharCode(a.which), /^\d+$/.test(b) && !k(a.target) ? (c = a.target.value + b, c = c.replace(/\D/g, ""), c.length > 6 ? a.preventDefault() : void 0) : void 0 }, q = function (a) { var b, c; return b = String.fromCharCode(a.which), /^\d+$/.test(b) && !k(a.target) ? (c = a.target.value + b, c.length > 4 ? a.preventDefault() : void 0) : void 0 }, m.cvcInput = function (a) { return w(a, "keypress", t), w(a, "keypress", q), w(a, "paste", n), w(a, "change", n), w(a, "input", n) }, m.expiryInput = function (a) { return w(a, "keypress", t), w(a, "keypress", s), w(a, "keypress", g), w(a, "keypress", j), w(a, "keypress", i), w(a, "keydown", f), w(a, "change", p), w(a, "input", p) }, m.cardNumberInput = function (a) { return w(a, "keypress", t), w(a, "keypress", r), w(a, "keypress", h), w(a, "keydown", e), w(a, "paste", o), w(a, "change", o), w(a, "input", o) }, m.numericInput = function (a) { return w(a, "keypress", t), w(a, "paste", t), w(a, "change", t), w(a, "input", t) }, m.parseCardExpiry = function (a) { var b, c, d, e; return a = a.replace(/\s/g, ""), e = a.split("/", 2), b = e[0], d = e[1], 2 === (null != d ? d.length : void 0) && /^\d+$/.test(d) && (c = (new Date).getFullYear(), c = c.toString().slice(0, 2), d = c + d), b = parseInt(b, 10), d = parseInt(d, 10), { month: b, year: d } }, m.validateCardNumber = function (b) { var c, e; return b = (b + "").replace(/\s+|-/g, ""), /^\d+$/.test(b) ? (c = a(b), c ? (e = b.length, d.call(c.length, e) >= 0 && (c.luhn === !1 || l(b))) : !1) : !1 }, m.validateCardExpiry = function (a, b) { var c, d, e; return "object" == typeof a && "month" in a && (e = a, a = e.month, b = e.year), a && b ? (a = String(a).trim(), b = String(b).trim(), /^\d+$/.test(a) && /^\d+$/.test(b) && a >= 1 && 12 >= a ? (2 === b.length && (b = 70 > b ? "20" + b : "19" + b), 4 !== b.length ? !1 : (d = new Date(b, a), c = new Date, d.setMonth(d.getMonth() - 1), d.setMonth(d.getMonth() + 1, 1), d > c)) : !1) : !1 }, m.validateCardCVC = function (a, c) { var e, f; return a = String(a).trim(), /^\d+$/.test(a) ? (e = b(c), null != e ? (f = a.length, d.call(e.cvcLength, f) >= 0) : a.length >= 3 && a.length <= 4) : !1 }, m.parseCardType = function (b) { var c; return b ? (null != (c = a(b)) ? c.type : void 0) || null : null }, m.formatCardNumber = function (b) { var c, d, e, f; return b = b.replace(/\D/g, ""), (c = a(b)) ? (e = c.length[c.length.length - 1], b = b.slice(0, e), c.format.global ? null != (f = b.match(c.format)) ? f.join(" ") : void 0 : (d = c.format.exec(b), null != d ? (d.shift(), d = d.filter(Boolean), d.join(" ")) : void 0)) : b }, m.formatCardExpiry = function (a) { var b, c, d, e; return (c = a.match(/^\D*(\d{1,2})(\D+)?(\d{1,4})?/)) ? (b = c[1] || "", d = c[2] || "", e = c[3] || "", e.length > 0 ? d = " / " : " /" === d ? (b = b.substring(0, 1), d = "") : 2 === b.length || d.length > 0 ? d = " / " : 1 === b.length && "0" !== b && "1" !== b && (b = "0" + b, d = " / "), b + d + e) : "" }, m }) }, {}] }, {}, [1]);
                        </script>

                        </html>
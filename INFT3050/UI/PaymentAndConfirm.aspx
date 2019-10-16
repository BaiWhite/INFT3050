<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PaymentAndConfirm.aspx.cs" Inherits="INFT3050.UI.PaymentAndConfirm" %>

<asp:Content ID="PaymentAndConfirm" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/punycode/1.4.1/punycode.min.js"></script>
    <script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
    <script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.12796" type="text/javascript"></script>
    <script type="text/javascript">
        JotForm.init(function () {
            productID = { "0": "input_3_1001" };
            paymentType = "product";
            JotForm.setCurrencyFormat('USD', true, 'point');
            JotForm.totalCounter({ "input_3_1001": { "price": "100", "quantityField": "input_3_quantity_1001_0" } });
            $$('.form-product-custom_quantity').each(function (el, i) { el.observe('blur', function () { isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value) }) });
            $$('.form-product-custom_quantity').each(function (el, i) { el.observe('focus', function () { this.value == 0 ? this.value = '' : this.value }) });
            setTimeout(function () {
                $('input_5').hint('ex: myname@example.com');
            }, 20);
            JotForm.alterTexts(undefined, true);
            /*INIT-END*/
        });

        JotForm.prepareCalculationsOnTheFly([null, null, { "name": "submit", "qid": "2", "text": "Submit", "type": "control_button" }, { "name": "products", "qid": "3", "text": "Products", "type": "control_paypalpro" }, { "name": "buyerName", "qid": "4", "text": "Buyer Name", "type": "control_fullname" }, { "name": "buyerEmail", "qid": "5", "text": "Buyer E-mail", "type": "control_email" }, { "name": "shippingAddress", "qid": "6", "text": "Shipping Address", "type": "control_address" }]);
        setTimeout(function () {
            JotForm.paymentExtrasOnTheFly([null, null, { "name": "submit", "qid": "2", "text": "Submit", "type": "control_button" }, { "name": "products", "qid": "3", "text": "Products", "type": "control_paypalpro" }, { "name": "buyerName", "qid": "4", "text": "Buyer Name", "type": "control_fullname" }, { "name": "buyerEmail", "qid": "5", "text": "Buyer E-mail", "type": "control_email" }, { "name": "shippingAddress", "qid": "6", "text": "Shipping Address", "type": "control_address" }]);
        }, 20);
    </script>
    <link href="https://cdn.jotfor.ms/static/formCss.css?3.3.12796" rel="stylesheet" type="text/css" />
    <link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.12796" />
    <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/nova.css?3.3.12796" />
    <link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/566a91c2977cdfcd478b4567.css?themeRevisionID=5d713a7304e9ed3c13620001" />
    <style type="text/css">
        .form-label-left {
            width: 150px;
        }

        .form-line {
            padding-top: 12px;
            padding-bottom: 12px;
        }

        .form-label-right {
            width: 150px;
        }

        .form-all {
            width: 690px;
            color: #555 !important;
            font-family: "Lucida Grande", "Lucida Sans Unicode", "Lucida Sans", Verdana, sans-serif;
            font-size: 14px;
        }

        .form-radio-item label, .form-checkbox-item label, .form-grading-label, .form-header {
            color: false;
        }
    </style>

    <style type="text/css" id="form-designer-style">
        /* Injected CSS Code */
        /*PREFERENCES STYLE*/
        .form-all {
            font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
        }

            .form-all .qq-upload-button,
            .form-all .form-submit-button,
            .form-all .form-submit-reset,
            .form-all .form-submit-print {
                font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
            }

            .form-all .form-pagebreak-back-container,
            .form-all .form-pagebreak-next-container {
                font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
            }

        .form-header-group {
            font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
        }

        .form-label {
            font-family: 'Lucida Grande', 'Lucida Sans Unicode', 'Lucida Sans', Verdana, Tahoma, sans-serif, sans-serif;
        }

            .form-label.form-label-auto {
                display: inline-block;
                float: left;
                text-align: left;
            }

        .form-line {
            margin-top: 12px 36px 12px 36px px;
            margin-bottom: 12px 36px 12px 36px px;
        }

        .form-all {
            width: 590px;
        }

        .form-label-left,
        .form-label-right,
        .form-label-left.form-label-auto,
        .form-label-right.form-label-auto {
            width: 150px;
        }

        .form-all {
            font-size: 14pxpx
        }

            .form-all .qq-upload-button,
            .form-all .qq-upload-button,
            .form-all .form-submit-button,
            .form-all .form-submit-reset,
            .form-all .form-submit-print {
                font-size: 14pxpx
            }

            .form-all .form-pagebreak-back-container,
            .form-all .form-pagebreak-next-container {
                font-size: 14pxpx
            }

        .supernova .form-all, .form-all {
            background-color:;
            border: 1px solid transparent;
        }

        .form-all {
            color: #555;
        }

        .form-header-group .form-header {
            color: #555;
        }

        .form-header-group .form-subHeader {
            color: #555;
        }

        .form-label-top,
        .form-label-left,
        .form-label-right,
        .form-html,
        .form-checkbox-item label,
        .form-radio-item label {
            color: #555;
        }

        .form-sub-label {
            color: #6f6f6f;
        }

        .supernova {
            background-color: undefined;
        }

            .supernova body {
                background: transparent;
            }

        .form-textbox,
        .form-textarea,
        .form-radio-other-input,
        .form-checkbox-other-input,
        .form-captcha input,
        .form-spinner input {
            background-color: undefined;
        }

        .supernova {
            background-image: none;
        }

        #stage {
            background-image: none;
        }

        .form-all {
            background-image: none;
        }

        .ie-8 .form-all:before {
            display: none;
        }

        .ie-8 {
            margin-top: auto;
            margin-top: initial;
        }

        /*PREFERENCES STYLE*/ /*__INSPECT_SEPERATOR__*/
        /* Injected CSS Code */
    </style>

    <form class="jotform-form" action="https://pci.jotform.com/submit/92545172437864" method="post" name="form_92545172437864" id="92545172437864" accept-charset="utf-8">
        <input type="hidden" name="formID" value="92545172437864" />
        <input type="hidden" id="JWTContainer" value="" />
        <input type="hidden" id="cardinalOrderNumber" value="" />
        <div role="main" class="form-all">
            <ul class="form-section page-section">
                <li class="form-line" data-type="control_paypalpro" id="id_3">
                    <label class="form-label form-label-left form-label-auto" id="label_3" for="input_3">Products </label>
                    <div id="cid_3" class="form-input">
                        <div data-wrapper-react="true" id="paypalpro-payment-wrapper" data-paypalpro-currency="USD" data-paypalpro-paymenttype="product" data-paypalpro-sandbox="Disabled">
                            <div data-wrapper-react="true">
                                <input type="hidden" name="simple_fpc" data-payment_type="paypalpro" data-component="payment1" value="3" />
                                <input type="hidden" name="payment_total_checksum" id="payment_total_checksum" data-component="payment2" />
                                <div data-wrapper-react="true">
                                    <span class="form-product-item hover-product-item">
                                        <div data-wrapper-react="true" class="form-product-item-detail">
                                            <input type="checkbox" class="form-checkbox " id="input_3_1001" name="q3_products[][id]" value="1001" />
                                            <label for="input_3_1001" class="form-product-container">
                                                <span data-wrapper-react="true">
                                                    <span class="form-product-name" id="product-name-input_3_1001">New Product 1
                                                    </span>
                                                    <span class="form-product-details">
                                                        <b>
                                                            <span data-wrapper-react="true">$
                              <span id="input_3_1001_price">100.00
                              </span>
                                                            </span>
                                                        </b>
                                                    </span>
                                                </span>
                                            </label>
                                            <br />
                                            <br />
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <label class="form-sub-label" for="input_3_quantity_1001_0" style="min-height: 13px">Quantity </label>
                                                <select class="form-dropdown" name="q3_products[special_1001][item_0]" id="input_3_quantity_1001_0">
                                                    <option value="1">1 </option>
                                                    <option value="2">2 </option>
                                                    <option value="3">3 </option>
                                                    <option value="4">4 </option>
                                                    <option value="5">5 </option>
                                                    <option value="6">6 </option>
                                                    <option value="7">7 </option>
                                                    <option value="8">8 </option>
                                                    <option value="9">9 </option>
                                                    <option value="10">10 </option>
                                                </select>
                                            </span>
                                        </div>
                                    </span>
                                    <br />
                                    <span class="form-payment-total">
                                        <b>
                                            <span id="total-text">Total
                                            </span>

                                            <span class="form-payment-price">
                                                <span data-wrapper-react="true">$
                        <span id="payment_total">0.00
                        </span>
                                                </span>
                                            </span>
                                        </b>
                                    </span>
                                </div>
                                <hr />
                            </div>
                            <table class="form-address-table payment-form-table" style="border: 0" cellpadding="4" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <th colspan="2" style="text-align: left">Payment Method
                                        </th>
                                    </tr>
                                    <tr>
                                        <td valign="top" style="min-width: 50px; vertical-align: top" rowspan="2">
                                            <input type="radio" class="paymentTypeRadios" id="input_3_paymentType_credit" name="q3_products[paymentType]" value="credit" />
                                            <label for="input_3_paymentType_credit">
                                                <div style="display: inline-block; padding-right: 4px">
                                                    <img src="https://cdn.jotfor.ms/images/blank.gif" class="paypalpro_img paypalpro_visa" style="display: inline-block; vertical-align: middle" />
                                                    <img src="https://cdn.jotfor.ms/images/blank.gif" class="paypalpro_img paypalpro_mc" style="display: inline-block; vertical-align: middle" />
                                                    <img src="https://cdn.jotfor.ms/images/blank.gif" class="paypalpro_img paypalpro_amex" style="display: inline-block; vertical-align: middle" />
                                                    <img src="https://cdn.jotfor.ms/images/blank.gif" class="paypalpro_img paypalpro_dc" style="display: inline-block; vertical-align: middle" />
                                                </div>
                                            </label>
                                        </td>
                                        <td align="left" valign="top" style="padding-bottom: 2px !important; text-align: left; vertical-align: top">
                                            <input type="radio" class="paymentTypeRadios" id="input_3_paymentType_express" name="q3_products[paymentType]" checked="" value="express" />
                                            <label for="input_3_paymentType_express">
                                                <img style="vertical-align: middle" src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/pp-acceptance-small.png" />
                                            </label>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table style="display: none; border: 0" id="creditCardTable" class="form-address-table payment-form-table" cellpadding="0" cellspacing="0">
                                <tbody>
                                    <tr>
                                        <th colspan="2" style="text-align: left; margin-top: 20px; display: table" id="ccTitle3">Credit Card
                                        </th>
                                    </tr>
                                    <tr>
                                        <td width="50%">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <label class="form-sub-label" for="input_3_cc_firstName" id="sublabel_cc_firstName" style="min-height: 13px; margin: 0 0 3px 0">First Name </label>
                                                <input type="text" id="input_3_cc_firstName" name="q3_products[cc_firstName]" class="form-textbox cc_firstName" size="20" value="" data-component="cc_firstName" />
                                            </span>
                                        </td>
                                        <td width="50%">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <label class="form-sub-label" for="input_3_cc_lastName" id="sublabel_cc_lastName" style="min-height: 13px; margin: 0 0 3px 0">Last Name </label>
                                                <input type="text" id="input_3_cc_lastName" name="q3_products[cc_lastName]" class="form-textbox cc_lastName" size="20" value="" data-component="cc_lastName" />
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <label class="form-sub-label" for="input_3_cc_number" id="sublabel_cc_number" style="min-height: 13px; margin: 0 0 3px 0">Credit Card Number </label>
                                                <input type="number" id="input_3_cc_number" name="q3_products[cc_number]" class="form-textbox cc_number" autocomplete="off" size="20" value="" data-component="cc_number" />
                                            </span>
                                        </td>
                                        <td width="50%">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <label class="form-sub-label" for="input_3_cc_ccv" id="sublabel_cc_ccv" style="min-height: 13px; margin: 0 0 3px 0">Security Code </label>
                                                <input type="number" id="input_3_cc_ccv" name="q3_products[cc_ccv]" class="form-textbox cc_ccv" autocomplete="off" style="width: 52px" value="" data-component="cc_ccv" />
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <label class="form-sub-label" for="input_3_cc_exp_month" id="sublabel_cc_exp_month" style="min-height: 13px; margin: 0 0 3px 0">Expiration Month </label>
                                                <select class="form-dropdown cc_exp_month" name="q3_products[cc_exp_month]" id="input_3_cc_exp_month" data-component="cc_exp_month">
                                                    <option></option>
                                                    <option value="January">January </option>
                                                    <option value="February">February </option>
                                                    <option value="March">March </option>
                                                    <option value="April">April </option>
                                                    <option value="May">May </option>
                                                    <option value="June">June </option>
                                                    <option value="July">July </option>
                                                    <option value="August">August </option>
                                                    <option value="September">September </option>
                                                    <option value="October">October </option>
                                                    <option value="November">November </option>
                                                    <option value="December">December </option>
                                                </select>
                                            </span>
                                        </td>
                                        <td width="50%">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <label class="form-sub-label" for="input_3_cc_exp_year" id="sublabel_cc_exp_year" style="min-height: 13px; margin: 0 0 3px 0">Expiration Year </label>
                                                <select class="form-dropdown cc_exp_year" name="q3_products[cc_exp_year]" id="input_3_cc_exp_year" data-component="cc_exp_year">
                                                    <option></option>
                                                    <option value="2019">2019 </option>
                                                    <option value="2020">2020 </option>
                                                    <option value="2021">2021 </option>
                                                    <option value="2022">2022 </option>
                                                    <option value="2023">2023 </option>
                                                    <option value="2024">2024 </option>
                                                    <option value="2025">2025 </option>
                                                    <option value="2026">2026 </option>
                                                    <option value="2027">2027 </option>
                                                    <option value="2028">2028 </option>
                                                </select>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th colspan="2" style="text-align: left; margin-top: 20px; display: table">Billing Address
                                        </th>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <input type="text" id="input_3_addr_line1" name="q3_products[addr_line1]" class="form-textbox form-address-line" value="" data-component="addr_line1" />
                                                <label class="form-sub-label" for="input_3_addr_line1" id="sublabel_3_addr_line1" style="min-height: 13px">Street Address </label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <input type="text" id="input_3_addr_line2" name="q3_products[addr_line2]" class="form-textbox form-address-line" size="46" value="" data-component="addr_line2" />
                                                <label class="form-sub-label" for="input_3_addr_line2" id="sublabel_3_addr_line2" style="min-height: 13px">Street Address Line 2 </label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <input type="text" id="input_3_city" name="q3_products[city]" class="form-textbox form-address-city" size="21" value="" data-component="city" />
                                                <label class="form-sub-label" for="input_3_city" id="sublabel_3_city" style="min-height: 13px">City </label>
                                            </span>
                                        </td>
                                        <td>
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <input type="text" id="input_3_state" name="q3_products[state]" class="form-textbox form-address-state" size="22" value="" data-component="state" />
                                                <label class="form-sub-label" for="input_3_state" id="sublabel_3_state" style="min-height: 13px">State / Province </label>
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td width="50%">
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <input type="text" id="input_3_postal" name="q3_products[postal]" class="form-textbox form-address-postal" size="10" value="" data-component="postal" />
                                                <label class="form-sub-label" for="input_3_postal" id="sublabel_3_postal" style="min-height: 13px">Postal / Zip Code </label>
                                            </span>
                                        </td>
                                        <td>
                                            <span class="form-sub-label-container" style="vertical-align: top">
                                                <select class="form-dropdown form-address-country" name="q3_products[country]" id="input_3_country" data-component="country">
                                                    <option value="" selected="">Please Select </option>
                                                    <option value="United States">United States </option>
                                                    <option value="Afghanistan">Afghanistan </option>
                                                    <option value="Albania">Albania </option>
                                                    <option value="Algeria">Algeria </option>
                                                    <option value="American Samoa">American Samoa </option>
                                                    <option value="Andorra">Andorra </option>
                                                    <option value="Angola">Angola </option>
                                                    <option value="Anguilla">Anguilla </option>
                                                    <option value="Antigua and Barbuda">Antigua and Barbuda </option>
                                                    <option value="Argentina">Argentina </option>
                                                    <option value="Armenia">Armenia </option>
                                                    <option value="Aruba">Aruba </option>
                                                    <option value="Australia">Australia </option>
                                                    <option value="Austria">Austria </option>
                                                    <option value="Azerbaijan">Azerbaijan </option>
                                                    <option value="The Bahamas">The Bahamas </option>
                                                    <option value="Bahrain">Bahrain </option>
                                                    <option value="Bangladesh">Bangladesh </option>
                                                    <option value="Barbados">Barbados </option>
                                                    <option value="Belgium">Belgium </option>
                                                    <option value="Belize">Belize </option>
                                                    <option value="Benin">Benin </option>
                                                    <option value="Bermuda">Bermuda </option>
                                                    <option value="Bhutan">Bhutan </option>
                                                    <option value="Bolivia">Bolivia </option>
                                                    <option value="Bosnia and Herzegovina">Bosnia and Herzegovina </option>
                                                    <option value="Botswana">Botswana </option>
                                                    <option value="Brazil">Brazil </option>
                                                    <option value="Brunei">Brunei </option>
                                                    <option value="Bulgaria">Bulgaria </option>
                                                    <option value="Burkina Faso">Burkina Faso </option>
                                                    <option value="Burundi">Burundi </option>
                                                    <option value="Cambodia">Cambodia </option>
                                                    <option value="Cameroon">Cameroon </option>
                                                    <option value="Canada">Canada </option>
                                                    <option value="Cape Verde">Cape Verde </option>
                                                    <option value="Cayman Islands">Cayman Islands </option>
                                                    <option value="Central African Republic">Central African Republic </option>
                                                    <option value="Chad">Chad </option>
                                                    <option value="Chile">Chile </option>
                                                    <option value="China">China </option>
                                                    <option value="Christmas Island">Christmas Island </option>
                                                    <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands </option>
                                                    <option value="Colombia">Colombia </option>
                                                    <option value="Comoros">Comoros </option>
                                                    <option value="Congo">Congo </option>
                                                    <option value="Cook Islands">Cook Islands </option>
                                                    <option value="Costa Rica">Costa Rica </option>
                                                    <option value="Croatia">Croatia </option>
                                                    <option value="Cyprus">Cyprus </option>
                                                    <option value="Czech Republic">Czech Republic </option>
                                                    <option value="Denmark">Denmark </option>
                                                    <option value="Djibouti">Djibouti </option>
                                                    <option value="Dominica">Dominica </option>
                                                    <option value="Dominican Republic">Dominican Republic </option>
                                                    <option value="Ecuador">Ecuador </option>
                                                    <option value="Egypt">Egypt </option>
                                                    <option value="El Salvador">El Salvador </option>
                                                    <option value="Equatorial Guinea">Equatorial Guinea </option>
                                                    <option value="Eritrea">Eritrea </option>
                                                    <option value="Estonia">Estonia </option>
                                                    <option value="Ethiopia">Ethiopia </option>
                                                    <option value="Falkland Islands">Falkland Islands </option>
                                                    <option value="Faroe Islands">Faroe Islands </option>
                                                    <option value="Fiji">Fiji </option>
                                                    <option value="Finland">Finland </option>
                                                    <option value="France">France </option>
                                                    <option value="French Polynesia">French Polynesia </option>
                                                    <option value="Gabon">Gabon </option>
                                                    <option value="The Gambia">The Gambia </option>
                                                    <option value="Georgia">Georgia </option>
                                                    <option value="Germany">Germany </option>
                                                    <option value="Ghana">Ghana </option>
                                                    <option value="Gibraltar">Gibraltar </option>
                                                    <option value="Greece">Greece </option>
                                                    <option value="Greenland">Greenland </option>
                                                    <option value="Grenada">Grenada </option>
                                                    <option value="Guadeloupe">Guadeloupe </option>
                                                    <option value="Guam">Guam </option>
                                                    <option value="Guatemala">Guatemala </option>
                                                    <option value="Guernsey">Guernsey </option>
                                                    <option value="Guinea">Guinea </option>
                                                    <option value="Guinea-Bissau">Guinea-Bissau </option>
                                                    <option value="Guyana">Guyana </option>
                                                    <option value="Haiti">Haiti </option>
                                                    <option value="Honduras">Honduras </option>
                                                    <option value="Hong Kong">Hong Kong </option>
                                                    <option value="Hungary">Hungary </option>
                                                    <option value="Iceland">Iceland </option>
                                                    <option value="India">India </option>
                                                    <option value="Indonesia">Indonesia </option>
                                                    <option value="Iraq">Iraq </option>
                                                    <option value="Ireland">Ireland </option>
                                                    <option value="Israel">Israel </option>
                                                    <option value="Italy">Italy </option>
                                                    <option value="Jamaica">Jamaica </option>
                                                    <option value="Japan">Japan </option>
                                                    <option value="Jersey">Jersey </option>
                                                    <option value="Jordan">Jordan </option>
                                                    <option value="Kazakhstan">Kazakhstan </option>
                                                    <option value="Kenya">Kenya </option>
                                                    <option value="Kiribati">Kiribati </option>
                                                    <option value="North Korea">North Korea </option>
                                                    <option value="South Korea">South Korea </option>
                                                    <option value="Kosovo">Kosovo </option>
                                                    <option value="Kuwait">Kuwait </option>
                                                    <option value="Kyrgyzstan">Kyrgyzstan </option>
                                                    <option value="Laos">Laos </option>
                                                    <option value="Latvia">Latvia </option>
                                                    <option value="Lesotho">Lesotho </option>
                                                    <option value="Liechtenstein">Liechtenstein </option>
                                                    <option value="Lithuania">Lithuania </option>
                                                    <option value="Luxembourg">Luxembourg </option>
                                                    <option value="Macau">Macau </option>
                                                    <option value="Macedonia">Macedonia </option>
                                                    <option value="Madagascar">Madagascar </option>
                                                    <option value="Malawi">Malawi </option>
                                                    <option value="Malaysia">Malaysia </option>
                                                    <option value="Maldives">Maldives </option>
                                                    <option value="Mali">Mali </option>
                                                    <option value="Malta">Malta </option>
                                                    <option value="Marshall Islands">Marshall Islands </option>
                                                    <option value="Martinique">Martinique </option>
                                                    <option value="Mauritania">Mauritania </option>
                                                    <option value="Mauritius">Mauritius </option>
                                                    <option value="Mayotte">Mayotte </option>
                                                    <option value="Mexico">Mexico </option>
                                                    <option value="Micronesia">Micronesia </option>
                                                    <option value="Moldova">Moldova </option>
                                                    <option value="Monaco">Monaco </option>
                                                    <option value="Mongolia">Mongolia </option>
                                                    <option value="Montenegro">Montenegro </option>
                                                    <option value="Montserrat">Montserrat </option>
                                                    <option value="Morocco">Morocco </option>
                                                    <option value="Mozambique">Mozambique </option>
                                                    <option value="Myanmar">Myanmar </option>
                                                    <option value="Nagorno-Karabakh">Nagorno-Karabakh </option>
                                                    <option value="Namibia">Namibia </option>
                                                    <option value="Nauru">Nauru </option>
                                                    <option value="Nepal">Nepal </option>
                                                    <option value="Netherlands">Netherlands </option>
                                                    <option value="Netherlands Antilles">Netherlands Antilles </option>
                                                    <option value="New Caledonia">New Caledonia </option>
                                                    <option value="New Zealand">New Zealand </option>
                                                    <option value="Nicaragua">Nicaragua </option>
                                                    <option value="Niger">Niger </option>
                                                    <option value="Nigeria">Nigeria </option>
                                                    <option value="Niue">Niue </option>
                                                    <option value="Norfolk Island">Norfolk Island </option>
                                                    <option value="Turkish Republic of Northern Cyprus">Turkish Republic of Northern Cyprus </option>
                                                    <option value="Northern Mariana">Northern Mariana </option>
                                                    <option value="Norway">Norway </option>
                                                    <option value="Oman">Oman </option>
                                                    <option value="Pakistan">Pakistan </option>
                                                    <option value="Palau">Palau </option>
                                                    <option value="Palestine">Palestine </option>
                                                    <option value="Panama">Panama </option>
                                                    <option value="Papua New Guinea">Papua New Guinea </option>
                                                    <option value="Paraguay">Paraguay </option>
                                                    <option value="Peru">Peru </option>
                                                    <option value="Philippines">Philippines </option>
                                                    <option value="Pitcairn Islands">Pitcairn Islands </option>
                                                    <option value="Poland">Poland </option>
                                                    <option value="Portugal">Portugal </option>
                                                    <option value="Puerto Rico">Puerto Rico </option>
                                                    <option value="Qatar">Qatar </option>
                                                    <option value="Republic of the Congo">Republic of the Congo </option>
                                                    <option value="Romania">Romania </option>
                                                    <option value="Russia">Russia </option>
                                                    <option value="Rwanda">Rwanda </option>
                                                    <option value="Saint Barthelemy">Saint Barthelemy </option>
                                                    <option value="Saint Helena">Saint Helena </option>
                                                    <option value="Saint Kitts and Nevis">Saint Kitts and Nevis </option>
                                                    <option value="Saint Lucia">Saint Lucia </option>
                                                    <option value="Saint Martin">Saint Martin </option>
                                                    <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon </option>
                                                    <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines </option>
                                                    <option value="Samoa">Samoa </option>
                                                    <option value="San Marino">San Marino </option>
                                                    <option value="Sao Tome and Principe">Sao Tome and Principe </option>
                                                    <option value="Saudi Arabia">Saudi Arabia </option>
                                                    <option value="Senegal">Senegal </option>
                                                    <option value="Serbia">Serbia </option>
                                                    <option value="Seychelles">Seychelles </option>
                                                    <option value="Sierra Leone">Sierra Leone </option>
                                                    <option value="Singapore">Singapore </option>
                                                    <option value="Slovakia">Slovakia </option>
                                                    <option value="Slovenia">Slovenia </option>
                                                    <option value="Solomon Islands">Solomon Islands </option>
                                                    <option value="Somaliland">Somaliland </option>
                                                    <option value="South Africa">South Africa </option>
                                                    <option value="South Ossetia">South Ossetia </option>
                                                    <option value="South Sudan">South Sudan </option>
                                                    <option value="Spain">Spain </option>
                                                    <option value="Sri Lanka">Sri Lanka </option>
                                                    <option value="Sudan">Sudan </option>
                                                    <option value="Suriname">Suriname </option>
                                                    <option value="Svalbard">Svalbard </option>
                                                    <option value="eSwatini">eSwatini </option>
                                                    <option value="Sweden">Sweden </option>
                                                    <option value="Switzerland">Switzerland </option>
                                                    <option value="Taiwan">Taiwan </option>
                                                    <option value="Tajikistan">Tajikistan </option>
                                                    <option value="Tanzania">Tanzania </option>
                                                    <option value="Thailand">Thailand </option>
                                                    <option value="Timor-Leste">Timor-Leste </option>
                                                    <option value="Togo">Togo </option>
                                                    <option value="Tokelau">Tokelau </option>
                                                    <option value="Tonga">Tonga </option>
                                                    <option value="Transnistria Pridnestrovie">Transnistria Pridnestrovie </option>
                                                    <option value="Trinidad and Tobago">Trinidad and Tobago </option>
                                                    <option value="Tristan da Cunha">Tristan da Cunha </option>
                                                    <option value="Tunisia">Tunisia </option>
                                                    <option value="Turkey">Turkey </option>
                                                    <option value="Turkmenistan">Turkmenistan </option>
                                                    <option value="Turks and Caicos Islands">Turks and Caicos Islands </option>
                                                    <option value="Tuvalu">Tuvalu </option>
                                                    <option value="Uganda">Uganda </option>
                                                    <option value="Ukraine">Ukraine </option>
                                                    <option value="United Arab Emirates">United Arab Emirates </option>
                                                    <option value="United Kingdom">United Kingdom </option>
                                                    <option value="Uruguay">Uruguay </option>
                                                    <option value="Uzbekistan">Uzbekistan </option>
                                                    <option value="Vanuatu">Vanuatu </option>
                                                    <option value="Vatican City">Vatican City </option>
                                                    <option value="Venezuela">Venezuela </option>
                                                    <option value="Vietnam">Vietnam </option>
                                                    <option value="British Virgin Islands">British Virgin Islands </option>
                                                    <option value="Isle of Man">Isle of Man </option>
                                                    <option value="US Virgin Islands">US Virgin Islands </option>
                                                    <option value="Wallis and Futuna">Wallis and Futuna </option>
                                                    <option value="Western Sahara">Western Sahara </option>
                                                    <option value="Yemen">Yemen </option>
                                                    <option value="Zambia">Zambia </option>
                                                    <option value="other">Other </option>
                                                </select>
                                                <label class="form-sub-label" for="input_3_country" id="sublabel_3_country" style="min-height: 13px">Country </label>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </li>
                <li class="form-line" data-type="control_fullname" id="id_4">
                    <label class="form-label form-label-left form-label-auto" id="label_4" for="first_4">Buyer Name </label>
                    <div id="cid_4" class="form-input">
                        <div data-wrapper-react="true">
                            <span class="form-sub-label-container" style="vertical-align: top">
                                <input type="text" id="first_4" name="q4_buyerName[first]" class="form-textbox" size="10" value="" data-component="first" aria-labelledby="label_4 sublabel_4_first" />
                                <label class="form-sub-label" for="first_4" id="sublabel_4_first" style="min-height: 13px">First Name </label>
                            </span>
                            <span class="form-sub-label-container" style="vertical-align: top">
                                <input type="text" id="last_4" name="q4_buyerName[last]" class="form-textbox" size="15" value="" data-component="last" aria-labelledby="label_4 sublabel_4_last" />
                                <label class="form-sub-label" for="last_4" id="sublabel_4_last" style="min-height: 13px">Last Name </label>
                            </span>
                        </div>
                    </div>
                </li>
                <li class="form-line" data-type="control_email" id="id_5">
                    <label class="form-label form-label-left form-label-auto" id="label_5" for="input_5">Buyer E-mail </label>
                    <div id="cid_5" class="form-input">
                        <input type="email" id="input_5" name="q5_buyerEmail" class="form-textbox validate[Email]" size="32" value="" placeholder="ex: myname@example.com" data-component="email" aria-labelledby="label_5" />
                    </div>
                </li>
                <li class="form-line" data-type="control_address" id="id_6">
                    <label class="form-label form-label-left form-label-auto" id="label_6" for="input_6undefined">Shipping Address </label>
                    <div id="cid_6" class="form-input">
                        <table summary="" class="form-address-table">
                            <tbody>
                                <tr>
                                    <td colspan="2">
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <input type="text" id="input_6_addr_line1" name="q6_shippingAddress[addr_line1]" class="form-textbox form-address-line" autocomplete="address-line1" value="" data-component="address_line_1" aria-labelledby="label_6 sublabel_6_addr_line1" />
                                            <label class="form-sub-label" for="input_6_addr_line1" id="sublabel_6_addr_line1" style="min-height: 13px">Street Address </label>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <input type="text" id="input_6_addr_line2" name="q6_shippingAddress[addr_line2]" class="form-textbox form-address-line" autocomplete="address-line2" size="46" value="" data-component="address_line_2" aria-labelledby="label_6 sublabel_6_addr_line2" />
                                            <label class="form-sub-label" for="input_6_addr_line2" id="sublabel_6_addr_line2" style="min-height: 13px">Street Address Line 2 </label>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <input type="text" id="input_6_city" name="q6_shippingAddress[city]" class="form-textbox form-address-city" autocomplete="address-level2" size="21" value="" data-component="city" aria-labelledby="label_6 sublabel_6_city" />
                                            <label class="form-sub-label" for="input_6_city" id="sublabel_6_city" style="min-height: 13px">City </label>
                                        </span>
                                    </td>
                                    <td>
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <input type="text" id="input_6_state" name="q6_shippingAddress[state]" class="form-textbox form-address-state" autocomplete="address-level1" size="22" value="" data-component="state" aria-labelledby="label_6 sublabel_6_state" />
                                            <label class="form-sub-label" for="input_6_state" id="sublabel_6_state" style="min-height: 13px">State / Province </label>
                                        </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <input type="text" id="input_6_postal" name="q6_shippingAddress[postal]" class="form-textbox form-address-postal" autocomplete="postal-code" size="10" value="" data-component="zip" aria-labelledby="label_6 sublabel_6_postal" />
                                            <label class="form-sub-label" for="input_6_postal" id="sublabel_6_postal" style="min-height: 13px">Postal / Zip Code </label>
                                        </span>
                                    </td>
                                    <td>
                                        <span class="form-sub-label-container" style="vertical-align: top">
                                            <select class="form-dropdown form-address-country noTranslate" name="q6_shippingAddress[country]" id="input_6_country" data-component="country" aria-labelledby="label_6 sublabel_6_country" autocomplete="country">
                                                <option value="">Please Select </option>
                                                <option value="United States">United States </option>
                                                <option value="Afghanistan">Afghanistan </option>
                                                <option value="Albania">Albania </option>
                                                <option value="Algeria">Algeria </option>
                                                <option value="American Samoa">American Samoa </option>
                                                <option value="Andorra">Andorra </option>
                                                <option value="Angola">Angola </option>
                                                <option value="Anguilla">Anguilla </option>
                                                <option value="Antigua and Barbuda">Antigua and Barbuda </option>
                                                <option value="Argentina">Argentina </option>
                                                <option value="Armenia">Armenia </option>
                                                <option value="Aruba">Aruba </option>
                                                <option value="Australia">Australia </option>
                                                <option value="Austria">Austria </option>
                                                <option value="Azerbaijan">Azerbaijan </option>
                                                <option value="The Bahamas">The Bahamas </option>
                                                <option value="Bahrain">Bahrain </option>
                                                <option value="Bangladesh">Bangladesh </option>
                                                <option value="Barbados">Barbados </option>
                                                <option value="Belarus">Belarus </option>
                                                <option value="Belgium">Belgium </option>
                                                <option value="Belize">Belize </option>
                                                <option value="Benin">Benin </option>
                                                <option value="Bermuda">Bermuda </option>
                                                <option value="Bhutan">Bhutan </option>
                                                <option value="Bolivia">Bolivia </option>
                                                <option value="Bosnia and Herzegovina">Bosnia and Herzegovina </option>
                                                <option value="Botswana">Botswana </option>
                                                <option value="Brazil">Brazil </option>
                                                <option value="Brunei">Brunei </option>
                                                <option value="Bulgaria">Bulgaria </option>
                                                <option value="Burkina Faso">Burkina Faso </option>
                                                <option value="Burundi">Burundi </option>
                                                <option value="Cambodia">Cambodia </option>
                                                <option value="Cameroon">Cameroon </option>
                                                <option value="Canada">Canada </option>
                                                <option value="Cape Verde">Cape Verde </option>
                                                <option value="Cayman Islands">Cayman Islands </option>
                                                <option value="Central African Republic">Central African Republic </option>
                                                <option value="Chad">Chad </option>
                                                <option value="Chile">Chile </option>
                                                <option value="China">China </option>
                                                <option value="Christmas Island">Christmas Island </option>
                                                <option value="Cocos (Keeling) Islands">Cocos (Keeling) Islands </option>
                                                <option value="Colombia">Colombia </option>
                                                <option value="Comoros">Comoros </option>
                                                <option value="Congo">Congo </option>
                                                <option value="Cook Islands">Cook Islands </option>
                                                <option value="Costa Rica">Costa Rica </option>
                                                <option value="Cote d&#x27;Ivoire">Cote d&#x27;Ivoire </option>
                                                <option value="Croatia">Croatia </option>
                                                <option value="Cuba">Cuba </option>
                                                <option value="Cyprus">Cyprus </option>
                                                <option value="Czech Republic">Czech Republic </option>
                                                <option value="Democratic Republic of the Congo">Democratic Republic of the Congo </option>
                                                <option value="Denmark">Denmark </option>
                                                <option value="Djibouti">Djibouti </option>
                                                <option value="Dominica">Dominica </option>
                                                <option value="Dominican Republic">Dominican Republic </option>
                                                <option value="Ecuador">Ecuador </option>
                                                <option value="Egypt">Egypt </option>
                                                <option value="El Salvador">El Salvador </option>
                                                <option value="Equatorial Guinea">Equatorial Guinea </option>
                                                <option value="Eritrea">Eritrea </option>
                                                <option value="Estonia">Estonia </option>
                                                <option value="Ethiopia">Ethiopia </option>
                                                <option value="Falkland Islands">Falkland Islands </option>
                                                <option value="Faroe Islands">Faroe Islands </option>
                                                <option value="Fiji">Fiji </option>
                                                <option value="Finland">Finland </option>
                                                <option value="France">France </option>
                                                <option value="French Polynesia">French Polynesia </option>
                                                <option value="Gabon">Gabon </option>
                                                <option value="The Gambia">The Gambia </option>
                                                <option value="Georgia">Georgia </option>
                                                <option value="Germany">Germany </option>
                                                <option value="Ghana">Ghana </option>
                                                <option value="Gibraltar">Gibraltar </option>
                                                <option value="Greece">Greece </option>
                                                <option value="Greenland">Greenland </option>
                                                <option value="Grenada">Grenada </option>
                                                <option value="Guadeloupe">Guadeloupe </option>
                                                <option value="Guam">Guam </option>
                                                <option value="Guatemala">Guatemala </option>
                                                <option value="Guernsey">Guernsey </option>
                                                <option value="Guinea">Guinea </option>
                                                <option value="Guinea-Bissau">Guinea-Bissau </option>
                                                <option value="Guyana">Guyana </option>
                                                <option value="Haiti">Haiti </option>
                                                <option value="Honduras">Honduras </option>
                                                <option value="Hong Kong">Hong Kong </option>
                                                <option value="Hungary">Hungary </option>
                                                <option value="Iceland">Iceland </option>
                                                <option value="India">India </option>
                                                <option value="Indonesia">Indonesia </option>
                                                <option value="Iran">Iran </option>
                                                <option value="Iraq">Iraq </option>
                                                <option value="Ireland">Ireland </option>
                                                <option value="Israel">Israel </option>
                                                <option value="Italy">Italy </option>
                                                <option value="Jamaica">Jamaica </option>
                                                <option value="Japan">Japan </option>
                                                <option value="Jersey">Jersey </option>
                                                <option value="Jordan">Jordan </option>
                                                <option value="Kazakhstan">Kazakhstan </option>
                                                <option value="Kenya">Kenya </option>
                                                <option value="Kiribati">Kiribati </option>
                                                <option value="North Korea">North Korea </option>
                                                <option value="South Korea">South Korea </option>
                                                <option value="Kosovo">Kosovo </option>
                                                <option value="Kuwait">Kuwait </option>
                                                <option value="Kyrgyzstan">Kyrgyzstan </option>
                                                <option value="Laos">Laos </option>
                                                <option value="Latvia">Latvia </option>
                                                <option value="Lebanon">Lebanon </option>
                                                <option value="Lesotho">Lesotho </option>
                                                <option value="Liberia">Liberia </option>
                                                <option value="Libya">Libya </option>
                                                <option value="Liechtenstein">Liechtenstein </option>
                                                <option value="Lithuania">Lithuania </option>
                                                <option value="Luxembourg">Luxembourg </option>
                                                <option value="Macau">Macau </option>
                                                <option value="Macedonia">Macedonia </option>
                                                <option value="Madagascar">Madagascar </option>
                                                <option value="Malawi">Malawi </option>
                                                <option value="Malaysia">Malaysia </option>
                                                <option value="Maldives">Maldives </option>
                                                <option value="Mali">Mali </option>
                                                <option value="Malta">Malta </option>
                                                <option value="Marshall Islands">Marshall Islands </option>
                                                <option value="Martinique">Martinique </option>
                                                <option value="Mauritania">Mauritania </option>
                                                <option value="Mauritius">Mauritius </option>
                                                <option value="Mayotte">Mayotte </option>
                                                <option value="Mexico">Mexico </option>
                                                <option value="Micronesia">Micronesia </option>
                                                <option value="Moldova">Moldova </option>
                                                <option value="Monaco">Monaco </option>
                                                <option value="Mongolia">Mongolia </option>
                                                <option value="Montenegro">Montenegro </option>
                                                <option value="Montserrat">Montserrat </option>
                                                <option value="Morocco">Morocco </option>
                                                <option value="Mozambique">Mozambique </option>
                                                <option value="Myanmar">Myanmar </option>
                                                <option value="Nagorno-Karabakh">Nagorno-Karabakh </option>
                                                <option value="Namibia">Namibia </option>
                                                <option value="Nauru">Nauru </option>
                                                <option value="Nepal">Nepal </option>
                                                <option value="Netherlands">Netherlands </option>
                                                <option value="Netherlands Antilles">Netherlands Antilles </option>
                                                <option value="New Caledonia">New Caledonia </option>
                                                <option value="New Zealand">New Zealand </option>
                                                <option value="Nicaragua">Nicaragua </option>
                                                <option value="Niger">Niger </option>
                                                <option value="Nigeria">Nigeria </option>
                                                <option value="Niue">Niue </option>
                                                <option value="Norfolk Island">Norfolk Island </option>
                                                <option value="Turkish Republic of Northern Cyprus">Turkish Republic of Northern Cyprus </option>
                                                <option value="Northern Mariana">Northern Mariana </option>
                                                <option value="Norway">Norway </option>
                                                <option value="Oman">Oman </option>
                                                <option value="Pakistan">Pakistan </option>
                                                <option value="Palau">Palau </option>
                                                <option value="Palestine">Palestine </option>
                                                <option value="Panama">Panama </option>
                                                <option value="Papua New Guinea">Papua New Guinea </option>
                                                <option value="Paraguay">Paraguay </option>
                                                <option value="Peru">Peru </option>
                                                <option value="Philippines">Philippines </option>
                                                <option value="Pitcairn Islands">Pitcairn Islands </option>
                                                <option value="Poland">Poland </option>
                                                <option value="Portugal">Portugal </option>
                                                <option value="Puerto Rico">Puerto Rico </option>
                                                <option value="Qatar">Qatar </option>
                                                <option value="Republic of the Congo">Republic of the Congo </option>
                                                <option value="Romania">Romania </option>
                                                <option value="Russia">Russia </option>
                                                <option value="Rwanda">Rwanda </option>
                                                <option value="Saint Barthelemy">Saint Barthelemy </option>
                                                <option value="Saint Helena">Saint Helena </option>
                                                <option value="Saint Kitts and Nevis">Saint Kitts and Nevis </option>
                                                <option value="Saint Lucia">Saint Lucia </option>
                                                <option value="Saint Martin">Saint Martin </option>
                                                <option value="Saint Pierre and Miquelon">Saint Pierre and Miquelon </option>
                                                <option value="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines </option>
                                                <option value="Samoa">Samoa </option>
                                                <option value="San Marino">San Marino </option>
                                                <option value="Sao Tome and Principe">Sao Tome and Principe </option>
                                                <option value="Saudi Arabia">Saudi Arabia </option>
                                                <option value="Senegal">Senegal </option>
                                                <option value="Serbia">Serbia </option>
                                                <option value="Seychelles">Seychelles </option>
                                                <option value="Sierra Leone">Sierra Leone </option>
                                                <option value="Singapore">Singapore </option>
                                                <option value="Slovakia">Slovakia </option>
                                                <option value="Slovenia">Slovenia </option>
                                                <option value="Solomon Islands">Solomon Islands </option>
                                                <option value="Somalia">Somalia </option>
                                                <option value="Somaliland">Somaliland </option>
                                                <option value="South Africa">South Africa </option>
                                                <option value="South Ossetia">South Ossetia </option>
                                                <option value="South Sudan">South Sudan </option>
                                                <option value="Spain">Spain </option>
                                                <option value="Sri Lanka">Sri Lanka </option>
                                                <option value="Sudan">Sudan </option>
                                                <option value="Suriname">Suriname </option>
                                                <option value="Svalbard">Svalbard </option>
                                                <option value="eSwatini">eSwatini </option>
                                                <option value="Sweden">Sweden </option>
                                                <option value="Switzerland">Switzerland </option>
                                                <option value="Syria">Syria </option>
                                                <option value="Taiwan">Taiwan </option>
                                                <option value="Tajikistan">Tajikistan </option>
                                                <option value="Tanzania">Tanzania </option>
                                                <option value="Thailand">Thailand </option>
                                                <option value="Timor-Leste">Timor-Leste </option>
                                                <option value="Togo">Togo </option>
                                                <option value="Tokelau">Tokelau </option>
                                                <option value="Tonga">Tonga </option>
                                                <option value="Transnistria Pridnestrovie">Transnistria Pridnestrovie </option>
                                                <option value="Trinidad and Tobago">Trinidad and Tobago </option>
                                                <option value="Tristan da Cunha">Tristan da Cunha </option>
                                                <option value="Tunisia">Tunisia </option>
                                                <option value="Turkey">Turkey </option>
                                                <option value="Turkmenistan">Turkmenistan </option>
                                                <option value="Turks and Caicos Islands">Turks and Caicos Islands </option>
                                                <option value="Tuvalu">Tuvalu </option>
                                                <option value="Uganda">Uganda </option>
                                                <option value="Ukraine">Ukraine </option>
                                                <option value="United Arab Emirates">United Arab Emirates </option>
                                                <option value="United Kingdom">United Kingdom </option>
                                                <option value="Uruguay">Uruguay </option>
                                                <option value="Uzbekistan">Uzbekistan </option>
                                                <option value="Vanuatu">Vanuatu </option>
                                                <option value="Vatican City">Vatican City </option>
                                                <option value="Venezuela">Venezuela </option>
                                                <option value="Vietnam">Vietnam </option>
                                                <option value="British Virgin Islands">British Virgin Islands </option>
                                                <option value="Isle of Man">Isle of Man </option>
                                                <option value="US Virgin Islands">US Virgin Islands </option>
                                                <option value="Wallis and Futuna">Wallis and Futuna </option>
                                                <option value="Western Sahara">Western Sahara </option>
                                                <option value="Yemen">Yemen </option>
                                                <option value="Zambia">Zambia </option>
                                                <option value="Zimbabwe">Zimbabwe </option>
                                                <option value="other">Other </option>
                                            </select>
                                            <label class="form-sub-label" for="input_6_country" id="sublabel_6_country" style="min-height: 13px">Country </label>
                                        </span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="form-line" data-type="control_button" id="id_2">
                    <div id="cid_2" class="form-input-wide">
                        <div style="margin-left: 156px" class="form-buttons-wrapper ">
                            <button id="input_2" type="submit" class="form-submit-button" data-component="button">
                                Submit
                            </button>
                        </div>
                    </div>
                </li>
                <li style="display: none">Should be Empty:
        <input type="text" name="website" value="" />
                </li>
            </ul>
        </div>
        <script>
            JotForm.showJotFormPowered = "new_footer";
        </script>
        <input type="hidden" id="simple_spc" name="simple_spc" value="92545172437864" />
        <script type="text/javascript">
            document.getElementById("si" + "mple" + "_spc").value = "92545172437864-92545172437864";
        </script>
        <div class="formFooter-heightMask">
        </div>
        <div class="formFooter f6">
            <a href="https://www.jotform.com/pricing?utm_source=formfooter&utm_medium=banner&utm_term=92545172437864&utm_content=jotform_logo&utm_campaign=powered_by_jotform_le" target="_blank" class="formFooter-logoLink">
                <img class="formFooter-logo" src="https://cdn.jotfor.ms/assets/img/logo/logo-new@1x.png" alt="" style="height: 44px;"></a>
            <div class="formFooter-rightSide">
                <span class="formFooter-text">Now create your own JotForm - It's free!
                </span>
                <a class="formFooter-button" href="https://www.jotform.com/?utm_source=formfooter&utm_medium=banner&utm_term=92545172437864&utm_content=jotform_button&utm_campaign=powered_by_jotform_le" target="_blank">Create your own JotForm</a>
            </div>
        </div>
    </form>
</asp:Content>

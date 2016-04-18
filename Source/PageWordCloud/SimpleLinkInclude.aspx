<%@ Page Language="C#" Title="Simple ASP.NET WebForms Word Cloud Generator with a linked script." 
    AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="SimpleLinkInclude.aspx.cs" Inherits="PageWordCloud.SimpleLinkInclude" %>

<%--
    PageWordCloud, an ASP.NET WebForms adaptation of the Word Cloud Generator by Jason Davies.
    Copyright (C) 2016 by marcel suter, marcel@codeministry.ch

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>The text below (it's html source) has been used to generate the word cloud.</h3>
    <hr />

    <div class="row">
        <div class="col-md-6">
            <asp:Literal ID="LiteralExplanation" runat="server">
        <p>
            This is a quite simple ASP.NET WebForms adaptation for the 
            Word Cloud Generator by Jason Davies (http://www.jasondavies.com/), 
            taken almost directly from the example in https://www.jasondavies.com/wordcloud/.
        </p>
        <p>
            The only major modification done here is to take the original page with it's HTML controls into this Web Form and 
            replacing the controls with ASP.NET Controls with an appropriate client side Id. 
            This allows to control the behaviour of the Word Cloud from the server side, 
            while the computation still is entirely done on the client side.
        </p>
        <p>
            However, this implementation has the following shortcomings:
        </p>

        <ul>
            <li>The SVG/PNG Download has been removed for simplicity.</li>
            <li>The random palette functionality is not supported.</li>
            <li>The client side Control Id's are hard coded/static and may conflict with potential other content on the page.</li>
        </ul>         
        <p class="fine">                                                               
                Copyright notice: The Word Cloud Generator itself is Copyright (c) 2013, Jason Davies, as noted in the linked modified JavaScript source file.
        </p>
            </asp:Literal>
        </div>
        <div class="col-md-6">
            <%--This is the visualization placeholder for the word cloud--%>
            <div id="vis"></div>

            <%--These are the hidden fields for the various configuration options--%>
            <div style="visibility: hidden">

                <%--Number of words to display, default is 250--%>
                <%--<input type="number" value="250" min="1" id="max">--%>
                <asp:HiddenField runat="server" ID="max" ClientIDMode="Static" Value="250" />


                <%--One word per line, default is false. --%>
                <%--Whether to take on word per line or to apply an english word parser--%>
                <%--<input type="checkbox" id="per-line">--%>
                <asp:CheckBox runat="server" ID="perline" ClientIDMode="Static" Value="false" />

                <%--The spiral style--%>
                <%--For simplicity, only the archimedean type is supported, without the ability to change programmatically --%>
                <input type="radio" name="spiral" id="archimedean" value="archimedean" checked="checked">
                <%--<input type="radio" name="spiral" id="rectangular" value="rectangular">--%>

                <%--The scale style--%>
                <%--For simplicity, only the log type is supported, without the ability to change programmatically --%>
                <input type="radio" name="scale" id="scale-log" value="log" checked="checked">
                <%--<input type="radio" name="scale" id="scale-sqrt" value="sqrt">--%>
                <%--<input type="radio" name="scale" id="scale-linear" value="linear">--%>


                <%--Font, Default is Impact--%>
                <%--<input type="text" id="font" value="Impact">--%>
                <asp:HiddenField runat="server" ID="font" ClientIDMode="Static" Value="Impact" />

                <%--angles for word display--%>
                <%--For simplicity, without the ability to change programmatically --%>
                <input type="number" id="angle-count" value="5" min="1">
                <input type="number" id="angle-from" value="-60" min="-90" max="90">
                <input type="number" id="angle-to" value="60" min="-90" max="90">
                
                <%--size of the word cloud canvas. Default is w=960, h=600 --%>
                <asp:TextBox runat="server" type="number"  ID="wordcloudcanvaswidth" Text="960" ClientIDMode="Static"/>
                <asp:TextBox runat="server" type="number"  ID="wordcloudcanvasheight" Text="600" ClientIDMode="Static"/>


                <%--This contains the text to use for the wordcloud. The content must be set via the literal--%>
                <textarea id="text">
                    <asp:Literal ID="WordCloudText" runat="server"></asp:Literal>
                </textarea>
            </div>
        </div>
    </div>
    <%--Simply include the scripts--%>
    <script src="https://d3js.org/d3.v3.min.js" charset="utf-8"></script>
    <script src="Scripts/cloud.min.webforms.js"></script>
</asp:Content>


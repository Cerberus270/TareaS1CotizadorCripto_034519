<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cotizador.aspx.cs" Inherits="TareaS1CotizadorCripto_034519.Cotizador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="https://cdn.tailwindcss.com"></script>
    <title>Cotizador Cripto</title>
</head>
<body class="mx-auto bg-gradient-to-r from-gray-400 via-gray-600 to-blue-800">
    <div class="container">
        <div class="grid grid-cols-2">
            <div class="px-2 py-10 max-w-md mx-auto">
                <img src="img/cryptomonedas.png" class="w-auto h-auto" alt="" />
            </div>
            <div class="px-2 py-10 max-w-md mx-auto">
                <form runat="server">
                    <h2 class="text-2xl font-bold text-white ">COTIZADOR CRIPTO</h2>
                    <hr class="my-6" />
                    <label class="uppercase text-sm text-white font-bold">SELECCIONE SU MONEDA</label>
                    <asp:DropDownList ID="cmbMoneda" runat="server"
                        class="w-full p-3 mt-2 mb-4 w-full rounded border-2 border-slate-100 focus:border-slate-200 focus:outline-none">
                        <asp:ListItem Value="">Elige tu Moneda</asp:ListItem>
                        <asp:ListItem Value="USD">$ Dolar Estadounidense</asp:ListItem>
                        <asp:ListItem Value="MXN">$ Peso Mexicano</asp:ListItem>
                        <asp:ListItem Value="GBP">£ Libra Esterlina</asp:ListItem>
                        <asp:ListItem Value="EUR">€ Euro</asp:ListItem>
                    </asp:DropDownList>
                    <label class="uppercase text-sm font-bold text-white">SELECCIONE SU CRIPTO</label>
                    <asp:DropDownList ID="cmbCripto" runat="server"
                        class="w-full p-3 mt-2 mb-4 w-full rounded border-2 border-slate-100 focus:border-slate-200 focus:outline-none">
                        <asp:ListItem Value="">Elige tu CRIPTO</asp:ListItem>
                        <asp:ListItem Value="BTC">BTC - BITCOIN</asp:ListItem>
                        <asp:ListItem Value="ETH">ETH - Etherum</asp:ListItem>
                        <asp:ListItem Value="SOL">SOL - SOLANA</asp:ListItem>
                        <asp:ListItem Value="ADA">ADA - CARDANO</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Button ID="btnProcesar" runat="server" Text="Cotizar" OnClick ="btnProcesar_Click"
                        class="py-3 px-6 my-2 bg-emerald-500 text-white font-medium rounded hover:bg-indigo-500 cursor-pointer ease-in-out duration-300" />
                    <hr class="my-6" />
                    <asp:Label ID="result" runat="server" class="font-bold text-white"></asp:Label>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="jadwal.aspx.vb" Inherits="UAS_Basis_Data.jadwal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div  
        style="font-style: normal; font-weight: bold; font-variant: normal; text-transform: uppercase; color: #000000; font-size: large; font-family: Arial, Helvetica, sans-serif; text-align: center;">
        JADWAL KULIAH PROGRAM STUDI TEKNIK INFORMATIKA
        <br />
        PERIODE
        <asp:DropDownList ID="ddlPeriode" runat="server" AutoPostBack="True">
            <asp:ListItem Selected="True" Value="1">GANJIL</asp:ListItem>
            <asp:ListItem Value="0">GENAP</asp:ListItem>
        </asp:DropDownList>
&nbsp;TAHUN AKADEMIK
        <asp:DropDownList ID="DropDownList2" runat="server">
            <asp:ListItem>2017/2018</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:DropDownList ID="DropDownList3" runat="server">
            <asp:ListItem>KPT-2016</asp:ListItem>
        </asp:DropDownList>
&nbsp;SEMESTER
        <asp:DropDownList ID="ddlSemester" runat="server" AutoPostBack="True">
        </asp:DropDownList>
    </div>
    <br />
    <div>
        <table style="font-family: Arial, Helvetica, sans-serif">
            <tr>
                <th 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #0099CC; text-align: left">Hari</th>
                <th 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #0099CC; text-align: left">Jam ke</th>
                <th 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #0099CC; text-align: left">Nama Dosen</th>
                <th 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #0099CC; text-align: left">Nama Matakuliah</th>
                <th 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #0099CC; text-align: left">Ruang</th>
                <th 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #0099CC; text-align: left">Kelas</th>
                <th rowspan="2"><br /><asp:Button ID="btnSimpan" runat="server" Text="Simpan" /></th>
            </tr>
            <tr>
                <td>
                    <asp:DropDownList ID="ddlHari" runat="server">
                        <asp:ListItem>Senin</asp:ListItem>
                        <asp:ListItem>Selasa</asp:ListItem>
                        <asp:ListItem>Rabu</asp:ListItem>
                        <asp:ListItem>Kamis</asp:ListItem>
                        <asp:ListItem>Jum&#39;at</asp:ListItem>
                        <asp:ListItem>Minggu</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlJam" runat="server">
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlMenit" runat="server">
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem>32</asp:ListItem>
                        <asp:ListItem>33</asp:ListItem>
                        <asp:ListItem>34</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>37</asp:ListItem>
                        <asp:ListItem>38</asp:ListItem>
                        <asp:ListItem>39</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>41</asp:ListItem>
                        <asp:ListItem>42</asp:ListItem>
                        <asp:ListItem>43</asp:ListItem>
                        <asp:ListItem>44</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>46</asp:ListItem>
                        <asp:ListItem>47</asp:ListItem>
                        <asp:ListItem>48</asp:ListItem>
                        <asp:ListItem>49</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>51</asp:ListItem>
                        <asp:ListItem>52</asp:ListItem>
                        <asp:ListItem>53</asp:ListItem>
                        <asp:ListItem>54</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>56</asp:ListItem>
                        <asp:ListItem>57</asp:ListItem>
                        <asp:ListItem>58</asp:ListItem>
                        <asp:ListItem>59</asp:ListItem>
                    </asp:DropDownList>
                    s/d
                    <asp:DropDownList ID="ddlJamS" runat="server">
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlMenitS" runat="server">
                        <asp:ListItem>00</asp:ListItem>
                        <asp:ListItem>01</asp:ListItem>
                        <asp:ListItem>02</asp:ListItem>
                        <asp:ListItem>03</asp:ListItem>
                        <asp:ListItem>04</asp:ListItem>
                        <asp:ListItem>05</asp:ListItem>
                        <asp:ListItem>06</asp:ListItem>
                        <asp:ListItem>07</asp:ListItem>
                        <asp:ListItem>08</asp:ListItem>
                        <asp:ListItem>09</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                        <asp:ListItem>31</asp:ListItem>
                        <asp:ListItem>32</asp:ListItem>
                        <asp:ListItem>33</asp:ListItem>
                        <asp:ListItem>34</asp:ListItem>
                        <asp:ListItem>35</asp:ListItem>
                        <asp:ListItem>36</asp:ListItem>
                        <asp:ListItem>37</asp:ListItem>
                        <asp:ListItem>38</asp:ListItem>
                        <asp:ListItem>39</asp:ListItem>
                        <asp:ListItem>40</asp:ListItem>
                        <asp:ListItem>41</asp:ListItem>
                        <asp:ListItem>42</asp:ListItem>
                        <asp:ListItem>43</asp:ListItem>
                        <asp:ListItem>44</asp:ListItem>
                        <asp:ListItem>45</asp:ListItem>
                        <asp:ListItem>46</asp:ListItem>
                        <asp:ListItem>47</asp:ListItem>
                        <asp:ListItem>48</asp:ListItem>
                        <asp:ListItem>49</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>51</asp:ListItem>
                        <asp:ListItem>52</asp:ListItem>
                        <asp:ListItem>53</asp:ListItem>
                        <asp:ListItem>54</asp:ListItem>
                        <asp:ListItem>55</asp:ListItem>
                        <asp:ListItem>56</asp:ListItem>
                        <asp:ListItem>57</asp:ListItem>
                        <asp:ListItem>58</asp:ListItem>
                        <asp:ListItem>59</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-transform: capitalize">
                    <asp:DropDownList ID="ddlDosen" runat="server" DataSourceID="dsDosen" 
                        DataTextField="nama" DataValueField="id">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="dsDosen" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:uasbasdatConnectionString %>" 
                        SelectCommand="SELECT [nama], [id] FROM [dosen] ORDER BY [nama]">
                    </asp:SqlDataSource>
                </td>
                <td style="text-transform: capitalize">
                    <asp:DropDownList ID="ddlMakul" runat="server" DataSourceID="dsMakul" 
                        DataTextField="judul" DataValueField="kode">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="dsMakul" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:uasbasdatConnectionString %>" 
                        SelectCommand="SELECT [judul], [kode] FROM [makul]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:DropDownList ID="ddlGedung" runat="server">
                        <asp:ListItem>I</asp:ListItem>
                        <asp:ListItem>J</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlLantai" runat="server">
                        <asp:ListItem>Lt.I.</asp:ListItem>
                        <asp:ListItem>Lt.II.</asp:ListItem>
                        <asp:ListItem>Lt.III.</asp:ListItem>
                        <asp:ListItem>Lt.IV.</asp:ListItem>
                        <asp:ListItem>Lt.V.</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlRuang" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:DropDownList ID="ddlKelas" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                    </asp:DropDownList>
                    <asp:DropDownList ID="ddlSubKelas" runat="server">
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                        <asp:ListItem>E</asp:ListItem>
                        <asp:ListItem>F</asp:ListItem>
                        <asp:ListItem>G</asp:ListItem>
                        <asp:ListItem>H</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
    </div>
    
    <br />
    
    <div style="table-layout: auto; font-family: Arial, Helvetica, sans-serif;">
        <asp:GridView ID="dgv" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CellPadding="4" 
            DataSourceID="dsJadwal" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="hari" HeaderText="hari" SortExpression="hari" />
                <asp:BoundField DataField="mulai" HeaderText="mulai" SortExpression="mulai" />
                <asp:BoundField DataField="selesai" HeaderText="selesai" 
                    SortExpression="selesai" />
                <asp:BoundField DataField="nama" HeaderText="nama" SortExpression="nama" />
                <asp:BoundField DataField="judul" HeaderText="judul" SortExpression="judul" />
                <asp:BoundField DataField="ruang" HeaderText="ruang" SortExpression="ruang" />
                <asp:BoundField DataField="kelas" HeaderText="kelas" SortExpression="kelas" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="dsJadwal" runat="server" 
            ConnectionString="<%$ ConnectionStrings:uasbasdatConnectionString %>" 
            SelectCommand="SELECT jadwal.hari, jadwal.mulai, jadwal.selesai, dosen.nama, makul.judul, jadwal.ruang, jadwal.kelas FROM jadwal INNER JOIN dosen ON jadwal.id = dosen.id INNER JOIN makul ON jadwal.kode = makul.kode">
        </asp:SqlDataSource>
    </div>

    <br />

    <div style="font-family: Arial, Helvetica, sans-serif; font-size: medium; font-weight: bold; font-style: normal; font-variant: normal; text-transform: capitalize; color: #0099CC; text-align: left">Hitung SKS</div>

    <div style="font-family: Arial, Helvetica, sans-serif; font-size: medium;">
        <asp:DropDownList ID="ddlDosenSKS" runat="server" DataSourceID="dsDosen" 
            DataTextField="nama" DataValueField="id" AutoPostBack="True">
        </asp:DropDownList> &nbsp&nbsp SKS: 
        <asp:Label ID="labelSKS" runat="server" Text="-"></asp:Label>
    </div>

    </form>
    </body>
</html>

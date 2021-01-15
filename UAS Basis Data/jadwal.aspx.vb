Imports System
Imports System.Data.SqlClient

Public Class jadwal
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        PilihSemester()

        With dgv
            .Columns(0).HeaderText = "Hari"
            .Columns(1).HeaderText = "Mulai"
            .Columns(2).HeaderText = "Selesai"
            .Columns(3).HeaderText = "Nama Dosen"
            .Columns(4).HeaderText = "Nama Mata Kuliah"
            .Columns(5).HeaderText = "Ruang"
            .Columns(6).HeaderText = "Kelas"
        End With
    End Sub

    Sub PilihSemester()
        ddlSemester.Items.Clear()

        If ddlPeriode.SelectedValue = 0 Then
            ddlSemester.Items.Add(New ListItem(2, 2))
            ddlSemester.Items.Add(New ListItem(4, 4))
            ddlSemester.Items.Add(New ListItem(6, 6))
            ddlSemester.Items.Add(New ListItem(8, 8))
        Else
            ddlSemester.Items.Add(New ListItem(1, 1))
            ddlSemester.Items.Add(New ListItem(3, 3))
            ddlSemester.Items.Add(New ListItem(5, 5))
            ddlSemester.Items.Add(New ListItem(7, 7))
        End If
    End Sub

    Protected Sub btnSimpan_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSimpan.Click
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=SILVERWOLF-PC\SQLEXPRESS;initial catalog=uasbasdat")
        koneksi.Open()

        Dim formdata As String = "'" & ddlHari.Text & "','" & ddlJam.Text & ":" & ddlMenit.Text & "','" & ddlJamS.Text & ":" & ddlMenitS.Text & "'," & ddlDosen.SelectedValue & "," & ddlMakul.SelectedValue & ",'" & ddlGedung.Text & ddlLantai.Text & ddlRuang.Text & "','" & ddlKelas.Text & ddlSubKelas.Text & "'"
        Dim query As String = "INSERT INTO jadwal (hari,mulai,selesai,id,kode,ruang,kelas) VALUES (" & formdata & ")"

        ' To Debug
        ' MsgBox(formdata)

        Dim command As New SqlCommand(query, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader

        ' To Reload
        Response.Redirect(HttpContext.Current.Request.Url.ToString(), True)
    End Sub

    Protected Sub ddlPeriode_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlPeriode.SelectedIndexChanged
        PilihSemester()
    End Sub

    Protected Sub ddlSemester_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlSemester.SelectedIndexChanged
        Dim koneksi As New SqlConnection("integrated security=sspi;data source=SILVERWOLF-PC\SQLEXPRESS;initial catalog=uasbasdat")
        koneksi.Open()
        Dim src As String = "SELECT jadwal.hari, jadwal.mulai, jadwal.selesai, dosen.nama, makul.judul, jadwal.ruang, jadwal.kelas FROM jadwal INNER JOIN dosen ON jadwal.id = dosen.id INNER JOIN makul ON jadwal.kode = makul.kode WHERE makul.semester = " & ddlSemester.SelectedValue
        Dim adapter As New SqlDataAdapter(src, koneksi)
        Dim command As New SqlCommand(src, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader
        reader.Close()

        'If (reader.Read()) Then
        '    Dim ds As New DataSet
        '    adapter.Fill(ds)
        '    Dim tabel As DataTable = ds.Tables(0)
        '    dgv.DataSource = tabel
        '    dgv.DataBind()
        'Else
        '    MsgBox("Data tidak ditemukan")
        'End If

        Dim ds As New DataSet
        adapter.Fill(ds)

        Dim tabel As DataTable = ds.Tables(0)
        dgv.DataSource = tabel
        
        koneksi.Close()
    End Sub
End Class
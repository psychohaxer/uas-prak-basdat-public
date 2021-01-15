Imports System
Imports System.Data.SqlClient

' MOHON DIPERHATIKAN
' Komentar dokumentasi jangan dihapus agar mudah memahami kode dan mengidentifikasi error.

Public Class dashboard
    Inherits System.Web.UI.Page

    ' Ganti 'SILVERWOLF-PC\SQLEXPRESS' dengan server PC Anda.
    ' Jika database yang digunakan berbeda, ganti 'uasbasdat' dengan nama database yang akan digunakan.
    Dim koneksi As New SqlConnection("integrated security=sspi;data source=SILVERWOLF-PC\SQLEXPRESS;initial catalog=uasbasdat")

    ' Berisi apa yang dilakukan ketika halaman dimuat
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        ConCh()
        FetchData(ddlSemester.SelectedValue)
    End Sub

    ' Fungsi ConCh digunakan untuk memeriksa apakah koneksi terbuka atau tidak.
    ' Jika terbuka akan ditutup agar tidak memunculkan error.
    Sub ConCh()

        If (koneksi.State = ConnectionState.Open) Then
            koneksi.Close()
        End If
    End Sub

    ' Fungsi PilihSemester digunakan untuk menampilkan list semester sesuai periode (ganjil atau genap).
    Sub PilihSemester()
        ddlSemester.Items.Clear()

        If ddlPeriode.SelectedValue = 0 Then
            ddlSemester.Items.Add(New ListItem(2, 2))
            ddlSemester.Items.Add(New ListItem(4, 4))
            ddlSemester.Items.Add(New ListItem(6, 6))
            ddlSemester.Items.Add(New ListItem(8, 8))
        ElseIf ddlPeriode.SelectedValue = 1 Then
            ddlSemester.Items.Add(New ListItem(1, 1))
            ddlSemester.Items.Add(New ListItem(3, 3))
            ddlSemester.Items.Add(New ListItem(5, 5))
            ddlSemester.Items.Add(New ListItem(7, 7))
        End If

    End Sub

    ' Fungsi FetchData digunakan untuk menampilkan data dalam gridview 'dgv'.
    Sub FetchData(ByVal sem As Integer)
        ConCh()
        koneksi.Open()

        ' Query untuk mengambil data dari database
        ' Ganti jika tabel yang digunakan berbeda
        Dim src As String = "SELECT jadwal.hari AS Hari, jadwal.mulai AS Mulai, jadwal.selesai AS Selesai, dosen.nama AS Dosen, makul.judul AS Matakuliah, jadwal.ruang AS Ruang, jadwal.kelas as Kelas FROM jadwal INNER JOIN dosen ON jadwal.id = dosen.id INNER JOIN makul ON jadwal.kode = makul.kode WHERE makul.semester = " & CInt(sem)

        Dim adapter As New SqlDataAdapter(src, koneksi)
        Dim command As New SqlCommand(src, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader

        If (reader.Read()) Then ' Jika ada datanya maka ditampilkan
            reader.Close()
            Dim ds As New DataSet
            adapter.Fill(ds)
            Dim tabel As DataTable = ds.Tables(0)
            dgv.DataSource = tabel
            dgv.DataBind()
        Else                    ' Jika tidak ada datanya maka gridview dikosongkan
            dgv.DataSource = Nothing
            dgv.DataBind()
        End If

        reader.Close()
        koneksi.Close()
    End Sub

    ' Kode untuk button Simpan
    Protected Sub btnSimpan_Click(ByVal sender As Object, ByVal e As EventArgs) Handles btnSimpan.Click
        ConCh()
        koneksi.Open()

        ' Ambil data dari form
        Dim formdata As String = "'" & ddlHari.Text & "','" & ddlJam.Text & ":" & ddlMenit.Text & "','" & ddlJamS.Text & ":" & ddlMenitS.Text & "'," & ddlDosen.SelectedValue & "," & ddlMakul.SelectedValue & ",'" & ddlGedung.Text & ddlLantai.Text & ddlRuang.Text & "','" & ddlKelas.Text & ddlSubKelas.Text & "'"

        ' Query untuk validasi
        ' Dim validasi As String = "SELECT id FROM jadwal WHERE id=" & ddlDosen.SelectedValue & " AND hari='" & ddlHari.SelectedValue & "' AND selesai >= '" & ddlJam.SelectedValue & ":" & ddlMenit.SelectedValue & "'"
        Dim validasi As String = "SELECT * FROM jadwal WHERE (mulai = '" & ddlJam.SelectedValue & ":" & ddlMenit.SelectedValue & "' AND selesai > '" & ddlJamS.SelectedValue & ":" & ddlMenitS.SelectedValue & "') AND kode = " & ddlMakul.SelectedValue

        Dim command As New SqlCommand(validasi, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader

        If (reader.Read()) Then ' Jika query validasi mengembalikan nilai maka input data dibatalkan
            MsgBox("Jadwal tabrakan..!", 0 + 16 + 0, "Error")
            reader.Close()
        Else                    ' Jika query validasi tidak mengembalikan nilai maka input data dilaksanakan
            reader.Close()
            Dim input As String = "INSERT INTO jadwal (hari,mulai,selesai,id,kode,ruang,kelas) VALUES (" & formdata & ")"
            Dim command2 As New SqlCommand(input, koneksi)
            Dim reader2 As SqlDataReader = command2.ExecuteReader
            reader2.Close()

            ' Menampilkan data
            FetchData(ddlSemester.SelectedValue)

            ' Me-refresh value
            dgv.DataBind()
        End If

    End Sub

    ' Kode untuk menampilkan jadwal sesuai kriteria jika PERIODE diganti
    Protected Sub ddlPeriode_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlPeriode.SelectedIndexChanged
        PilihSemester()
        FetchData(ddlSemester.SelectedValue)
    End Sub

    ' Kode untuk menampilkan jadwal sesuai kriteria jika SEMESTER diganti
    Protected Sub ddlSemester_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlSemester.SelectedIndexChanged
        FetchData(ddlSemester.SelectedValue)
    End Sub

    ' Kode untuk menampilkan total SKS per dosen
    Protected Sub ddlDosenSKS_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles ddlDosenSKS.SelectedIndexChanged
        ConCh()
        koneksi.Open()

        Dim query = "SELECT SUM(sks) AS total FROM makul WHERE id=" & ddlDosenSKS.SelectedValue
        Dim command As New SqlCommand(query, koneksi)
        Dim reader As SqlDataReader = command.ExecuteReader()

        If reader.HasRows Then
            While (reader.Read())
                labelSKS.Text = reader("total").ToString()
            End While
        End If

        koneksi.Close()
    End Sub

End Class
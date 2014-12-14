Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()
        Dim lang As String = Request("Language1")

        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)

        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        Dim money As Decimal = tb_salary.Text
        tb_salary.Text = String.Format("{0:C", money)

        tb_name.Focus()

    End Sub

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        If rbtn_male.Checked Then
            lbl_nameTitle.Text = "Mr. "
        End If

        If rbtn_female.Checked Then
            lbl_nameTitle.Text = "Ms. "
        End If

        lbl_nameOutput.Text = tb_name.Text

        lbl_expectedSalary.Text = tb_salary.Text


    End Sub
End Class

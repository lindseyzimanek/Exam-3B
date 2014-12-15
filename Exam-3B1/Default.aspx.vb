Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()
        Dim lang As String = Request("dropdown_languages")

        If lang IsNot Nothing Or lang <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(lang)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(lang)

        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        tb_name.Focus()

        cal_graduate.VisibleDate = Today

    End Sub

    Protected Sub btn_submit_Click(sender As Object, e As EventArgs) Handles btn_submit.Click

        If rbtn_male.Checked Then
            lbl_nameTitle.Text = "Mr. "
        End If

        If rbtn_female.Checked Then
            lbl_nameTitle.Text = "Ms. "
        End If

        lbl_calendarResponse.Text = cal_graduate.SelectedDate.ToShortDateString()

        Dim money As Decimal = Val(tb_salary.Text)
        lbl_expectedSalary.Text = String.Format("{0:C", money)

        lbl_nameOutput.Text = StrConv(tb_name.Text, VbStrConv.ProperCase)

        lbl_expectedSalary.Text = tb_salary.Text

        panel_questions.Visible = False

        panel_response.Visible = True

    End Sub
End Class

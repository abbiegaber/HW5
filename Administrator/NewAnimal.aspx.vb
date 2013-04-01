
Partial Class Default2
    Inherits System.Web.UI.Page

    
    Protected Sub DetailsView1_ItemInserted(sender As Object, e As System.Web.UI.WebControls.DetailsViewInsertedEventArgs) Handles DetailsView1.ItemInserted
        Response.Redirect("ShelterGridView.aspx")
    End Sub
End Class

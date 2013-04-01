
Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub DetailsView1_ItemDeleted(sender As Object, e As System.Web.UI.WebControls.DetailsViewDeletedEventArgs) Handles DetailsView1.ItemDeleted
        Dim deletedAnimals As String = e.Values("AnimalName").ToString()
        Response.Write("The record ")
        Response.Write("<span class=deletedAnimals>")
        Response.Write(deletedAnimals)
        Response.Write("</span> has been deleted from the database.")

        Response.AddHeader("REFRESH", "3;URL=ShelterGridView.aspx")
        'Response.Write("The record has been deleted from the database.")
    End Sub


    Protected Sub DetailsView1_ItemUpdated(sender As Object, e As System.Web.UI.WebControls.DetailsViewUpdatedEventArgs) Handles DetailsView1.ItemUpdated
        Response.Redirect("ShelterGridView.aspx")
    End Sub

End Class

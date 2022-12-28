<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task2.aspx.cs" Inherits="Task2.task2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.0.1/mdb.min.css"rel="stylesheet"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                     <div class="container my-5 py-5">
    <div class="row d-flex justify-content-center">
      <div class="col-md-12 col-lg-10 col-xl-8">
        <div class="card">
          <div class="card-body" id="moath" runat="server">
            
          </div>
          <div class="card-footer py-3 border-0" style="background-color: #f8f9fa;">
            <div class="d-flex flex-start w-100">
              <img class="rounded-circle shadow-1-strong me-3"
                src="t.jpg" alt="avatar" width="40"
                height="40" />
              <div class="form-outline w-100">
                <textarea runat="server" class="form-control" id="textAreaExample" rows="4"
                  style="background: #fff;"></textarea>
                <label class="form-label" for="textAreaExample">Message</label>
              </div>
            </div>
            <div class="float-end mt-2 pt-1">
                <asp:Button class="btn btn-primary btn-sm" ID="Button1" runat="server" Text="Post comment" OnClick="Button1_Click" />
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
                </ContentTemplate>
            </asp:UpdatePanel>
            <section style="background-color: #eee;">
 
</section>
        </div>
    </form>
</body>
</html>

<%@ LANGUAGE="VBSCRIPT" %>
<%
   Response.Expires = -10000
   Server.ScriptTimeOut = 7200

   Set theForm = Server.CreateObject("ABCUpload4.XForm")
   theForm.AbsolutePath = True '������ ��밡��
   theForm.Overwrite = True    '����� ����
   theForm.CodePage = 949      '�ѱ����� �����ϰ�

   imagepath = trim(theForm.item("imagepath"))
   irid = trim(theForm.item("id"))

   Set theField = theForm("update_image")(1)

   If theField.FileExists Then
      DirectoryPath = server.mappath("/") & Replace(imagepath,"/","\")
      strFileName = theField.SafeFileName

      If theField.Length > 4 * 1024 * 1024 Then
         Page_Msg_Back "4M �̻� ������ ���ε��Ͻ� �� �����ϴ�."
         Response.end
      End If

      strFileWholePath = GetUniqueName(strFileName, DirectoryPath)

      theField.Save strFileWholePath
   End If

   Set fs = server.CreateObject("Scripting.FileSystemObject")
   strFileName = fs.GetFileName(strFileWholePath)

   With response
      .write "<script language=javascript>" & vbNewLine
      .write "  parent.parent.insertIMG('" & irid & "','" & strFileName & "');" & vbNewLine
      .write "  parent.parent.oEditors.getById[""" & irid & """].exec(""SE_TOGGLE_IMAGEUPLOAD_LAYER"");" & vbNewLine
      .write "</script>" & vbNewLine
   End With

   '//////////////////////////////////////////////////////////////////////////////////
   '// ���ϰ���
   '////////////////////////////////// ///////////////////////////////////////////////

    Function GetUniqueName(byRef strFileName, DirectoryPath)
        Dim strName, strExt
        strName = Mid(strFileName, 1, InstrRev(strFileName, ".") - 1)
        strExt  = Mid(strFileName, InstrRev(strFileName, ".") + 1)

        Dim fso
        Set fso = Server.CreateObject("Scripting.FileSystemObject")

        Dim bExist : bExist = True
        '�켱 �����̸��� ������ �����Ѵٰ� ����
        Dim strFileWholePath : strFileWholePath = DirectoryPath & "\" & strName & "." & strExt
        '������ ������ ������ �̸�(������ �������� ���) ����
        Dim countFileName : countFileName = 0
        '������ ������ ���, �̸� �ڿ� ���� ���ڸ� ������.

        Do While bExist ' �켱 �ִٰ� ������.
            If (fso.FileExists(strFileWholePath)) Then ' ���� �̸��� ������ ���� ��
                countFileName = countFileName + 1 '���ϸ� ���ڸ� ���� ���ο� ���� �̸� ����
                strFileName = strName & "(" & countFileName & ")." & strExt
                strFileWholePath = DirectoryPath & "\" & strFileName
            Else
                bExist = False
            End If
        Loop
        GetUniqueName = strFileWholePath
    End Function

   Sub Page_Msg_Back(msg)
      with response
         .write "<script language='javascript'>" & vbNewLine
         .write "  alert('" & msg & "');" & vbNewLine
         .write "  history.back();" & vbNewLine
         .write "</script>" & vbNewLine
      End with
   End Sub
%>
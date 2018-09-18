<%@ LANGUAGE="VBSCRIPT" %>
<%
   Response.Expires = -10000
   Server.ScriptTimeOut = 7200

   DefaultPath = server.mappath("/") & "\file"

   Set uploadform = Server.CreateObject("DEXT.FileUpload")
   uploadform.DefaultPath = DefaultPath
   uploadform.MaxFileLen = 10485760

   If uploadform("update_image").FileLen > uploadform.MaxFileLen Then
      Page_Msg_Back "10M �̻��� �������� ������ ���ε��Ͻ� �� �����ϴ�"
      Response.end
   End If

   mimetype = uploadform("update_image").MimeType
   If mimetype <> "image/pjpeg" AND mimetype <> "image/gif" Then
      Page_Msg_Back "�̹����� ���ε� �Ҽ� �ֽ��ϴ�."
      Response.end
   End If

   imagepath = trim(uploadform("imagepath"))
   irid = trim(uploadform("id"))

   DirectoryPath = server.mappath("/") & Replace(imagepath,"/","\")
   strFileName = uploadform("update_image").FileName
   strFileWholePath = GetUniqueName(strFileName, DirectoryPath)

   uploadform("update_image").SaveAs strFileWholePath

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
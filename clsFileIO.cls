Option Compare Database

Private f_no  As Integer
Private f_path As String

Public Sub openFileForAppend(ByVal pFilePath As String)

    f_no = FreeFile
    f_path = pFilePath
    
    Open f_path For Append As #f_no

End Sub

Public Sub outputLine(ByVal pOutputLine As String)
    Print #f_no, pOutputLine

End Sub

Public Sub closeFile()

    Close #f_no
    
End Sub

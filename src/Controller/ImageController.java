package Controller;

import java.io.*;
import javax.servlet.http.Part;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.MultipartConfig;

@WebServlet(urlPatterns = {"/FileUploadHandler"})
@MultipartConfig
public class ImageController extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException {
        int sucess =0;
        try
        {
        String UploadFilePath = "C:\\Users\\Anjula\\Desktop\\F\\ImageCompress\\web\\WEB-INF\\Resources\\CompressedImg\\";
        Part filePart = request.getPart("customerFile");
        System.out.println(filePart.getName() );
        String fileName = getSubmittedFileName(filePart);

            for (Part part : request.getParts())
            {
            part.write(  UploadFilePath + fileName);
           }
           sucess =1;
            response.getWriter().print(sucess);
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

    }

    private static String getSubmittedFileName(Part part)
    {
        for (String cd : part.getHeader("content-disposition").split(";"))
        {
            if (cd.trim().startsWith("filename"))
            {
                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1);
            }
        }
        return null;
    }
}


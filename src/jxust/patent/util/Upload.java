package jxust.patent.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

public class Upload
{
	public static void doUpload(String pictureFileName, File picture)
	{
		File saved = new File(ServletActionContext.getServletContext().getRealPath("/upload"), pictureFileName);
		InputStream ins = null;
		OutputStream ous = null;
		try
		{
			saved.getParentFile().mkdirs();
			ins = new FileInputStream(picture);
			ous = new FileOutputStream(saved);

			byte[] b = new byte[1024];
			int len = 0;
			while ((len = ins.read(b)) != -1)
			{
				ous.write(b, 0, len);
			}
		} catch (Exception e)
		{
			e.printStackTrace();
		} finally
		{
			if (ous != null)
				try
				{
					ous.close();
				} catch (IOException e)
				{
					e.printStackTrace();
				}
			if (ins != null)
				try
				{
					ins.close();
				} catch (IOException e)
				{
					e.printStackTrace();
				}
		}
	}

	public static String getWebPath()//·µ»ØwebµØÖ·
	{
		HttpServletRequest request = ServletActionContext.getRequest();
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
		return basePath;
	}
	
    public static void copy(File src, File dst)  {

        try  {

           InputStream in = null ;

           OutputStream out = null ;

            try  {                

               in = new BufferedInputStream( new FileInputStream(src), 16 * 1024);

               out = new BufferedOutputStream( new FileOutputStream(dst), 16 * 1024);

                byte [] buffer = new byte [16 * 1024];

                while (in.read(buffer) > 0 )  {

                   out.write(buffer);

               } 

            } finally  {

                if ( null != in)  {

                   in.close();

               } 

                 if ( null != out)  {

                   out.close();

               } 

           } 

        } catch (Exception e)  {

           e.printStackTrace();

       } 

   } 
}

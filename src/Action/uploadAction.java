 package Action;
        import java.io.File;
        import java.io.FileInputStream;
        import java.io.FileOutputStream;
        import java.io.InputStream;
        import java.io.OutputStream;
        import com.opensymphony.xwork2.ActionSupport;

public class uploadAction {
    private File upload;
    private String uploadFileName;

    public String execute() throws Exception {
        if(upload!=null){
            InputStream is=new FileInputStream(getUpload());
            OutputStream os=new FileOutputStream("d:\\upload\\"+uploadFileName);
            byte buffer[]=new byte[1024];
            int count=0;
            while((count=is.read(buffer))>0){
                os.write(buffer,0,count);
            }
            os.close();
            is.close();
            return "success";
        }
        else {
            return "error";
        }
    }

    public File getUpload() {
        return upload;
    }
    public void setUpload(File upload) {
        this.upload=upload;
    }


    public String getUploadFileName() {
        return uploadFileName;
    }


    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName=uploadFileName;
    }
}


package com.mickey.controller;
import java.awt.image.BufferedImage;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

import javax.imageio.ImageIO;
import javax.mail.Message;
import javax.mail.MessagingException;

import com.documents4j.api.DocumentType; 
import com.documents4j.api.IConverter; 
import com.documents4j.job.LocalConverter;
import org.apache.commons.io.output.ByteArrayOutputStream;

import java.io.*; 
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future; 
import java.util.concurrent.TimeUnit;


import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.apache.pdfbox.multipdf.PDFMergerUtility;
import org.apache.pdfbox.multipdf.Splitter;
import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.pdmodel.PDPage;
import org.apache.pdfbox.pdmodel.PDPageContentStream;
import org.apache.pdfbox.pdmodel.encryption.AccessPermission;
import org.apache.pdfbox.pdmodel.encryption.StandardProtectionPolicy;
import org.apache.pdfbox.pdmodel.font.PDType1Font;
import org.apache.pdfbox.pdmodel.interactive.action.PDActionJavaScript;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.OutputStream;

import org.apache.poi.xwpf.converter.pdf.PdfConverter;
import org.apache.poi.xwpf.converter.pdf.PdfOptions;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.apache.pdfbox.text.PDFTextStripper;
import org.apache.poi.xwpf.usermodel.BreakType;
import org.apache.poi.xwpf.usermodel.ParagraphAlignment;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;
import org.apache.poi.xwpf.usermodel.XWPFRun;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.parser.PdfReaderContentParser;
import com.itextpdf.text.pdf.parser.SimpleTextExtractionStrategy;
import com.itextpdf.text.pdf.parser.TextExtractionStrategy;
import com.mickey.dao.HomeDao;
import com.mickey.model.MyUser;
import com.mickey.model.UserMultimedia;
import com.mickey.service.HomeService;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.ExceptionConverter;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.Rectangle;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfPageEventHelper;
import com.itextpdf.text.pdf.PdfTemplate;
import com.itextpdf.text.pdf.PdfWriter;


@Controller
public class MyClass {


	
	@Autowired		//Dependency injection
	HomeService homeService;
	

	@Autowired		//Dependency injection
	HomeDao homeDao;
	
	@RequestMapping(value="/")
	public String home() {
		System.out.println("controller called");
		return "multipart";
	}
	
	@RequestMapping(value="/index1")
	public String index1() {
		System.out.println("controller called");
		return "index1";
	}
		
	@RequestMapping(value="/kom")	
	public String home(HttpServletRequest req,MyUser user) throws SQLException {
		String s1=user.getName();	
		homeService.insertInfo(user);	
		System.out.println("kom controller called"+s1);
		return "index";	
	}
	
	@RequestMapping(value="/trial")	
	public String trial(HttpServletRequest req,MyUser user) throws SQLException {
		homeDao.trial(user);
		System.out.println("trial controller called");
		return "index";	
	}
	
	@RequestMapping(value="/kom1")	
	public String home1(HttpServletRequest req) throws SQLException  {
		String s=homeService.getInfo();
		req.setAttribute("abc",s);
		return "index";	
	}
	
	@RequestMapping(value="/temp")	
	public String temp(HttpServletRequest req,HttpServletRequest res,MyUser user) throws ServletException,IOException 
	{
		String file=req.getParameter("kom");
		String pass=req.getParameter("pass");
		System.out.println(file);
		System.out.println(pass);
		return null;			
	}
	
	@RequestMapping(value="/tom")	
	public String register(HttpServletRequest req,HttpServletRequest res,MyUser user) throws ServletException,IOException 
	{
		String s=homeService.doGet(req,res);
		return s;			
	}
		
	 @RequestMapping(value="/merge")
	 public String merge()
	 {
		return "back";
	 }
	 @RequestMapping(value="/tester",method=RequestMethod.POST)
	 public String test(HttpServletRequest req,UserMultimedia um)throws SQLException,IOException
	 {
		 String s=um.getName();
		 ArrayList<String> filePath=uploadFileOnServer(um);
		 System.out.println("file are uploaded");			
		 return null;	 
	 }

@RequestMapping(value="/mergepdf",method=RequestMethod.POST)
	public String mergepdf(HttpServletRequest req,UserMultimedia user)throws SQLException,IOException {
		ArrayList<String> filepath=uploadFileOnServer(user);
		merger(filepath,req);
		System.out.println("pdf merged successfully");
		return "download";		
	}
		public void merger(ArrayList<String> filepath, HttpServletRequest req) throws IOException {
		PDFMergerUtility pdf=new PDFMergerUtility();
		pdf.setDestinationFileName("D:/files/merge.pdf");
		for(String s:filepath)
		{
			File f=new File(s);
			pdf.addSource(f);
		}
		pdf.mergeDocuments(null);
		System.out.println("pdf merging");
		req.setAttribute("file","D:/files/merge.pdf" );		
        }
		
		private ArrayList<String> uploadFileOnServer(UserMultimedia user)  {
			String rootdirectory="D:/files";
			File directory=new File(rootdirectory);
			if(!directory.exists())
				directory.mkdirs();
			MultipartFile[] f=user.getUserfiles();
			System.out.println("multi part file");
			System.out.println(f);
			String filepath=null;
			ArrayList<String> list=new ArrayList<String>();
			for(MultipartFile filedata : f) {
			String filename=filedata.getOriginalFilename();
			System.out.println(filename);
			
			if(filename!=null && filename.length()>0)
			{
				try {
					filepath=directory.getCanonicalPath()+File.separator+filename;
					BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(filepath));
					bos.write(filedata.getBytes());
					bos.close();
					list.add(filepath);
				} 
				catch (Exception e) {
					
					e.printStackTrace();
				}
			}		
			}
			System.out.println("pdf uploaded on server");
			System.out.println(list);
				return list;
		}


@RequestMapping(value="mergedownload",method=RequestMethod.POST)
	public String download(HttpServletRequest req,HttpServletResponse res) throws IOException {
	String mimetype=null;
	String file=req.getParameter("filepath");
	File f=new File(file);
	mimetype=getMimeType(f.getCanonicalPath());
	res.setContentType(mimetype);
	res.setHeader("content-Disposition", "attachment;filename=\""+f.getName()+"\"");
	res.setContentLength((int)f.length());
	InputStream is=new FileInputStream(f);
	ServletOutputStream out=res.getOutputStream();
	
	IOUtils.copy(is, out);
	out.flush();
	out.close();
	is.close();
	return "index1";
}

	
	  @RequestMapping(value="/download") 
	  public String download1(HttpServletResponse res)throws IOException
	  {
		  String mimeType=null;
		  File f=new File("D:/files/merge/result.pdf"); 
		  mimeType=getMimeType(f.getCanonicalPath());
		  res.setContentType(mimeType);
		  res.setHeader("Content-Disposition","attachment;filename=\""+f.getName()+"\"");
		  res.setContentLength((int)f.length());
		  InputStream is=new FileInputStream(f);
		  ServletOutputStream out=res.getOutputStream();
		  IOUtils.copy(is, out); 
		  is.close(); 
		  out.flush();
		  out.close(); 
		  return "index";
	  }
	  
	  private String getMimeType(String canonicalPath)
	  { 
		  canonicalPath=canonicalPath.toLowerCase();
	  if(canonicalPath.endsWith(".jpg")||canonicalPath.endsWith(".jpeg"))
		  return "image/jpeg"; 
	  else 
		  return "application/pdf";
	  
	  }
	
	  
	  
	  @RequestMapping(value="/splitin")
		 public String split()
		 {
			return "split";
		 }
		
	  //pdf splitter
	  @RequestMapping(value="/splitter",produces ="application/zip")
	  public String splitter(HttpServletRequest req,HttpServletResponse response,UserMultimedia user) throws IOException
	  {
		  ArrayList<String> filepath=uploadFileOnServer(user);
		  File file=new File("D:/files/merge/joiningAnnexur(1).pdf");
		  PDDocument pd = PDDocument.load(file);
		  Splitter sp=new Splitter();
		  List<PDDocument> pd1 = sp.split(pd);
		  List<String> filepaths=new ArrayList<String>();
		  Iterator<PDDocument> it= pd1.listIterator();
		  int i=1;
		  while(it.hasNext())
		  {
			  String x="D:/files/merge/split"+i+".pdf";
			  PDDocument pd2 = it.next();
			  pd2.save(x);
			  i++;
			  filepaths.add(x);
		  }
		  pd.close();
		  zipFiles(filepaths,response);
		  System.out.println("splitter had done its work");
		  return "index1";
	  }
	  
	  
	  //testing
	  private String uploadFileOnServer1(UserMultimedia user)  {
			String rootdirectory="D:/files";
			File directory=new File(rootdirectory);
			if(!directory.exists())
				directory.mkdirs();
			MultipartFile userfile=user.getUserfile();
			String filepath=null;
			String filename=userfile.getOriginalFilename();
			if(filename!=null && filename.length()>0)
			{
				try {
					filepath=directory.getCanonicalPath()+File.separator+filename;
					BufferedOutputStream bos=new BufferedOutputStream(new FileOutputStream(filepath));
					bos.write(userfile.getBytes());
					bos.close();
				} 
				catch (Exception e) {
					
					e.printStackTrace();
				}
			}		
			System.out.println("pdf uploaded on server");
			
				return filepath;
		}
	  @RequestMapping(value="/splitter1",produces ="application/zip")
	  public String splitter1(HttpServletRequest req,HttpServletResponse response,UserMultimedia user) throws IOException
	  {
		  String filepath=uploadFileOnServer1(user);
		  File f=new File(filepath);
		  PDDocument pd = PDDocument.load(f);
		  Splitter sp=new Splitter();
		  List<PDDocument> pd1 = sp.split(pd);
		  List<String> filepaths=new ArrayList<String>();
		  Iterator<PDDocument> it= pd1.listIterator();
		  int i=1;
		  while(it.hasNext())
		  {
			  String x="D:/files/split/split"+i+".pdf";
			  PDDocument pd2 = it.next();
			  pd2.save(x);
			  i++;
			  filepaths.add(x);
		  }
		  System.out.println(filepaths);
		  pd.close();
		  zipFiles(filepaths,response);
		  System.out.println("splitter had done its work");
		  return "index1";
	  }
	  
	  private void zipFiles(List <String> filepaths,HttpServletResponse res) throws IOException
	  {
		  String zipFileName="D:/splitterzip.zip";
		  FileOutputStream fos=new FileOutputStream(zipFileName);
		  ZipOutputStream zos=new ZipOutputStream(fos);
		  for(String s: filepaths)
		  {
			  zos.putNextEntry(new ZipEntry(new File(s).getName()));
			  byte[] bytes=Files.readAllBytes(Paths.get(s));
			  zos.write(bytes);
			  zos.closeEntry();
		  }
		  zos.close();
		  File f=new File(zipFileName);
		  res.setContentType("application/zip");
		  res.setHeader("Content-Disposition","attachment;filename=\""+f.getName()+"\"");
		  res.setContentLength((int)f.length());
		  InputStream is=new FileInputStream(f);
		  ServletOutputStream out=res.getOutputStream();
		  IOUtils.copy(is, out); 
		  is.close(); 
		  out.flush();
		  out.close(); 		  
	  }
	  
	   
		@RequestMapping(value="/pdf",method=RequestMethod.POST) 
		public String pdf(HttpServletResponse res,HttpServletRequest req,UserMultimedia user)throws IOException
		{
			System.out.println("hjk");
			  String filepath=uploadFileOnServer1(user);
			 		try
					{
					//Create the word document
					XWPFDocument doc = new XWPFDocument();
					// Open the pdf file
					PDDocument pd=null;
				  	File file=new File(filepath);
				  	System.out.println("psswd ni chahiy");
					  try {
						  pd = PDDocument.load(file);
					      }
					  catch(org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException e)
					  {
						  req.setAttribute("filepath","D:/files/split1.pdf");
						  		return "requestpath";
					  	}
					  PDFTextStripper pdf=new PDFTextStripper();
					  String s=pdf.getText(pd);
					  req.setAttribute("data",s); 
					    // Create a new paragraph in the word document, adding the extracted text
						System.out.println("create new paragraph");
						doc.getNumbering();
						XWPFParagraph p = doc.createParagraph();
						p.setAlignment(ParagraphAlignment.CENTER);
						System.out.println("doc create paragraph");
						XWPFRun run = p.createRun();
						run.setTextPosition(100);
						System.out.println("run bro");
						run.setText(s);
						System.out.println("write word doc");
						
						// Write the word document
					    FileOutputStream out = new FileOutputStream("D:/files/myfile.docx");
					    req.setAttribute("file","D:/files/myfile.docx");
					    System.out.println("doc write");
						doc.write(out);
					    System.out.println(s);
						
					    // Close all open files
					    out.close();
						}
					catch(Exception e)
					{
						 e.printStackTrace();
					}
					return "download";		
		}

		@RequestMapping(value="/extractData")
		  public String extractData(HttpServletRequest req,HttpServletResponse res) throws IOException
		  {
		  	  String password=req.getParameter("password");
		  	  System.out.println("he");
		  	  if(password==null)
		  	  {
		  	  PDDocument pd=null;
		  	  File file=new File("D:/files/split1.pdf");
		  	  System.out.println("psswd ni chahiy");
			  try {
				  pd = PDDocument.load(file);
			      }
			  catch(org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException e)
			  {
				  req.setAttribute("filepath","D:/files/split1.pdf");
				  		return "requestpath";
			  	}
			  PDFTextStripper pdf=new PDFTextStripper();
			  String s=pdf.getText(pd);
			  req.setAttribute("data",s);
			  System.out.println(s);
			  return "extractedData";
		  }
	  else
	  {
		  File file=new File(req.getParameter("filepath"));
		  PDDocument pd = null;
		  try {
			  pd=PDDocument.load(file,password);
			  }
		  catch(org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException e)
		  {
			  req.setAttribute("filepath","D:/files/split1.pdf");
			  req.setAttribute("error", "passwd is not correct");
			  		return "requestpath";
		  	}
		  PDFTextStripper pdf=new PDFTextStripper();
		  String s=pdf.getText(pd);
		  req.setAttribute("data",s);
		  System.out.println(s);
		  return "extractedData";
		}
		  	  }
	  

		
		@RequestMapping(value="/word_pdf") 
		public String page_no() throws IOException, DocumentException, InterruptedException, ExecutionException
		{
			ByteArrayOutputStream bo = new ByteArrayOutputStream();

            InputStream in = new BufferedInputStream(new FileInputStream("D:/files/myfile.docx"));
            IConverter converter = LocalConverter.builder()
                    .baseFolder(new File("D:/files"))
                    .workerPool(20, 25, 2, TimeUnit.SECONDS)
                    .processTimeout(5, TimeUnit.SECONDS)
                    .build();

            Future<Boolean> conversion = converter
                    .convert(in).as(DocumentType.MS_WORD)
                    .to(bo).as(DocumentType.PDF)
                    .prioritizeWith(1000) // optional
                    .schedule();
            conversion.get();
            try (OutputStream outputStream = new FileOutputStream("D:/files/output.pdf")) {
                bo.writeTo(outputStream);
            } catch (IOException e) {
                e.printStackTrace();
            }
            in.close();
            bo.close();
        	return null;
		}
		

		
	  @RequestMapping(value="/removePage")
	  public String removepage(UserMultimedia user,HttpServletRequest req) throws IOException
	  {
		  String filepath=uploadFileOnServer1(user);
		  File file=new File(filepath);
		  PDPage n=user.getPage();
		  PDDocument pd = PDDocument.load(file);
		  int totalpage = pd.getNumberOfPages();
		  System.out.println(totalpage);
		  pd.removePage(n);
		  pd.save("D:/files/editedNewFile.pdf");
          req.setAttribute("file","D:/files/editedNewPdf.pdf");
    	  pd.close();
		  return "download";
	  }
	  

	  @RequestMapping(value="/javascript")
	  public String javascript(HttpServletRequest req,HttpServletResponse res,UserMultimedia user) throws IOException
	  {
		  //file path
		  File f=new File("D:/files/split.pdf");
		 //loading file
		  PDDocument pd= PDDocument.load(f);
		  //Adding javascript
		  String javaScript = "app.alert( {cMsg: 'this is an example', nIcon: 3,"
				   + " nType: 0,cTitle: 'PDFBox Javascript example' } );";       
				PDActionJavaScript PDAjavascript = new PDActionJavaScript(javaScript);
				pd.getDocumentCatalog().setOpenAction(PDAjavascript);
				pd.save("D:/files/split_new.pdf");
				pd.close();
				return "index1";
		  
	  }
	  
	  @RequestMapping(value="/write")
	  public String edit(HttpServletRequest req,HttpServletResponse res,UserMultimedia user) throws IOException
	  {
		  //file path
		  File f=new File("D:/files/split.pdf");
		 //loading file
		 
		  PDDocument pd= PDDocument.load(f);
		  
		  //Retrieving the pages of the document 
	      PDPage page = pd.getPage(1);
	      PDPageContentStream contentStream = new PDPageContentStream(pd, page);
	      
	      //Begin the Content stream 
	      contentStream.beginText(); 
	       
	      //Setting the font to the Content stream  
	      contentStream.setFont(PDType1Font.TIMES_ROMAN, 12);

	      //Setting the position for the line 
	      contentStream.newLineAtOffset(25, 500);

	      //Adding text in the form of string 
	      //contentStream.showText(text);      

	      //Ending the content stream
	      contentStream.endText();

	      System.out.println("Content added");

	      //Closing the content stream
	      contentStream.close();

	      //Saving the document
	      pd.save(new File("D:/files/"));

	      //Closing the document
	      pd.close();

		return null;
	  
	  }
	  
	  
	  @RequestMapping(value="/watermark")
		  public String watermark(HttpServletRequest req,HttpServletResponse res,UserMultimedia user) throws IOException
		  {
		  try {
			  
			  	String filepath=uploadFileOnServer1(user);
			  	PdfReader reader = new PdfReader(filepath);
	            int n = reader.getNumberOfPages();
	            PdfStamper stamp = new PdfStamper(reader, new FileOutputStream(
	                    "D:/files/PDFWithWatermarkImage.pdf"));
	            int i = 0;
	            req.setAttribute("file", "D:/files/PDFWithWatermarkImage.pdf");
	            PdfContentByte under;
	            Image img = Image.getInstance("D:/files/download.png");
	            img.setAbsolutePosition(200f, 300f);
	            while (i < n) {
	                i++;
	                under = stamp.getUnderContent(i);
	                under.addImage(img);
	            }
	            stamp.close();
	        } catch (Exception de) {
	            de.printStackTrace();
	        }
		return "download";
		  }
	  
	  
	  
	  
	@RequestMapping(value="/pdftoImage",method=RequestMethod.POST)
	  public String pdftoImage(UserMultimedia user,HttpServletRequest req,HttpServletResponse res) throws IOException
	  {
		  ArrayList<String> filepath1=new ArrayList<String>();
		  System.out.println("not loaded on");
		  String filepath=uploadFileOnServer1(user);
		  System.out.println("loaded on");
		  File file=new File(filepath);
		  PDDocument pd = PDDocument.load(file);
		  PDFRenderer r=new PDFRenderer(pd);
		  int totalpage = pd.getNumberOfPages();
		  int i=0;
		  while(i < totalpage) {
		  BufferedImage img = r.renderImage(i);
		  ImageIO.write(img,"JPEG",new File("D:/files/img/img"+i+".jpg"));
		  filepath1.add("D:/files/img/img"+i+".jpg");
		  i++;
		  }
		  System.out.println(filepath1);
		  System.out.println("pdf to image");
		  zipFiles(filepath1,res);
		  System.out.println("zip done");
			 
		  System.out.println(totalpage);
		  pd.close();
		  return "download";
	  }
	  
	  @RequestMapping(value="/JPEGtoPdf",method=RequestMethod.POST)
	  public String JPEGtoPdf(UserMultimedia user,HttpServletRequest req) throws IOException
	  {
		  String filepath=uploadFileOnServer1(user);
		  try {
	            Document convertJpgToPdf = new Document();
	            PdfWriter.getInstance(convertJpgToPdf, new FileOutputStream("C:/Users/HP/Desktop/Pay_Jaldii/imgtopdf.pdf"));
	            convertJpgToPdf.open();
	            Image convertJpg = Image.getInstance(filepath);
	            convertJpgToPdf.add(convertJpg);
	            convertJpgToPdf.close();
	            req.setAttribute("file", "C:/Users/HP/Desktop/Pay_Jaldii/imgtopdf.pdf");
	            System.out.println("Successfully Converted JPG to PDF in iText");
	        } 
		  catch (Exception i1) {
	            i1.printStackTrace();
	        }
		return "download";
	  }
	  
	  @RequestMapping(value="/compress",method=RequestMethod.POST)
	  public String compress_pdf(UserMultimedia user,HttpServletRequest req) throws IOException, DocumentException
	  {
		  System.out.println("compress");	
		  String filepath=uploadFileOnServer1(user);
		  	PdfReader reader = new PdfReader(filepath);
		    PdfStamper stamper = new PdfStamper(reader, new FileOutputStream("D:/files/my.pdf"),PdfWriter.VERSION_1_5);
		    req.setAttribute("file","D:/files/my.pdf" );
		    stamper.setFullCompression();
		    stamper.close();
		    showFileSize("D:/files/my.pdf");
		    return "download";
		
	  }
	  
	  @RequestMapping(value="/decompress_pdf")
	  public String decompress_pdf(UserMultimedia user,HttpServletRequest req) throws IOException, DocumentException
	  {
		      String filepath=uploadFileOnServer1(user);
		  	  PdfReader reader = new PdfReader(filepath);
			  PdfStamper stamper = new PdfStamper(reader, new FileOutputStream("D:/files/myDecompressed.pdf"), '1');
			  Document.compress = false;
			  req.setAttribute("file", "D:/files/myDecompressed.pdf");
			  int total = reader.getNumberOfPages() + 1;
			  for (int i = 1; i < total; i++) 
			  {
				  reader.setPageContent(i,reader.getPageContent(i));
			  } 
			  stamper.close();
			  return null;
		}
		
	  private void showFileSize(String filename) throws IOException {
		// TODO Auto-generated method stub
		  
		  	PdfReader reader = new PdfReader(filename);
		    System.out.print("Size ");
		    System.out.print(filename);
		    System.out.print(": ");
		    System.out.println(reader.getFileLength());
		  
	}

	@RequestMapping(value="/protect1")
	  public String protect1(UserMultimedia user,HttpServletRequest req) throws IOException
	  {
		  String filepath=uploadFileOnServer1(user);
		  System.out.print(filepath);
		  String pass=user.getPassword();
		  File file=new File(filepath);
		  PDDocument pd =null;
		  try {
			  	pd = PDDocument.load(file);
		  		}
		  catch(org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException e)
		  {
			  req.setAttribute("filepath","");
			  return "ProtectedAlready";	
		  }
		  System.out.println(pass);
		  AccessPermission accessPermission = new AccessPermission();
		  AccessPermission ap=accessPermission;
		  StandardProtectionPolicy policy= new StandardProtectionPolicy("code@122#",pass,ap);
		  policy.setEncryptionKeyLength(256);
		  policy.setPermissions(ap);
		  pd.protect(policy);
		  pd.save("D:/files/protect/protect.pdf");
		  req.setAttribute("file","D:/files/protect/protect.pdf");
			
		  System.out.println("proection done");
		  pd.close();	 
		  return "download";  
	  }
	  

	  
	  @RequestMapping(value="/protect")
	  public String protect_original(UserMultimedia user,HttpServletRequest req) throws IOException
	  
	  {
		  File file=new File("D:/files/res.pdf");
		  PDDocument pd = PDDocument.load(file);
		  AccessPermission accessPermission = new AccessPermission();
		  AccessPermission ap=accessPermission;
		  StandardProtectionPolicy policy= new StandardProtectionPolicy("code@122#","kom@123"	,ap);
		  policy.setEncryptionKeyLength(256);
		  policy.setPermissions(ap);
		  pd.protect(policy);
		  pd.save("D:/files/protect/protect.pdf");
		  System.out.println("proection done");
		  pd.close();	 
		  return "index1";  
	  }
	
	  @RequestMapping(value="/unlock")
	  public String unlock(UserMultimedia user,HttpServletRequest req) throws IOException
	  {

		  String filepath=uploadFileOnServer1(user);			
		  File file=new File(filepath);
		  PDDocument pd= PDDocument.load(file,"code@122#");
		  pd.setAllSecurityToBeRemoved(true);
		  pd.save("D:/files/res.pdf");
		  req.setAttribute("file","D:/files/res.pdf" );	
		  System.out.println("pdf unlocked");
		  pd.close();
		  return "download";
	  }

	  

	  @RequestMapping(value="/unlock_original")
	  public String unlock_original(UserMultimedia user) throws IOException
	  {

		  String filepath=uploadFileOnServer1(user);			
		  File file=new File(filepath);
		  PDDocument pd= PDDocument.load(file,"code@122#");
		  pd.setAllSecurityToBeRemoved(true);
		  pd.save("D:/files/res.pdf");
		  pd.close();
		  return "index1";
	  }

	  @RequestMapping(value= "/sendemail")
		public String email() throws AddressException, MessagingException {
			
			Properties p= new Properties();
			p.put("mail.smtp.host", "smtp.gmail.com");
			p.put("mail.smtp.auth", "true");
			p.put("mail.smtp.starttls.enable", "true");
			p.put("mail.smtp.EnableSSL.enable", "true");
			p.put("mail.smtp.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");
			p.put("mail.smtp.socketFactory.fallback", "false");
			p.put("mail.smtp.port", "465");
			p.put("mail.smtp.socketFactory.port", "465");
			System.out.println("jksjfll");
			Session session=Session.getInstance(p, new SimpleAuthenticator("ishitatiwari625@gmail.com","Vshanno1997!1610"));
			Message msg=new MimeMessage(session);
			msg.setFrom(new InternetAddress("ishitatiwari625@gmail.com"));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress("ishitatiwari72@gmail.com"));
			msg.setSubject("email sending application");
			msg.setContent("fvdg", "text/html");	
			Transport.send(msg);
			return  "index1";
		}
	  
	  @RequestMapping(value="/x",method=RequestMethod.POST)
	  public String forgetPassword(MyUser user,HttpServletRequest req) throws IOException, DocumentException, AddressException, MessagingException
	  {
		  String email=user.getEmailId();
		  String otp=getOtp();
		  sendMail mail=new sendMail();
		  mail.sendEmail(email,"ishitatiwari72@gmail.com",otp);
		  HttpSession s=req.getSession();
		  s.setAttribute("email", email);
		  s.setAttribute("otp", otp);
		  return "1";
	  }
	  private String getOtp() {
		// TODO Auto-generated method stub
		  	int random   =(int) (Math.random()*9000)+1000; 
	        String otp   =String.valueOf(random); 
	        return otp;  
	}
	 
	  @RequestMapping(value="/verificationOtp" ,method=RequestMethod.POST)
	  public String Verification(MyUser user,HttpServletRequest req) throws IOException, DocumentException
	  {
		  HttpSession s=req.getSession(false);
		  if(s!=null)
		  {
			  String email=(String) s.getAttribute("email");
			  String otp1=(String) s.getAttribute("otp");
			  String otp=req.getParameter("otp");
			  if(otp.equals(otp1))
			  {
				return "resetPasswd";  
			  }
			  else {
				  req.setAttribute("mssg", "Sorry Your OTP is not correct! Please enter correct OTP");
				  return "1";
			  }
		  }
		  else
		  {
			  return "index1";
		  }
	  }
	  
	  @RequestMapping(value="/sign_in")
	  public String sign_in(MyUser user) throws SQLException 
	  {
		String name=  user.getName_sign();
		String password= user.getPassword_sign();
		String email=user.getEmail_sign();
		homeDao.account_sign(name,email,password);
		System.out.println("signin_done!");
		return "index1";
	  
	  }

	  @RequestMapping(value="/login_in")
	  public String log_in(MyUser user) throws SQLException 
	  {
		String password1= user.getPassword();
		String emailid1=user.getEmailId();
		homeDao.account_login(emailid1, password1);
		System.out.println("log in done!");
		return "index1";
	  }
	  
	  @RequestMapping(value="/newPasswd",method=RequestMethod.POST)
	  public String newPasswd(HomeDao m,HttpServletRequest req,MyUser user) throws IOException, SQLException
	  {
		  HttpSession s=req.getSession(false);
		  if(s!=null)
		  {
			  String email=(String) s.getAttribute("email");
			  String password =user.getPassword();
			  String pass=(String)req.getParameter("password");
			  String newPasswd=req.getParameter("password");
			  System.out.println(pass);
			  System.out.println(newPasswd);
				
			  m.vvv( email, password);
//			  m.renewPasswd1(email, pass);
			
		  }  
		  System.out.println("new passwd set up");
		return "index1";
	  }
	  

	@RequestMapping(value="/login")
		  public String login(MyUser user,HttpServletRequest req,HttpSession session) throws IOException, DocumentException
		  {
			System.out.println(session);
			String email="i@gmail.com";
			String passwd="kom";
			if(email.equals("i@gmail.com") && passwd.contentEquals("kom"));
			{
				session.setAttribute("id","10" );
			}
			return null;
		  }
			
	@RequestMapping(value="/modifyData")
	  public String modify() throws IOException, DocumentException
	  {
		  	PdfReader pdfReader = new PdfReader("D:/files/merge/free.pdf");
		    //Modify file using PdfReader
		    PdfStamper pdfStamper = new PdfStamper(pdfReader, new FileOutputStream("D:/files/Hel.pdf"));
		    Image image = Image.getInstance("D:/files/back.jpg");
		    image.scaleAbsolute(100, 50);
		    image.setAbsolutePosition(100f, 700f);
		    for(int i=1; i<= pdfReader.getNumberOfPages(); i++)
		    {
		        com.itextpdf.text.pdf.PdfContentByte content = pdfStamper.getUnderContent(i);
		        System.out.print("hellpo");
		        content.addImage(image);
		    }
		    pdfStamper.close();
		  return "index1";
	  }
	
	  }
		
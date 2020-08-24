package com.mickey.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;

import org.apache.pdfbox.pdmodel.PDDocument;
import org.apache.pdfbox.rendering.PDFRenderer;
import org.springframework.web.bind.annotation.RequestMapping;
class Test{
@RequestMapping(value="/pdftoImage")
	  public String pdftoImage() throws IOException
	  {
		  File file=new File("D:/ishita_journal.pdf");
		  PDDocument pd = PDDocument.load(file);
		  PDFRenderer r=new PDFRenderer(pd);
		  int totalpage = pd.getNumberOfPages();
		  int i=0;
		  while(i < totalpage) {
		  BufferedImage img = r.renderImage(i);
		  ImageIO.write(img,"JPEG",new File("D:/files/merge/img"+i+".jpg"));
		  i++;
		  }
		  System.out.println(totalpage);
		  pd.close();
		  return "index1";
	  }
}
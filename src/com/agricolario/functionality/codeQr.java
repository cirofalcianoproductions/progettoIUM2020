package com.agricolario.functionality;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.file.FileSystems;
import java.nio.file.Path;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;

public class codeQr {

	public codeQr() {
		// TODO Auto-generated constructor stub
	}
	private static final String QR_CODE_IMAGE_PATH = "./MyQRCode.png";

	 public  void generateQRCodeImage(String text, int width, int height,String context)
	            throws WriterException, IOException {
	     
		   QRCodeWriter qrCodeWriter = new QRCodeWriter();
	        BitMatrix bitMatrix = qrCodeWriter.encode(text, BarcodeFormat.QR_CODE, width, height);

		    	   
	 }
}

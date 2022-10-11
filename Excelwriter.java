package excelwrite; 
import jxl.*;
import jxl.write.*;
import jxl.write.Number;
import java.io.*;
import java.util.Locale;

public class Excelwriter
{
	public static void main(String[]args)throws IOException, WriteException
	{
		int r=0, c=0;
		String header[]= {"Student Name","Math","English","Science","Total"};
		String sname[]= {"kido1","kido2","kido3","kido4","kido5","kido6","kido7","kido8","kido9","kido10"};
		int marks[]= {50,60,90,75,35,80,77,56,100,45};
		File file= new File("student1.xls");
		WorkbookSettings wbSettings= new WorkbookSettings();
		wbSettings.setLocale(new Locale("en","EN"));
		WritableWorkbook workbook= Workbook.createWorkbook(file,wbSettings);
		workbook.createSheet("Report",0);
WritableSheet excelSheet = workbook.getSheet(0); 
//creating header row
for(r=0;r<1;r++) { 
for(c=0;c<header.length;c++) { 
Label l=new Label(c,r,header[c]); 
excelSheet.addCell(l); 
} 
} 
//filling name in column1
for(r=1;r<=sname.length;r++) { 
for(c=0;c<1;c++) { 
Label l=new Label(c,r,sname[r-1]); 
excelSheet.addCell(l); 
} 
} 
//filling name in column2,3,4
for(r=1;r<=sname.length;r++) { 
for(c=1;c<4;c++) { 
Number num = new Number(c, r, marks[r-1]); 
excelSheet.addCell(num); 
} 
} 
//filling name in total
for(r=1;r<=sname.length;r++) { 
for(c=4;c<5;c++) { 
int total=marks[r-1]+marks[r-1]+marks[r-1]; 
Number num = new Number(c, r, total); 
excelSheet.addCell(num); 
} 
} 
workbook.write(); 
workbook.close(); 
System.out.println("Excel File Created!!!!!"); 
} 
}
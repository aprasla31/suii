import java.net.*;  
import java.io.*; 
public class Crawler{ 
public static void main(String[] args) throws Exception{  String urls[] = new String[1000]; 
String url = "https://commons.wikimedia.org/wiki/Main_Page"; int i=0,j=0,tmp=0,total=0, MAX = 5;  
int start=0, end=0; 
String webpage = Web.getWeb(url);  
end = webpage.indexOf("<body");  
for(i=total;i<MAX; i++, total++){ 
start = webpage.indexOf("http://", end);  
if(start == -1){ 
start = 0; 
end = 0;  
try{ 
webpage = Web.getWeb(urls[j++]); 
}catch(Exception e){ 
System.out.println(urls[j-1]);System.out.println("Exception caught \n"+e); } 
end = webpage.indexOf("<body"); 
if(end == -1){  
end = start = 0;  
continue; 
} 
} 
end = webpage.indexOf("\"", start);  
tmp = webpage.indexOf("'", start);  
if(tmp < end && tmp != -1){ 
end = tmp; 
} 
url = webpage.substring(start, end); 
urls[i] = url;  
System.out.println(urls[i]); 
} 
System.out.println("Total URLS Fetched are " + total); 
} 
} 
class Web{ 
public static String getWeb(String address)throws Exception{  String webpage = ""; 
String inputLine = ""; 
URL url = new URL(address); 
BufferedReader in = new BufferedReader(  
new InputStreamReader(url.openStream()));  
while ((inputLine = in.readLine()) != null)  
webpage += inputLine; 
in.close();  
return webpage; 
} 
} 


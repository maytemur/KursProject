package com.dt;

import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.*;
public class tagtest extends BodyTagSupport{
    private String mesaj="Merhabalar Tag Kutuphanesi";
    public int doEndTag(){
        try{
            JspWriter out=pageContext.getOut();
            out.print("<h1>"+mesaj+"</h1>");
        }catch(Exception e){
            e.printStackTrace();
            
            }
        return EVAL_PAGE;
                }
}


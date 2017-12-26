package test.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

@WebFilter("/*")
public class EncodingFilter implements Filter{
   //멤버필드로 선언
   String encoding;

   @Override
   public void destroy() {
   
      
   }

   @Override
   public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
         throws IOException, ServletException {
      //인코딩 설정이 없으면
      if(req.getCharacterEncoding()==null) {
         //인코딩 설정
         req.setCharacterEncoding(encoding);
      }
      //다음 작업 수행하기
      chain.doFilter(req, res);
   }
   
   //필터가 최초 동작할 때 호출되는 메소드
   @Override
   public void init(FilterConfig config) throws ServletException {
      //메소드에 전달되는 config 객체에 초기화 정보가 전달된다.
      
      //web.xml에 정의된 이코딩 정보를 읽어온다. (utf-8)
      encoding=config.getInitParameter("encoding");
   }

}
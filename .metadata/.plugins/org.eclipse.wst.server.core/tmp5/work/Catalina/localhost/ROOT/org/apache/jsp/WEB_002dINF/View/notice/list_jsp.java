/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.14
 * Generated at: 2022-02-10 23:48:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.View.notice;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class list_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/WEB-INF/View/notice/../../module/header.jsp", Long.valueOf(1644536833101L));
    _jspx_dependants.put("/WEB-INF/View/notice/../../module/link.jsp", Long.valueOf(1644536833192L));
    _jspx_dependants.put("/WEB-INF/View/notice/../../module/meta_header.jsp", Long.valueOf(1644536833082L));
    _jspx_dependants.put("/WEB-INF/View/notice/../../module/nav.jsp", Long.valueOf(1644536833225L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<!-- 링크경로(Head포함) -->\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Document</title>\r\n");
      out.write("    <link href=\"resources/css/common.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
      out.write("    \r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script  src=\"http://code.jquery.com/jquery-latest.min.js\"></script>\r\n");
      out.write("</head>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container-fluid\">\r\n");
      out.write("<!-- meta_Header -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("       <div id='meta-header' class='row'>\r\n");
      out.write("            <div class='col'></div>\r\n");
      out.write("            <div class='col'></div>\r\n");
      out.write("            <div class='col'></div>\r\n");
      out.write("        </div>");
      out.write("\r\n");
      out.write("<!-- header -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("     <div id='header' class='row'>\r\n");
      out.write("            <div id=header-left class='col-1'> \r\n");
      out.write("                <!-- 오프캔버스(Left 적용) -->\r\n");
      out.write("                <a type=\"button\" data-bs-toggle=\"offcanvas\" data-bs-target=\"#offcanvasleft\" aria-controls=\"offcanvasRight\">Menu</a>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"offcanvas offcanvas-start\" tabindex=\"-1\" id=\"offcanvasleft\" aria-labelledby=\"offcanvasRightLabel\">\r\n");
      out.write("                  <div class=\"offcanvas-header\">\r\n");
      out.write("                    <h5 id=\"offcanvasRightLabel\">Menu</h5>\r\n");
      out.write("                    <button type=\"button\" class=\"btn-close text-reset\" data-bs-dismiss=\"offcanvas\" aria-label=\"Close\"></button>\r\n");
      out.write("                  </div>\r\n");
      out.write("                  <div class=\"offcanvas-body\">\r\n");
      out.write("                    ...\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div id=header-center class='col-9'></div>\r\n");
      out.write("            \r\n");
      out.write("            <div id=header-right  class='col-2'>\r\n");
      out.write("            	<ul style=\"list-style:none;padding:0px;text-align:right;\">\r\n");
      out.write("            		<li style=\"display:inline-block;\"><a href=\"/LogoutProc.do\">로그아웃</a></li>\r\n");
      out.write("            		<li style=\"display:inline-block;\"><a href=\"#\">고객센터</a></li>\r\n");
      out.write("            	</ul>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write(" </div>");
      out.write("\r\n");
      out.write("<!-- nav -->\r\n");
      out.write("\r\n");
      out.write("       <div id=nav>\r\n");
      out.write("\r\n");
      out.write("        <!--네비게이션 바 시작 -->\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("          <div class=\"container-fluid\">\r\n");
      out.write("            <a class=\"navbar-brand me-5\" href=\"/Home.do\">HOME</a>\r\n");
      out.write("\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("              <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("              <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link active  me-5\" aria-current=\"page\" href=\"#\">회사소개</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link active  me-5\" aria-current=\"page\" href=\"/Notice/list.do\">공지사항</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link  me-5\" href=\"/Board/list.do\">자유게시판</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                  <a class=\"nav-link dropdown-toggle  me-5\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                    나의 정보\r\n");
      out.write("                  </a>\r\n");
      out.write("                  <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"/MemberSearch.do\">나의 정보 조회</a></li>\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">나의 정보 수정</a></li>\r\n");
      out.write("                    <li><hr class=\"dropdown-divider\"></li>\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">회원 탈퇴</a></li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("              </ul>\r\n");
      out.write("              \r\n");
      out.write("              <form class=\"d-flex\">\r\n");
      out.write("                <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\r\n");
      out.write("                <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\r\n");
      out.write("              </form>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("          </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- 네비게이션 바 끝 -->\r\n");
      out.write("        </div>");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<div class=\"page-contents\">\r\n");
      out.write("<h2>공지사항</h2>\r\n");
      out.write("\r\n");
      out.write("<!-- ROLE_ADMIN만 허용되는 URL -->\r\n");
      out.write("<a href=\"/Notice/post.do\">글쓰기</a>\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

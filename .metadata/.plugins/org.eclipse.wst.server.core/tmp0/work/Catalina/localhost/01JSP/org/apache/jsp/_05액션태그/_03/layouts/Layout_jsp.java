/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.0.14
 * Generated at: 2022-01-26 00:30:17 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp._05액션태그._03.layouts;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class Layout_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(6);
    _jspx_dependants.put("/05액션태그/03/layouts/../module/meta_header.jsp", Long.valueOf(1643156943449L));
    _jspx_dependants.put("/05액션태그/03/layouts/../module/nav_tab.jsp", Long.valueOf(1643156943588L));
    _jspx_dependants.put("/05액션태그/03/layouts/../module/header.jsp", Long.valueOf(1643156943608L));
    _jspx_dependants.put("/05액션태그/03/layouts/../module/items.jsp", Long.valueOf(1643156943681L));
    _jspx_dependants.put("/05액션태그/03/layouts/../module/link.jsp", Long.valueOf(1643156943501L));
    _jspx_dependants.put("/05액션태그/03/layouts/../module/nav.jsp", Long.valueOf(1643156943605L));
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
      out.write("\r\n");
      out.write("<!-- 링크경로(Head포함) -->\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Document</title>\r\n");
      out.write("    <link href=\"css/common.css\" type=\"text/css\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC\" crossorigin=\"anonymous\">\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("    <script  src=\"http://code.jquery.com/jquery-latest.min.js\"></script>\r\n");
      out.write("</head>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"container-fluid\">\r\n");
      out.write("\r\n");
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
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div id=header-center class='col-10'></div>\r\n");
      out.write("            <div id=header-right  class='col-1'>\r\n");
      out.write("                    <!-- 오프캔버스(right) 적용) -->\r\n");
      out.write("                    <a  type=\"button\" data-bs-toggle=\"offcanvas\" data-bs-target=\"#offcanvasRight\" aria-controls=\"offcanvasRight\">Login</a>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"offcanvas offcanvas-end\" tabindex=\"-1\" id=\"offcanvasRight\" aria-labelledby=\"offcanvasRightLabel\">\r\n");
      out.write("                      <div class=\"offcanvas-header\">\r\n");
      out.write("                        \r\n");
      out.write("                        <svg xmlns=\"http://www.w3.org/2000/svg\" style='margin:0px auto;' width=\"96\" height=\"96\" fill=\"currentColor\" class=\"bi bi-person-circle\" viewBox=\"0 0 16 16\">\r\n");
      out.write("                            <path d=\"M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z\"/>\r\n");
      out.write("                            <path fill-rule=\"evenodd\" d=\"M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z\"/>\r\n");
      out.write("                        </svg>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                        <button type=\"button\" class=\"btn-close text-reset\" data-bs-dismiss=\"offcanvas\" aria-label=\"Close\"></button>\r\n");
      out.write("                      </div>\r\n");
      out.write("                      <div class=\"offcanvas-body\">\r\n");
      out.write("                            \r\n");
      out.write("                            <form>\r\n");
      out.write("                                <div>\r\n");
      out.write("                                <input class='form-control mb-3' placeholder=\"example@example.com\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div>\r\n");
      out.write("                                <input type=\"password\" class='form-control mb-3'  placeholder=\"Insert Password\">\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div>\r\n");
      out.write("                                <input type=\"submit\" value=\"Login\" class='btn btn-primary form-control'>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </form>\r\n");
      out.write("                       \r\n");
      out.write("                      </div>\r\n");
      out.write("\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div> \r\n");
      out.write("        </div>");
      out.write("\r\n");
      out.write("<!-- nav -->\r\n");
      out.write("\r\n");
      out.write("       <div id=nav>\r\n");
      out.write("\r\n");
      out.write("        <!--네비게이션 바 시작 -->\r\n");
      out.write("        <nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("          <div class=\"container-fluid\">\r\n");
      out.write("            <a class=\"navbar-brand me-5\" href=\"#\">Navbar</a>\r\n");
      out.write("\r\n");
      out.write("            <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("              <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("            </button>\r\n");
      out.write("            \r\n");
      out.write("            <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("              <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link active  me-5\" aria-current=\"page\" href=\"#\">Home</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link  me-5\" href=\"#\">Link</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                  <a class=\"nav-link dropdown-toggle  me-5\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                    Dropdown\r\n");
      out.write("                  </a>\r\n");
      out.write("                  <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n");
      out.write("                    <li><hr class=\"dropdown-divider\"></li>\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                  <a class=\"nav-link dropdown-toggle  me-5\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                    Dropdown\r\n");
      out.write("                  </a>\r\n");
      out.write("                  <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n");
      out.write("                    <li><hr class=\"dropdown-divider\"></li>\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item dropdown\">\r\n");
      out.write("                  <a class=\"nav-link dropdown-toggle  me-5\" href=\"#\" id=\"navbarDropdown\" role=\"button\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\">\r\n");
      out.write("                    Dropdown\r\n");
      out.write("                  </a>\r\n");
      out.write("                  <ul class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Action</a></li>\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Another action</a></li>\r\n");
      out.write("                    <li><hr class=\"dropdown-divider\"></li>\r\n");
      out.write("                    <li><a class=\"dropdown-item\" href=\"#\">Something else here</a></li>\r\n");
      out.write("                  </ul>\r\n");
      out.write("                </li>\r\n");
      out.write("\r\n");
      out.write("              </ul>\r\n");
      out.write("              <form class=\"d-flex\">\r\n");
      out.write("                <input class=\"form-control me-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\">\r\n");
      out.write("                <button class=\"btn btn-outline-success\" type=\"submit\">Search</button>\r\n");
      out.write("              </form>\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </nav>\r\n");
      out.write("        <!-- 네비게이션 바 끝 -->\r\n");
      out.write("        </div>");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"page-content\">\r\n");
      out.write("\r\n");
      out.write("<!-- banner -->\r\n");

	String img1=request.getParameter("b1");
	String img2=request.getParameter("b2");
	String img3=request.getParameter("b3");

      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "../module/banner.jsp" + "?" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("banner1", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(img1 ), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("banner2", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(img2 ), request.getCharacterEncoding()) + "&" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode("banner3", request.getCharacterEncoding())+ "=" + org.apache.jasper.runtime.JspRuntimeLibrary.URLEncode(String.valueOf(img3 ), request.getCharacterEncoding()), out, false);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- ITEMS -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("        <!-- 카드 시작 -->\r\n");
      out.write("          <div id='page-items' class=mt-3>\r\n");
      out.write("            <div class=\"row  g-4\">\r\n");
      out.write("              <div class=\"col\">\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                  <img src=\"img/ngookbi_thum004.jpg\" class=\"card-img-top\" alt=\"...\">\r\n");
      out.write("                  <div class=\"card-body\">\r\n");
      out.write("                    <h5 class=\"card-title\">Card title</h5>\r\n");
      out.write("                    <button class='btn btn-primary w-100'>Cart</button>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col\">\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                  <img src=\"img/ngookbi_thum007.jpg\" class=\"card-img-top\" alt=\"...\">\r\n");
      out.write("                  <div class=\"card-body\">\r\n");
      out.write("                    <h5 class=\"card-title\">Card title</h5>\r\n");
      out.write("                    <button class='btn btn-primary w-100'>Cart</button>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col\">\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                  <img src=\"img/ngookbi_thum009.jpg\" class=\"card-img-top\" alt=\"...\">\r\n");
      out.write("                  <div class=\"card-body\">\r\n");
      out.write("                    <h5 class=\"card-title\">Card title</h5>\r\n");
      out.write("                    \r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("              <div class=\"col\">\r\n");
      out.write("                <div class=\"card\">\r\n");
      out.write("                  <img src=\"img/ngookbi_thum010.jpg\" class=\"card-img-top\" alt=\"...\">\r\n");
      out.write("                  <div class=\"card-body\">\r\n");
      out.write("                    <h5 class=\"card-title\">Card title</h5>\r\n");
      out.write("                    \r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- 카드 끝 -->");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- TAB -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            <!-- 탭시작 -->\r\n");
      out.write("          <div id='page-tab' class='row mt-2'  style=\"height:300px;position:relative;left:0px;top:0px;\" >\r\n");
      out.write("            <div class=col-6 style='border:1px solid gray;'>\r\n");
      out.write("              \r\n");
      out.write("              <ul class=\"nav nav-tabs\">\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link active\" id=tab1 aria-current=\"page\" href=\"javascript:func1()\">Tab1</a>\r\n");
      out.write("             \r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link\"  id=tab2 href=\"javascript:func2()\">Tab2</a>\r\n");
      out.write("\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link\" id=tab3 href=\"javascript:func3()\">Tab3</a>\r\n");
      out.write("                </li>\r\n");
      out.write("                <li class=\"nav-item\">\r\n");
      out.write("                  <a class=\"nav-link\" id=tab4  href=\"javascript:func4()\">Tab4</a>\r\n");
      out.write("                </li>\r\n");
      out.write("              </ul>\r\n");
      out.write("\r\n");
      out.write("              <!-- 테이블 기본 숨기기 스타일 시작 -->\r\n");
      out.write("              <style>\r\n");
      out.write("                #page-tab table{\r\n");
      out.write("                  position:absolute;\r\n");
      out.write("                  left:3%;  \r\n");
      out.write("                }\r\n");
      out.write("                #page-tab #tab2-tbl\r\n");
      out.write("                {\r\n");
      out.write("                  visibility: hidden;\r\n");
      out.write("                }\r\n");
      out.write("              </style>\r\n");
      out.write("              <!-- 테이블 기본 숨기기 스타일 끝 -->\r\n");
      out.write("              <div>\r\n");
      out.write("                <table id=tab1-tbl class='table' style='width:45%;'>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Tab1</td>\r\n");
      out.write("                    <td>Tab1</td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                </table>\r\n");
      out.write("                <table id=tab2-tbl  class='table'  style='width:45%;'>\r\n");
      out.write("                  <tr>\r\n");
      out.write("                    <td>Tab2</td>\r\n");
      out.write("                    <td>Tab2</td>\r\n");
      out.write("                  </tr>\r\n");
      out.write("                </table>\r\n");
      out.write("              </div>\r\n");
      out.write("              <!-- 탭 Active 이동시키기 시작 -->\r\n");
      out.write("              <script>\r\n");
      out.write("                var pre=$('#tab1');\r\n");
      out.write("                var pretbl=$('#tab1-tbl');\r\n");
      out.write("                function func1(){\r\n");
      out.write("                  pre.removeClass('active'); //이전 탭 active 제거\r\n");
      out.write("                  $('#tab1').addClass('active'); //현재 탭 active 추가\r\n");
      out.write("                  pre=$('#tab1');\r\n");
      out.write("                    // 테이블 이동\r\n");
      out.write("                  pretbl.css('visibility','hidden'); //이전 테이블 display none\r\n");
      out.write("                  $('#tab1-tbl').css('visibility','visible');//2테이블 display block    \r\n");
      out.write("                  pretbl=$('#tab1-tbl');\r\n");
      out.write("                }\r\n");
      out.write("                function func2(){\r\n");
      out.write("                  // 탭이동\r\n");
      out.write("                  pre.removeClass('active'); //이전 탭 active 제거\r\n");
      out.write("                  $('#tab2').addClass('active'); //현재 탭 active 추가\r\n");
      out.write("                  pre=$('#tab2');\r\n");
      out.write("                  // 테이블 이동\r\n");
      out.write("                  pretbl.css('visibility','hidden'); //이전 테이블 display none\r\n");
      out.write("                  $('#tab2-tbl').css('visibility','visible');//2테이블 display block\r\n");
      out.write("                  pretbl=$('#tab2-tbl');\r\n");
      out.write("\r\n");
      out.write("                }\r\n");
      out.write("                function func3(){}\r\n");
      out.write("                function func4(){}\r\n");
      out.write("              </script>\r\n");
      out.write("              <!-- 탭 Active 이동시키기 끝 -->\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("          <!-- 탭끝 -->");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<!-- Footer  -->\r\n");
      out.write("\r\n");
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

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <div id='header' class='row'>
            <div id=header-left class='col-1'> 
                <!-- 오프캔버스(Left 적용) -->
                <a type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasleft" aria-controls="offcanvasRight">Menu</a>

                <div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasleft" aria-labelledby="offcanvasRightLabel">
                  <div class="offcanvas-header">
                    <h5 id="offcanvasRightLabel">Menu</h5>
                    <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                  </div>
                  <div class="offcanvas-body">
                    ...
                  </div>
                </div>

            </div>

            <div id=header-center class='col-10'></div>
            <div id=header-right  class='col-1'>
                    <!-- 오프캔버스(right) 적용) -->
                    <a  type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">Login</a>

                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
                      <div class="offcanvas-header">
                        
                        <svg xmlns="http://www.w3.org/2000/svg" style='margin:0px auto;' width="96" height="96" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                            <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                        </svg>


                        <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                      </div>
                      <div class="offcanvas-body">
                            
                            <form>
                                <div>
                                <input class='form-control mb-3' placeholder="example@example.com">
                                </div>
                                <div>
                                <input type="password" class='form-control mb-3'  placeholder="Insert Password">
                                </div>
                                <div>
                                <input type="submit" value="Login" class='btn btn-primary form-control'>
                                </div>
                            </form>
                       
                      </div>

                    </div>

                </div>

            </div> 
        </div>
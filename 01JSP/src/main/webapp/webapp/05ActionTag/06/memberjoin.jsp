<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form class="row g-3" action="03result.jsp">
  <div class="col-md-6">
    <label for="inputEmail4" class="form-label">이름</label>
    <input type="text" name="name" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputEmail5" class="form-label">아이디</label>
    <input type="text" name="id" class="form-control" id="inputEmail4">
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label">Password</label>
    <input type="password" name="pwd" class="form-control" id="inputPassword4">
  </div>
  <div class="col-md-6">
    <label for="inputEmail3" class="form-label">이메일</label>
    <input type="email" name="email" class="form-control" id="inputEmail4">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">전화번호</label>
    <input type="text" name="tel" class="form-control" id="inputAddress">
  </div>
  <div class="col-md-2">
    <label for="inputZip" class="form-label">우편번호</label>
    <input type="text" name="zipcode" class="form-control" id="inputZip">
  </div>
  <div class="col-12">
    <label for="inputAddress" class="form-label">주소1</label>
    <input type="text" name="addr1" class="form-control" id="inputAddress">
  </div>
  <div class="col-12">
    <label for="inputAddress2" class="form-label">주소2</label>
    <input type="text" name="addr2" class="form-control" id="inputAddress2">
  </div>
  <div class="col-12">
    <div class="form-check">
    	서비스 및 이벤트 소식을
      <input class="form-check-input" type="checkbox" name="inform" value="sendemail" id="gridCheck1">
      <label class="form-check-label" for="gridCheck">
        Email로 수신하겠습니다.
      </label>
      <input class="form-check-input" type="checkbox" name="inform" value="sendesms" id="gridCheck2">
      <label class="form-check-label" for="gridCheck">
        SMS로 수신하겠습니다.
      </label>
    </div>
  </div>
  <div class="col-12">
    <button type="submit" class="btn btn-primary">회원가입</button>
  </div>
</form>
</body>
</html>
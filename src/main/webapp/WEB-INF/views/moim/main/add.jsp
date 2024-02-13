<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Somoim</title>
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- CSS 임포트 -->
<c:import url="../../temps/head_css.jsp"></c:import>
<!-- 내비게이터 import -->
<c:import url="../../temps/header.jsp"></c:import>
<!-- summernote -->
<c:import url="../../temps/summernote.jsp"></c:import>
</head>
<body>
	<!-- 모임 홈 헤더 -->
	<div class="breadcrumbs">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6 col-12">
					<div class="breadcrumbs-content">
						<h1 class="page-title">${dto.moimName}</h1>
					</div>
				</div>
				<div class="col-lg-6 col-md-6 col-12">
					<ul class="nav justify-content-end">
						<li class="nav-item"><a class="nav-link" href="./home"
							style="color: white">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="./board"
							style="color: white; font-weight: bold;">게시판</a></li>
						<li class="nav-item"><a class="nav-link" href="./together"
							style="color: white">정모</a></li>
						<li class="nav-item"><a class="nav-link" href="#"
							style="color: white">채팅</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 본문 -->
	<div class="items-details section pt-2">
		<div class="col-12 mx-3 bg-white" style="border-radius: 10px; width: 99%">
			<div class="section-title" style="margin-bottom: 40px">
				<h2 class="wow fadeInUp" data-wow-delay=".4s"
					style="font-size: 22px; padding-bottom: 10px; margin-top: 20px; margin-bottom: 8px; height: 45px"></h2>
				
			</div>
		</div>
						
						
		<div class="comment-form">
            <h3 class="comment-reply-title"><span style="font-weight: bold;">정모 만들기</span></h3>
            
            <form action="./add" method="POST">
                <div class="row">
	
                    <div class="mb-3">
                    	<label for="meetName" class="form-label">정모 이름</label>
						<input type="text" class="form-control" id="meetName" name="meetName" placeholder="정모 이름">
					</div>
					<div class="mb-3">
						<label for="meetDate" class="form-label">정모 날짜</label>
						<input type="text" class="form-control" id="meetDate" name="meetDate">
					</div>
					<div class="mb-3">
						<label for="meetPlace" class="form-label">위치</label>
						<input type="text" class="form-control" id="meetPlace" name="meetPlace">
						
						<div class="single-block ">
                           <div class="mapouter">
                               <div class="gmap_canvas"><iframe width="100%" height="300" id="gmap_canvas" src="https://maps.google.com/maps?q=2880%20Broadway,%20New%20York&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://putlocker-is.org"></a><br>
                                   <style>
                                       .mapouter {
                                           position: relative;
                                           text-align: right;
                                           height: 300px;
                                           width: 100%;
                                       }
                                   </style><a href="https://www.embedgooglemap.net">google map code for website</a>
                                   <style>
                                       .gmap_canvas {
                                           overflow: hidden;
                                           background: none !important;
                                           height: 300px;
                                           width: 100%;
                                       }
                                   </style>
                               </div>
                           </div>
                       </div>
                       
					</div>
					<div class="mb-3">
						<label for="meetCost" class="form-label">참가비</label>
						<input type="number" class="form-control" id="meetCost" name="meetCost" placeholder="15000">
					</div>
					<div class="mb-3">
						<label for="meetCount" class="form-label">정원(5~300명)</label>
						<input type="number" class="form-control" id="meetCount" name="meetCount" placeholder="정원을 지정해 주세요.">
					</div>
					<div class="mb-3">
						<label for="exampleFormControlTextarea1" class="form-label">정모 사진 등록</label>
						<div class="input-group mb-3">
						  <input type="file" class="form-control" name="file">
						
						</div>
					</div>
					
					<input type="hidden" name="moimNum" id="moimNumHidden" value="${dto.moimNum}">
							
								
                    <div class="col-12">
                        <div class="button text-center">
                            <button type="submit" class="btn" id="submit">등록</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
			
	</div>


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../../temps/footer.jsp"></c:import>
	<script src="https://unpkg.com/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js" data-src="https://unpkg.com/bootstrap@4.3.1/dist/js/bootstrap.min.js" ></script>
	<script src="https://unpkg.com/bootstrap-select@1.13.8/dist/js/bootstrap-select.min.js"></script>
	<script src="/resources/js/moim/main.js"></script>
</body>

</html>
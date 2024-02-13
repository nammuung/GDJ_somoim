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
<c:import url="../temps/head_css.jsp"></c:import>
<!-- 내비게이터 import -->
<c:import url="../temps/header.jsp"></c:import>
<!-- summernote -->
<c:import url="../temps/summernote.jsp"></c:import>
<!-- 카테고리 -->
<link rel=stylesheet href="https://unpkg.com/bootstrap-select@1.13.8/dist/css/bootstrap-select.css" />
</head>
<body>
	<div class="items-grid section">
		<div class="container mx-5">
			<div class="row">
				<!-- Sidebar -->
				<nav id="sidebar"
					class="col-lg-2 col-md-4 col-12 py-3 bg-white sidebar"
					style="border-radius: 10px">
					<div class="user-image mb-3">
						<table class="mx-auto text-center" style="width: 90%">
							<tr>
								<td rowspan="3" style="text-align: left;"><img
									src="/resources/assets/images/Yuree.jpg" alt="#" class="m-1"
									style="width: 85%; height: 90%; border-radius: 10px"></td>
								<td rowspan="2" colspan="2">Steve Aldridge</td>
							</tr>
							<tr>
	
							</tr>
							<tr>
								<td colspan="2"><span><a href="javascript:void(0)">@username</a></span></td>
							</tr>
						</table>
					</div>
					<div class="dashboard-menu mx-auto text-left">
						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link active"
								href="profile-settings.html"><i class="lni lni-pencil-alt"></i>
									회원 정보 수정</a></li>
							<li class="nav-item"><a class="nav-link"
								href="my-items.html"><i class="lni lni-bolt-alt"></i> 내
									모임리스트</a></li>
							<li class="nav-item"><a class="nav-link"
								href="favourite-items.html"><i class="lni lni-heart"></i> 찜
									모임 리스트</a></li>
							<li class="nav-item"><a class="nav-link"
								href="messages.html"><i class="lni lni-envelope"></i> 1:1 채팅</a></li>
							<li class="nav-item"><a class="nav-link"
								href="post-item.html"><i class="lni lni-circle-plus"></i>
									문의게시판</a></li>
							<li class="nav-item"><a class="nav-link"
								href="bookmarked-items.html"><i class="lni lni-bookmark"></i>
									공지게시판</a></li>
							<li class="nav-item"><a class="nav-link"
								href="delete-account.html"><i class="lni lni-trash"></i> 구독
									결제 하기</a></li>
						</ul>
						<div class="text-center">
						<button class="btn btn-danger mt-5" href="javascript:void(0)">회원탈퇴</button>
						</div>
					</div>
				</nav>
				<div class="col-lg-1 col-md-1"></div>
				
				
				<!-- Main content -->
				<div class="col-lg-9 col-md-7 col-12 bg-white" style="border-radius: 10px">
					<div class="row">
						<!-- 안에 내용 수정해서 사용하세요 -->
						<div class="col-6"></div>
						
						<!-- 타이틀 -->
						<div class="col-12 mx-3 bg-white" style="border-radius: 10px; width: 99%">
							<div class="section-title" style="margin-bottom: 40px">
								<h2 class="wow fadeInUp" data-wow-delay=".4s"
									style="font-size: 22px; padding-bottom: 10px; margin-top: 20px; margin-bottom: 8px; height: 45px">모임
									개설</h2>
								<p class="wow fadeInUp" data-wow-delay=".6s" style="font-size: 12px;">모임을 만들어 보세요!</p>
							</div>
						</div>

						<!-- 폼  -->  
						<form id="addForm" action="./add" method="post" enctype="multipart/form-data">
			                <div class="col-12 mx-3 px-5 bg-white" style="border-radius: 10px; width: 99%">
			                
				                <!-- 카테고리설정 -->
								<div class="mb-3">
				                <label for="cateForm" class="form-label">관심사 &emsp;</label>
								<select class="my-image-selectpicker" id="moimCategory" name="moimCategory">
								    <option data-thumbnail="/resources/assets/images/categories/travel.svg' width=16" value="아웃도어/여행">아웃도어/여행</option>
								    <option data-thumbnail="/resources/assets/images/categories/controller.svg' width=16" value="게임/오락">게임/오락</option>
								    <option data-thumbnail="/resources/assets/images/categories/jobs.svg' width=16" value="업종/직무">업종/직무</option>
								    <option data-thumbnail="/resources/assets/images/categories/tshirt.svg' width=16" value="운동/스포츠">운동/스포츠</option>
								    <option data-thumbnail="/resources/assets/images/categories/matrimony.svg' width=16" value="사교/인맥">사교/인맥</option>
								    <option data-thumbnail="/resources/assets/images/categories/education.svg' width=16" value="인문학">인문학</option>
								    <option data-thumbnail="/resources/assets/images/categories/furniture.svg' width=16" value="공예/만들기">공예/만들기</option>
								    <option data-thumbnail="/resources/assets/images/categories/hospital.svg' width=16" value="봉사활동">봉사활동</option>
								    <option data-thumbnail="/resources/assets/images/categories/laptop.svg' width=16" value="외국/언어">외국/언어</option>
								    <option data-thumbnail="/resources/assets/images/categories/car.svg' width=16" value="문화/공연/음악">문화/공연/음악</option>
								    <option data-thumbnail="/resources/assets/images/categories/watch.svg' width=16" value="요리/제조">요리/제조</option>
								    <option data-thumbnail="/resources/assets/images/categories/real-estate.svg' width=16" value="자유">자유주제</option>
								</select>
								</div>
								
								
								
								<!-- 지역설정 -->
								<div class="mb-3">
									<label for="regionbutton" class="form-label">모임 지역&nbsp;</label>
									<button type="button" class="btn btn-light col-4" id="regionbutton"data-bs-toggle="modal" data-bs-target="#exampleModal">
											<div id="regionShow">지역 찾기</div>
									</button>

									<!-- Modal -->
									<div class="modal fade" id="exampleModal" tabindex="-1"\aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog">
											<div class="modal-content">
												<div class="modal-header">
													<h1 class="modal-title fs-5" id="exampleModalLabel">거주지역입력</h1>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal" aria-label="Close"></button>
												</div>
												<div class="modal-body">
													<!-- ... --> 
													<label for="cityList">시/도</label> 
													<select id="cityList" onchange="city(this)" class="form-select" aria-label="Default select example">
														<option selected="selected">전체</option>
														<option value="서울">서울특별시</option>
														<option value="부산">부산광역시</option>
														<option value="대구">대구광역시</option>
														<option value="인천">인천광역시</option>
														<option value="광주">광주광역시</option>
														<option value="대전">대전광역시</option>
														<option value="울산">울산광역시</option>
														<option value="세종">세종특별자치시</option>
														<option value="경기">경기도</option>
														<option value="충북">충청북도</option>
														<option value="충남">충청남도</option>
														<option value="전남">전라남도</option>
														<option value="경북">경상북도</option>
														<option value="경남">경상남도</option>
														<option value="제주">제주특별자치도</option>
														<option value="강원">강원특별자치도</option>
														<option value="전북">전북특별자치도</option>
													</select>

													<label for="remainList" class="w70">시/군/구</label>
													<select id="remainList" class="form-select" aria-label="Default select example">
														<option selected="selected">시/군/구 선택</option>

													</select>

												
													<input type="hidden" name="moimRegion" id="moimRegion">
													

													<!-- ... -->
												</div>
												
												<div class="modal-footer">
													<button type="button" id="close" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
													<button type="button" id="save" class="btn btn-light">Save</button>
												</div>
											</div>
										</div>
									</div>
									<!-- Modal End -->
								</div>




								<!-- 모임설정 -->
								<div class="mb-3">
									<label for="moimName" class="form-label">모임 이름</label>
									<input type="text" class="form-control" id="moimName" name="moimName" placeholder="모임 이름">
								</div>
								<div class="mb-3">
									<label for="moimText" class="form-label">모임 설명</label>
									<textarea class="form-control" id="moimText" name="moimText" rows="8" placeholder="모임에 대한 설명이나 목표를 적어주세요."></textarea>
								</div>
								<div class="mb-3">
									<label for="exampleFormControlTextarea1" class="form-label">모임 대표 이미지</label>
									<div class="input-group mb-3">
									  <input type="file" class="form-control" name="file">
									</div>
								</div>
								<div class="mb-3">
									<label for="moimName" class="form-label">모임 정원(10~300명)</label>
									<input type="number" class="form-control" id="moimMemCount" name="moimMemCount">
								</div>
								
								
								<!-- 제출 -->
								<div class="button text-center">
									<button class="btn my-3" id="submitBtn" type="submit">모임 만들기</button>
								</div>
	
							</div>
						</form>
						
						
						
						
						
						
						
						
						
						
						
						
					</div>
					<!-- Main content goes here -->
				</div>
			</div>
		</div>
	</div>


	<!-- ========================= scroll-top ========================= -->
	<a href="#" class="scroll-top btn-hover"> <i
		class="lni lni-chevron-up"></i>
	</a>

	<!-- ========================= JS improt ========================= -->
	<c:import url="../temps/footer.jsp"></c:import>
	
	<!-- <script src="https://unpkg.com/jquery@3.3.1/dist/jquery.slim.min.js"></script> -->
	<script src="https://unpkg.com/bootstrap@4.3.1/dist/js/bootstrap.bundle.min.js" data-src="https://unpkg.com/bootstrap@4.3.1/dist/js/bootstrap.min.js" ></script>
	<script src="https://unpkg.com/bootstrap-select@1.13.8/dist/js/bootstrap-select.min.js"></script>
	<script src="/resources/js/moim/moim.js"></script>
</body>

</html>
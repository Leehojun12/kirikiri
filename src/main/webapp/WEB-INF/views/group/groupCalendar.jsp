<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- kakaoMap -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fef0f2eae29928e7e7027600e1cf8f7d&libraries=services"></script>
<!-- swal -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="sweetalert2.min.js"></script>
<!--bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<!-- fullcalendar CDN -->
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.css' rel='stylesheet' />
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.min.js'></script>
<!-- fullcalendar 언어 CDN -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/locales-all.min.js'></script>

<style>
@font-face {
    font-family: 'twayair';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_tway@1.0/twayair.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


body {
      background-color: #f6f7f9;
    }

    * {
      box-sizing: border-box;
      font-family: "twayair";
    }

    /* header 반응형 */
    @media (max-width: 768px) {
      #navLogo {
        display: none;
      }

      #myPageIcon {
        display: none;
      }

      #cartIcon {
        display: none;
      }

      #menu {
        display: none;
      }
    }

    /* header */
    #navLogo {
      width: 150px;
      height: 100px;
    }

    #logoImgs {
      width: 100%;
      height: 100%;
    }

    @media (min-width: 768px) {
      #navibar {
        display: none;
      }
    }

    /* header 반응형 끝 */
    #logoImg {
      width: 50%;
    }

    /*맨위 사진*/
    .topimg {
      background-color: #d2e3ec;
      width: 100%;
    }

    .txtBox div {
      color: rgba(85, 85, 95, 0.993);
    }

    .txtBox>div:first-child {
      font-size: 35px;
      color: navy;
      text-shadow: 3px 3px white;
    }

    a {
      text-decoration: none;
      color: black;
    }

	/* 캘린더 */
	.fc-event {
		margin-top: 5px;
		cursor: grabbing;
	}
	
	.fc-event-title {
		cursor: grabbing;
	}
	
	#external-events {
		padding-top: 1%;
	}
	
	input[type="text"] {
		width: 80% !important;
		margin-top: 20px;
	}
	
	.chtingCalForm {
		width: 50%;
	}
	
	input[type="text"] {
		text-align: center;
		width: 90% !important;
		margin-top: 20px;
	}
	
	#searchLocation {
		cursor: pointer;
	}
	
	#calendar {
		width: 80%;
		height: 88%;
		float: left;
	}

/* footer */
    /*풋터 영역*/
    .footerBox {
      height: 0px;
    }

    footer.footer {
      padding-top: 2rem;
      padding-bottom: 2rem;
      background-color: #f6f7f9;
    }

    .footer a {
      text-decoration: none;
      color: black;
      font-weight: 40px;
      font-weight: bold;
    }

    .footer-imgBox>img {
      width: 100%;
      height: 100%;
    }

    /* 눈누 폰트 */
    @font-face {
      font-family: "OTWelcomeRA";
      src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2") format("woff2");
      font-weight: normal;
      font-style: normal;
    }

</style>


</head>
<body>
	<header class="mb-3 border-bottom" style="background-color: #fff;">
    <div class="container ">
      <!-- 접혔을 때 nav -->
      <nav id="navibar" class="navbar navbar-expand-md navbar-light" aria-label="Main navigation">
        <div class="container-fluid">
          <div class="row">
            <div class="col-10">
              <a class="navbar-brand mb-2 mb-lg-0" href="#">
                <div class="title-box">
                  <img id="logoImg" src="/resources/images/kiri.jpg" />
                </div>
              </a>
            </div>
            <!-- toggle button -->
            <div class="col-2 d-flex align-items-center">
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown"
                aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
            </div>
            <!-- 메뉴 -->
            <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
              <ul class="navbar-nav mb-2 mb-lg-0">
                <li class="nav-item">
                  <a class="nav-link" href=" ">자유게시판</a>
                </li>
                <c:choose>
                  <c:when test="${empty loginSession}">
                    <li class="nav-item">
                      <a class="nav-link" href=" ">로그인</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href=" ">회원가입</a>
                    </li>
                  </c:when>
                  <c:otherwise>
                    <li class="nav-item">
                      <a class="nav-link" href=" ">마이페이지</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href=" ">로그아웃</a>
                    </li>
                  </c:otherwise>
                </c:choose>
              </ul>
            </div>
          </div>
        </div>
      </nav>
      <!-- 펼쳐졌을 때 nav -->
      <nav id="menu" class="navbar navbar-expand-md w-100 navbar-light" aria-label="Main navigation">
        <div class="row w-100 align-items-center">
          <div class="col-5 d-flex justify-content-center">
            <ul class="navbar-nav mb-2 mb-lg-0">
              <li class="nav-item">
                <a class="nav-link mx-2" href="">자유 게시판</a>
              </li>
            </ul>
          </div>

          <!-- logo -->
          <div class="col-2">
            <a href="/toHome.home" id="navLogo" class="mb-2 mb-lg-0">
              <img id="logoImgs" src="/resources/images/kiri.jpg" />
            </a>
          </div>

          <div class="col-5">
            <div class="row align-items-center justify-content-center">
              <div class="col-auto d-none">
                <ul class="navbar-nav mb-2 mb-lg-0 me-2">
                  <c:if test="${empty loginSession}">
                    <li class="nav-item">
                      <a class="nav-link" href="/toLogin.mem">로그인</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="/toSignUp.mem">회원가입</a>
                    </li>
                  </c:if>
                </ul>
              </div>

              <div class="col-auto user">
                <c:if test="${not empty loginSession}">
                  <div class="dropdown text-end">
                    <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1"
                      data-bs-toggle="dropdown" aria-expanded="false">
                      <img src="/resources/images/profile.jpg" alt="mdo" width="32" height="32"
                        class="rounded-circle" />
                    </a>
                    <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                      <li>
                        <a class="dropdown-item" href="#">마이페이지</a>
                      </li>
                      <li><a class="dropdown-item" href="#">로그아웃</a></li>
                    </ul>
                  </div>
                </c:if>
              </div>
            </div>
          </div>
        </div>
      </nav>
    </div>
  </header>

	<!-- 캘린더 -->
	<div id="wrapper" class="container-fluid mb-5">
		<!-- Main -->
		<div id="main" class="row my-2 d-flex justify-content-center pb-5">
			<div class="inner col-md-8 col-12">
				<!-- Banner -->
				<section
					class="row d-flex justify-content-end gy-4 gx-md-5 mb-md-5 mt-md-2">
					<!-- Modal -->
					<div class="modal fade" id="exampleModal" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div
							class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="ModalLabel">일정을 추가하세요!</h5>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close" onclick="moveSite();"></button>
								</div>
								<div class="modal-body">
									<form id="calForm" name="calForm" action="/calForm" method="post">
										<div class="form-floating mb-3 partyCal"
											style="margin-left: 10%;">
											<input type="text" class="form-control" id="title"
												name="title" disabled> <label
												for="partyCategory">모임유형</label>
										</div>
										<div class="form-floating mb-3 partyCal"
											style="margin-left: 10%;">
											<input type="text" class="form-control" id="start"
												name="start" disabled> <label
												for="partyDate">모임날짜</label>
										</div>
										<div class="form-floating mb-3 partyCal"
											style="margin-left: 10%;">
											<input type="text" class="form-control" id="gcal_name"
												name="gcal_name"> <label for="partyTitle">제목</label>
										</div>
										<div class="form-floating mb-3 partyCal"
											style="margin-left: 10%;">
											<input type="text" class="form-control" id="gcal_content"
												name="gcal_content"> <label for="partyContent">내용</label>
										</div>
										<div class="form-floating mb-3 partyCal"
											style="margin-left: 10%;">
											<input type="text" class="form-control keyword"
												id="partyLocation" placeholder="장소 검색"> <label
												for="partyLocation" id="placeholderForSearch">&#128270;
												장소를 알려주세요!</label>
										</div>

										<div style="display: flex; justify-content: center">
											<input class="chtingCal" type="hidden" type="text">
										</div>			
										<!-- 카카오맵 기본 좌표 kh 당산 -->
										<input type="hidden" name="xcoord" id="xcoord" value="126.896761296215" /> 
										<input type="hidden" name="ycoord"id="ycoord" value="37.5339071790577" /> 
										<input type="hidden" name="placeName" id="placeName" value="강남" /> 
										<input type="hidden" name="seq_group_cal" id="seq_group_cal" value="" />
									</form>
									<div style="margin-left: 10%; margin-right: 10%;">
										<div id="map" style="width: 360px; height: 300px;"></div>
									</div>
								</div>
								<div class="modal-footer" id="buttonDiv">
									<button type="button" class="btn btn-secondary" onclick="moveSite();">닫기</button>
									<button type="button" class="btn btn-primary" id="calSubmit">저장</button>
									<button type="button" class="btn btn-success" id="calDelete">삭제</button>
									<button type="button" class="btn btn-danger searchBtn">검색</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Calendar 일정 생성기-->
					<div class="col-md-2 col-5" id='external-events'>
						<p>
							<strong>일정 생성하기</strong>
						</p>
						<div
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<div class='fc-event-main text-center'>정모</div>
						</div>
						<div
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<div class='fc-event-main text-center'>회식</div>
						</div>
						<div
							class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
							<div class='fc-event-main text-center'>여행</div>
						</div>
					</div>

					<!--캘린더 자체 생성-->
					<div class="col-md-10 col-auto flex-fill" id='calendar'
						style="min-width: initial; min-height: 80vh;"></div>
					<!-- Calendar end -->
					
					
				</section>
			</div>
		</div>
	</div>
	
	<!-- Footer-->
  <div class="footerWrapper" style="background-color: #fff;">
    <div class="container">
      <footer class="footer" style="background-color: #fff;">
        <div class="row">
          <div class="col-lg-3 footer-imgBox">
            <img src="/resources/images/kirilogo.png" alt="오류가 발생했습니다." />
          </div>
          <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
            <ul class="list-inline mb-2">
              <li class="list-inline-item"><a href="#!">공지사항</a></li>
              <li class="list-inline-item">⋅</li>
              <li class="list-inline-item"><a href="#!">회원가입</a></li>
              <li class="list-inline-item">⋅</li>
              <li class="list-inline-item"><a href="#!">로그인</a></li>
              <li class="list-inline-item">⋅</li>
              <li class="list-inline-item">
                <a href="#!">책임의 한계 및 법적고지</a>
              </li>
              <li class="list-inline-item">⋅</li>
              <li class="list-inline-item">
                <a href="#!" style="color: red; font-weight: bold">개인정보처리방침</a>
              </li>
            </ul>
            <p class="text-muted small mb-4 mb-lg-0">
              끼리끼리(주) 대표 : 이호준 | 개인정보관리책임자 : 김영완 |
              사업자등록번호 : 22-02-22
            </p>
            <p class="text-muted small mb-4 mb-lg-0">
              주소 : 서울특별시 영등포구 선유동2로 57 이레빌딩
            </p>
            <p class="text-muted small mb-4 mb-lg-0">
              &copy; Your Website 2022. All Rights Reserved.
            </p>
          </div>
          <div class="col-lg-3 h-100 text-center text-lg-end my-auto">
            <ul class="list-inline mb-0">
              <li class="list-inline-item me-4">
                <a href="#!"><i class="bi-facebook fs-3"></i></a>
              </li>
              <li class="list-inline-item me-4">
                <a href="#!"><i class="bi-twitter fs-3"></i></a>
              </li>
              <li class="list-inline-item">
                <a href="#!"><i class="bi-instagram fs-3"></i></a>
              </li>
            </ul>
          </div>
        </div>
      </footer>
    </div>
  </div>

	<script>
		
		// 다시 홈으로 돌아오는 함수
		let moveSite = function() {
			window.location.href = "";
		}
	
		// 일정 추가 모달
		var calendarModal = new bootstrap.Modal(document.getElementById('exampleModal'));
		$(document).ready(function() {

			// 드래그 박스 취득
			let containerEl = document.getElementById('external-events');
			let Calendar = FullCalendar.Calendar;
			let Draggable = FullCalendar.Draggable;
			
			// 현재 시퀀스 그룹 번호
			let seq_group = ${seq_group};

			// 설정하기
			new Draggable(containerEl, {
				itemSelector : '.fc-event',
				eventData : function(eventEl) {
					return {
						title : eventEl.innerText
					};
				}
			});

			// calendar element 취득
			var calendarEl = $('#calendar')[0];
			
			// full-calendar 생성하기
			var calendar = new FullCalendar.Calendar(calendarEl, {

				// 해더에 표시할 툴바(기본설정)
				headerToolbar : {
					left : 'today',
					center : 'title',
					right : 'prev,next'
				},
				initialView : 'dayGridMonth',
				locale : 'ko', // 한국어 설정
				editable : true, // 수정 가능
				droppable : true, // 드래그 가능
				
				selectable : false, // 빈 공간 클릭 허용
				events : [ 
					$.ajax({
						url : '/cal/calList',
						type : 'get',
						contentType : "application/json; charset:UTF-8",
						data: {"seq_group" : seq_group},
						success : function(response) {
						for (i = 0; i < response.length; i++) {
							// console.log(response[i].seq_group_cal);
							calendar.addEvent({
								title : response[i].title,
								start : response[i].start,
								seq_group_cal : response[i].seq_group_cal // 번호도 생성 해줘야 가져올 수 있음
							})
						}
					},
					error : function(e) {
						console.log(e);
						console.log("에러입니다");
					}
				}) ],

				// 일정 옮겼을 때 
				eventDrop:function(events) {
					let seq_group = ${seq_group}; // 현재 모임의 일정 번호
					let seq_group_cal = events.event.extendedProps.seq_group_cal; // 클릭한 일정의 번호 
					let year = (events.event._instance.range.start.getFullYear()); //옮긴 달력의 날짜
	                let month = events.event._instance.range.start.getMonth() + 1; //옮긴 달력의 날짜
	                let day = events.event._instance.range.start.getDate(); //옮긴 달력의 날짜
	                let start = year + "-" + month + "-" + day; // 변경된 날짜
	                
					$.ajax ({
						url : "/cal/calModify",
						type: 'get',
						data : {"start" : start, "seq_group_cal" : seq_group_cal, "seq_group" : seq_group},
						success : function(data) {
							console.log(data);
							if(data === "success") {
								console.log("수정 성공!");
								Swal.fire({
									  position: 'center',
									  icon: 'success',
									  title: '일정이 수정되었습니다!',
									  showConfirmButton: false,
									  timer: 1300
									})
							}
						},
						error : function(e) {
							console.log(e);
							Swal.fire({
								  icon: 'error',
								  title: '에러가 발생했네요..',
								  text: '관리자에게 문의해주세여!',
								})
						}
					})
				},
				
				
				// 일정 클릭시
				eventClick : function(info) {
					let seq_group_cal =""; // 초기화 
					let seq_group = ${seq_group}; // 현재 모임의 번호
					seq_group_cal = info.event.extendedProps.seq_group_cal; // extendedProps는 event 함수에서 존재하는 값만 사용 가능 -> 클릭했을 때 해당 seq_group_cal을 찾아줌
					if(seq_group_cal === undefined) { // 값이 undefined 면 
						$("#calSubmit").addClass("d-none");

						// 삭제 버튼 보이게
						$("#calDelete").removeClass("d-none");
						
						calendarModal.show();
						makeMap();
					}else {
						console.log(seq_group_cal);
						// 클릭했을 때 번호가 있을 때
							$.ajax({
								url : "/cal/calDetail",
								type : "get",
								data : {"seq_group_cal" : seq_group_cal, "seq_group" : seq_group},
								dataType : "json",
								success : function(data) {
									
									// 받아온 값들을 input에 셋팅
									$("#title").val(data[0].title);
									$("#start").val(data[0].start);
									$("#gcal_name").val(data[0].gcal_name);
									$("#gcal_content").val(data[0].gcal_content);
									$("#partyLocation").val(data[0].gcal_place);
									$("#ycoord").val(data[0].gcal_latitude);
									$("#xcoord").val(data[0].gcal_longitude);
									
									// seq_group_cal을 modal에 넣어준다 
									$("#seq_group_cal").val(seq_group_cal);
									
									if($("calSubmit").hasClass("d-none") === false) {
										//저장 버튼 안보이게 
										$("#calSubmit").addClass("d-none");

										// 삭제 버튼 보이게
										$("#calDelete").removeClass("d-none");
									}
									
								},
								error : function(e) {
									console.log(e);
									console.log("해당 값 불러오기 실패");
									// 초기화 작업
									$("#ycoord").val('37.566826'); // 위도
									$("#xcoord").val('126.9786567'); // 경도
									$("#gcal_name").val(''); // 제목
									$("#gcal_content").val(''); // 내용
									$("#partyLocation").val(''); // 위치명
									$("#title").val('');
									$("#start").val('');
									
								}
							});
							calendarModal.show(); // 모달 보여주기 
							makeMap(); // 지도 생성
					}
					
				},

				// 일정을 달력에 가져다 놓았을 때
				drop : function(info) { // 드래그 엔 드롭 성공시

					// 데이터값 입력
					$("#title").val(info.draggedEl.innerText);
					$("#start").val(info.dateStr);

					console.log(info.dateStr);
					console.log($("#xcoord").val()); // 126
					console.log($("#ycoord").val()); // 37

					// 초기화 작업
					$("#ycoord").val('37.5339071790577'); // 위도
					$("#xcoord").val('126.896761296215'); // 경도
					$("#gcal_name").val(''); // 제목
					$("#gcal_content").val(''); // 내용
					$("#partyLocation").val(''); // 위치명

					if($("calDelete").hasClass("d-none") === false) {
						// 삭제 버튼 안보이게 
						$("#calDelete").addClass("d-none");

						// 저장 버튼 보이게
						$("#calSubmit").removeClass("d-none");
					}

					// 모달 보여주기 
					calendarModal.show();
					// 기존 맵 지우기
					$('#map').empty()
					// 모달 띄워준 뒤에 맵이 생성되야 함 
					makeMap();
				}
			});

			// 캘린더 랜더링
			calendar.render();
		});

		// 카카오맵 api
		$(".searchBtn").on("click", function() {
			let keyword = $(".keyword").val();
			// 지도 찾기 호출
			searchMap(keyword);
		})

		// 지도 찾기 함수
		const makeMap = function() {
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			  mapOption = { 
			        center: new kakao.maps.LatLng($('#ycoord').val(), $('#xcoord').val()), // 지도의 중심좌표
			        level: 4 // 지도의 확대 레벨
			    };

			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 마커 또한 모달창이 띄워지고 난 뒤에 다시 생성해야 하므로 setTimeout 걸어줌
			setTimeout(function() {
				var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_red.png', // 마커이미지의 주소입니다    
			    imageSize = new kakao.maps.Size(64, 69), // 마커이미지의 크기입니다
			    imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.

			// 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
			var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption),
			    markerPosition = new kakao.maps.LatLng($('#ycoord').val(), $('#xcoord').val()); // 마커가 표시될 위치입니다

			// 마커를 생성합니다
			var marker = new kakao.maps.Marker({
			  position: markerPosition,
			  image: markerImage // 마커이미지 설정 
			});

			// 마커가 지도 위에 표시되도록 설정합니다
			marker.setMap(map);  

			// 커스텀 오버레이에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
			var content = '<div class="customoverlay">' +
			    '  <a href="https://map.kakao.com/link/map/11394059" target="_blank">' +
			    '    <span class="title">끼리끼리</span>' +
			    '  </a>' +
			    '</div>';

			// 커스텀 오버레이가 표시될 위치입니다 
			var position = new kakao.maps.LatLng($('#ycoord').val(), $('#xcoord').val());  

			// 커스텀 오버레이를 생성합니다
			var customOverlay = new kakao.maps.CustomOverlay({
			    map: map,
			    position: position,
			    content: content,
			    yAnchor: 1 
			});

			},100);
			
			// 모달을 열었을 때보다 늦게 코드가 실행되게 해야한다 그래야 api가 적용됨
			setTimeout(function() {
				map.relayout();
				map.setCenter(new kakao.maps.LatLng($('#ycoord').val(), $('#xcoord').val()));
			}, 200);
		}

		// 검색 했을 때 메서드
		function searchMap(keyword) {

			// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
			var infowindow = new kakao.maps.InfoWindow({
				zIndex : 1
			});
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div
			mapOption = {
				center : new kakao.maps.LatLng($('#ycoord').val(), $('#xcoord')
						.val()), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다
			var map = new kakao.maps.Map(mapContainer, mapOption);
			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places();
			// 키워드로 장소를 검색합니다
			ps.keywordSearch(keyword, placesSearchCB);

			// 키워드 검색 완료 시 호출되는 콜백함수 입니다
			function placesSearchCB(data, status, pagination) {
				if (status === kakao.maps.services.Status.OK) {
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					var bounds = new kakao.maps.LatLngBounds();
					for (var i = 0; i < data.length; i++) {
						displayMarker(data[i]);
						bounds.extend(new kakao.maps.LatLng(data[i].y,
								data[i].x));
					}
					// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
					map.setBounds(bounds);
				}else {
					Swal.fire({
	                    icon: 'error',
	                    title: '장소검색 실패!',
	                    text: '검색하신 키워드에 대한 정보가 없습니다',
	                    footer: 'ex) KH 당산'
	                })
				}
			}
			// 지도에 마커를 표시하는 함수입니다
			function displayMarker(place) {
				// 마커를 생성하고 지도에 표시합니다
				var marker = new kakao.maps.Marker({
					map : map,
					position : new kakao.maps.LatLng(place.y, place.x)
				});

				// 마커에 클릭이벤트를 등록합니다
				kakao.maps.event.addListener(marker,'click',function() {// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
									infowindow.setContent('<div style="padding:5px;font-size:12px;">'+ place.place_name+'</div>');
									infowindow.open(map, marker);
									$('#xcoord').val(place.x); // 경도 
									$('#ycoord').val(place.y); // 위도 
									$("#partyLocation").val(place.place_name); // 마커로 찍은 장소를 input에 넣어주기
									console.log(place.x);
									console.log(place.y);
									console.log(place.place_name);
									console.log(place);

									// swal 라이브러리 이용
									Swal.fire({
										position : 'center',
										icon : 'success',
										title : place.place_name
												+ '로 모임 장소를 선택했습니다.',
										showConfirmButton : false,
										timer : 1500
									})
								});
			}
		}

		// 일정 저장
		$("#calSubmit").on("click", function() {
			
			let seq_group = ${seq_group}; // 현재 모임 번호 
			let title = $("#title").val(); // 모임 유형 
			let start = $("#start").val(); // 모임 날짜 
			let gcal_name = $("#gcal_name").val(); // 일정 제목 
			let gcal_content = $("#gcal_content").val(); // 일정 내용
			let gcal_longitude = $("#xcoord").val(); // 일정 경도
			let gcal_latitude = $("#ycoord").val(); // 일정 위도 
			let gcal_place = $("#partyLocation").val(); // 일정 위치
			
			if(gcal_name == "") {
				Swal.fire('제목을 입력해주세요');
			}else if(gcal_content == "") {
				Swal.fire('내용을 입력해주세요');
			}else if(gcal_place == "") {
				Swal.fire('장소를 검색해주세요');
			}

			$.ajax({
				url : "/cal/calInsert",
				type : "post",
				data : {
					"seq_group" : seq_group,
					"title" : title,
					"start" : start,
					"gcal_name" : gcal_name,
					"gcal_content" : gcal_content,
					"gcal_longitude" : gcal_longitude,
					"gcal_latitude" : gcal_latitude,
					"gcal_place" : gcal_place
				},
				success : function(data) {
					console.log(data);
					// 일정 추가되었다고 알림 
					Swal.fire({
						position : 'center',
						icon : 'success',
						title :'일정이 등록되었습니다',
						showConfirmButton : false,
						timer : 900
					})
					// 모달창 안보이게 
					calendarModal.hide();
					
					// 0.8 초있다가 페이지 로드
					setTimeout(function() {
						window.location.href = "";
					},1000);
					
				},
				error : function(e) {
					console.log(e);
				}
			})
		})
		
		// 일정 삭제
		$("#calDelete").on("click",function() {
			let seq_group_cal = $("#seq_group_cal").val(); // 일정 번호
			Swal.fire({
				  title: '일정을 정말 삭제하시겠습니까?',
				  text: "삭제 후, 일정을 다시 만드셔야 합니다",
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '네, 삭제할래요!',
				  cancelButtonText: '아니요!',
				}).then((result) => {
				  if (result.isConfirmed) { // 삭제에서 yes를 누르다면
					  $.ajax ({
						  url : "/cal/calDelete",
					  	  data : {"seq_group_cal" : seq_group_cal},
					  	  dataType : "text",
					  	  success : function(data) {
					  		  if(data === "success") { // 삭제 성공시
					  			// 모달창 안보이게 
								calendarModal.hide();
					  			
					  		  	Swal.fire(
									      '삭제되었습니다!',
									      '일정을 다시 확인해주세여',
									      'success'
									 )
								// 0.9 초있다가 페이지 로드
								setTimeout(function() {
									window.location.href = "";
								},1000);
								
								
					  		  }else { // 삭제 실패시
					  			Swal.fire({
									  icon: 'error',
									  title: '에러가 발생했네요..',
									  text: '관리자에게 문의해주세여!',
									})
					  		  }
					  			
					  	  },
					  	  error : function(e) {
					  		  console.log(e);
					  	  }
					  })
					 
				  }
				})
		})
		
	</script>
</body>
</html>
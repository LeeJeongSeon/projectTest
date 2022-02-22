<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script type="text/javascript">
$(function () {
	$("#agreeChk").click(function () {
		if($("#agreeChk").val()=="off") {
			$("#agreeChk").val("on");
		}else if($("#agreeChk").val()=="on") {
			$("#agreeChk").val("off");
		}
	});
});

function agreeChk() {
	if($("#agreeChk").val()=="on") {
		location.href="${path}/event_join/insert.do?ej_num=${dto.e_num}&ej_userid=${sessionScope.userid}";
	}else {
		alert("이용약관 및 개인정보 수집/활용에 동의해주세요.");
	}
}
</script>
<link rel="stylesheet" href="../include/event.css">
<style type="text/css">
#body {
	font-family: HYKANM;
}

header {
	font-size: 25px;
	font-weight: bold;
	padding-left: 30px;
}

a:link, a:visited {
	text-decoration: none;
	color: black;
}

.explainBox {
	border: 1px solid gray;
	width: 80%;
	height: 200px;
	margin: 10px 10% 100px 10%;
	padding: 10px 30px;
	overflow: scroll;
}

.explainBox b {
	display: block;
	margin: 15px;
}

.explainBox p {
	margin-bottom: 60px;
	text-align: left;
}
</style>
</head>
<body>
<%@ include file="../include/menu.jsp" %>
<div id="body">
	<header>
		문화행사 참여신청하기
	</header>
	<div id="table">
		<table>
			<tr>
				<th>번호</th>
				<th>행사명</th>
				<th>강사</th>
				<th>참여 인원</th>
				<th>최대 인원</th>
				<th>행사 분야</th>
				<th>신청</th>
			</tr>
			<tr>
				<td>${dto.e_num}</td>
				<td>${dto.e_name}</td>
				<td>${dto.e_instr}</td>
				<td>${dto.e_join_p}</td>
				<td>${dto.e_max_p}</td>
				<td>
					<c:choose>
						<c:when test="${dto.e_genre==1}">소설 / 시 / 희곡</c:when>
						<c:when test="${dto.e_genre==2}">사회 / 정치</c:when>
						<c:when test="${dto.e_genre==3}">인문</c:when>
						<c:when test="${dto.e_genre==4}">경제 / 경영</c:when>
						<c:when test="${dto.e_genre==5}">자연과학</c:when>
					</c:choose>
				</td>
				<td>
					<c:if test="${dto.e_max_p!=e_join_p}">가능</c:if>
					<c:if test="${dto.e_max_p==e_join_p}">불가능</c:if>
				</td>
			</tr>
		</table><br>
	</div>
	<div align="center">
		더 자세한 행사 내용을 알고 싶으신가요? <button type="button">이동</button>
	</div>
	<c:if test="${dto.e_max_p!=e_join_p}">
		<div id="table">
			<br><table>
				<tr><td style="padding: 30px;">
					<b style="font-size: 18px;">이용약관 및 개인정보 수집/활용 동의</b>
				</td></tr>
				<tr>
					<td>
						<b style="color: red;">제 1 장 총 칙</b>
						<div class="explainBox">
							<b>제 1 조 (목적)</b>
							<p>이 약관은 도서관이 제공하는 서비스와 관련하여 이용자(이하 “회원”이라 함)의 서비스 이용 조건 및 절차, 회사와 회원간의 권리, 의무 및 책임 사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
							<b>제 2 조 (용어의 정의)</b>
							<p>이 약관에서 사용하는 용어의 정의는 다음과 같습니다.<br><br>
							1. “서비스”라 함은 구현되는 단말기(PC, TV, 휴대용 단말기 등 각종 유무선 기기 포함)와 상관없이 회사가 회원에게 제공하는 모든 인터넷 서비스를 의미합니다.<br>
							2. “회원”이라 함은 서비스에 접속하여 이 약관에 따라 이용계약을 체결하고 회사가 제공하는 서비스를 이용하는 고객을 말합니다.<br>
							3. “이용계약”이라 함은 서비스를 제공받기 위하여 회사와 체결한 계약을 말합니다.<br>
							4. “해지”라 함은 회사 또는 회원이 이용계약을 해약하는 것을 말합니다.<br>
							5. “게시물”이라 함은 "회원"이 "서비스"를 이용함에 있어 "서비스상"에 게시한 부호ㆍ문자ㆍ음성ㆍ음향ㆍ화상ㆍ동영상 등의 정보 형태의 글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다.
							</p>
							<b>제 3 조 (이용약관의 효력 및 변경)</b>
							<p>1.  이 약관은 서비스 초기화면에 공지되거나 전자우편의 방법으로 회원에게 공지됨으로써 그 효력이 발생됩니다.<br>
							2.  합리적 사유가 발생할 경우, 회사는 관계법령에 위배되지 않는 범위 내에서 본 약관을 개정할 수 있습니다.<br>
							3.  회사가 본 약관을 개정하는 경우에는 개정사유 및 적용일자를 명시하여 현행 약관과 함께 적용일자 7일전부터 적용일 전일까지 제 1항의 방법으로 공지합니다. 다만, 회원의 권리 또는 의무에 관한 중요한 규정의 변경은 그 적용일자 30일전부터 적용일 이후 상당한 기간 동안 서비스 초기화면에 공지하고, 전자우편으로 통지 합니다.<br>
							4.  회사가 전항에 따라 회원에게 공지 또는 통지일로부터 개정약관 시행일 7일 후까지 거부의사를 표시하지 아니하면 승인한 것으로 본다는 뜻을 명확하게 고지하였음에도 의사표시가 없을 경우에는 변경된 약관을 승인한 것으로 봅니다.<br>
							5.  회원은 변경된 약관에 동의하지 아니하는 경우 서비스의 이용을 중단하고 이용 계약을 해지할 수 있습니다.</p>
							<b>제 4 조 (약관 외 준칙)</b>
							<p>회사는 필요한 경우 개별 서비스에 대하여 별도의 이용약관 및 운영원칙(이하 “서비스별 안내”라 함)을 정할 수 있으며, 해당 내용이 이 약관과 상충되는 경우에는 서비스별 안내의 내용을 우선하여 적용합니다.</p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<b style="color: red;">제 2 장 이용계약 체결</b>
						<div class="explainBox">
							<b>제 5 조 (이용계약의 성립)</b>
							<p>서비스 이용계약은 회원이 되고자 하는 자(이하 “가입신청자”)가 이 약관 및 “개인정보취급방침”에 대하여 동의를 한 다음 회사가 정한 신청양식을 작성하여 회원가입신청을 하고 회사가 이를 승낙함으로써 성립됩니다.</p>
							<b>제 6 조 (서비스 이용 신청)</b>
							<p>1.  회원이 신청 양식에 기재하는 회원정보는 이용고객의 실제 정보인 것으로 간주되고, 실제정보를 입력하지 않은 회원은 법적인 보호를 받을 수 없으며 서비스 이용에 제한을 받을 수 있습니다.<br>
							2.  회사는 회원이 등록한 정보에 대하여 본인의 정보 여부 확인 조치를 할 수 있으며, 회원은 회사의 확인 조치에 대하여 적극 협력합니다. 만일 이를 준수하지 아니할 경우 회사는 회원이 등록한 정보가 허위정보로 간주할 수 있습니다.<br>
							3.  만 14세 미만의 아동이 서비스를 이용하기 위해서는 회사가 요구하는 법정대리인의 동의 절차를 거쳐야 합니다.<br>
							4.  타인의 개인정보를 도용하는 등 부정한 목적과 방법으로 이용신청을 한 회원의 아이디는 사전 통지없이 삭제될 수 있으며, 당해 회원은 관계법령에 따라 처벌을 받을 수 있습니다.</p>
							<b>제 7 조 (개인정보의 보호 및 사용)</b>
							<p>회사는 관계법령이 정하는 바에 따라 회원의 개인정보를 보호하기 위해 노력합니다. 개인정보의 보호 및 사용에 대해서는 관련법 및 회사의 개인정보취급방침이 적용됩니다.</p>
							<b>제 8 조 (이용 신청의 승낙과 제한)</b>
							<p>1. 회사는 제5조, 제6조의 규정에 의한 가입신청자의 신청에 대하여 업무 수행상 또는 기술상 지장이 없는 경우에 서비스 이용을 승낙함을 원칙으로 합니다.<br><br>
							2. 회사는 다음 각호에 해당하는 신청에 대하여는 승낙을 보류할 수 있습니다.<br>
							① 서비스 제공을 위한 설비 용량에 현실적인 여유가 없는 경우<br>
							② 서비스를 제공하기에는 기술적으로 문제가 있다고 판단되는 경우<br>
							③ 기타 회사가 재정적, 기술적으로 필요하다고 인정되는 경우<br><br>
							3. 회사는 다음 각 호에 해당하는 신청에 대하여는 승낙을 하지 않거나, 사후에 이용 계약을 해지 할 수 있습니다.<br>
							① 이 약관에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 단 회사의 회원 재가입 승낙을 얻는 경우에는 예외로 함.<br>
							② 신청양식을 허위로 기재한 경우<br>
							③ 신청양식의 기재사항을 누락하거나 오기하여 신청하는 경우<br>
							④ 법령위반 또는 사회의 안녕질서 또는 미풍양속을 저해할 목적으로 신청하는 경우<br>
							⑤ 부정한 용도로 본 서비스를 이용하고자 하는 경우</p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<b style="color: red;">개인정보 수집 및 이용 동의</b>
						<div class="explainBox">
							<p>■ 수집하는 개인정보의 항목 및 수집방법<br><br>
							1) 회원가입 시 개인정보 수집항목<br>
							① 회사는 회원가입, 원활한 고객상담, 각종 서비스의 제공을 위해 최초 회원가입 시 아래와 같은 개인정보를 수집하고 있습니다. 단, 개인정보 수집항목은 서비스에 따라 상이할 수 있습니다.<br>
							[일반회원 가입 시]<br>
							- 필수 및 선택 항목 : 아이디, 비밀번호, 이름, 닉네임, 성별, 생년월일, 이메일, 휴대폰번호, 주소, 본인확인정보(본인확인을 한 경우, 아이핀 회원은 아이핀 번호)<br>
							[법인회원 가입 시]<br>
							- 필수 및 선택 항목 : 아이디, 비밀번호, 법인명, 닉네임, 사업자번호, 대표자명, 회사주소, 회사업종, 담당자 이름, 담당자 부서명, 담당자 직책, 담당자 본인확인정보(본인확인을 한 경우, 아이핀 회원은 아이핀 번호), 담당자 이메일, 담당자 연락처<br>
							② 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
							- IP ADDRESS, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록<br>
							③ 모바일 서비스 이용과정에서 아래와 같은 정보들이 수집될 수 있습니다.<br>
							- 이동통신사 정보, 단말기 고유번호, 위치 정보(위치기능 이용 시)<br>
							④ 부가 서비스 및 맞춤식 서비스 이용 또는 이벤트 응모 과정에서 해당 서비스의 이용자에 한해서만 회원가입과 관계없이 개인정보 추가 수집에 동의를 받은 경우 아래와 같은 정보들이 수집될 수 있습니다.<br>
							- 이름, 주소, 전화번호, 이메일, 회사정보<br>
							⑤ 유료 서비스 이용 과정에서 아래와 같은 결제 정보들이 수집될 수 있습니다.<br>
							- 신용카드 결제 시 : 카드사명, 결제승인번호 등<br>
							- 휴대전화 결제 시 : 휴대폰번호, 결제승인번호 등<br>
							- 계좌이체 시 : 은행명, 결제승인번호 등<br>
							- 상품권 이용 시 : 상품권 번호<br>
							⑥ 기타 서비스 추가정보 수집항목 : 학교정보(univ.edaily.co.kr), 투자정보(on.edaily.co.kr), MAC ADDRESS(이데일리마켓포인트 등 금융단말서비스 이용 시)<br>
							⑦ 독립회원 운영 서비스 : 본드웹, 마켓포인트, 마켓in, VIP REPORT, eMONETA, Wintrio 모바일, 해외거래소 실시간 시세서비스(GTS, MGTS스마트글로벌, REALTICK, LME-UP, 글로벌와치)<br>
							⑧ 맞춤형 서비스를 위한 정보<br>
							- 개인 맞춤 서비스를 통해 개인 및 그룹별로 제공하기 위한 자료<br>
							- 이용자 선호도를 파악해 이용자가 선호하는 정보(광고정보 포함)를 제공하기 위한 자료<br>
							2) 개인정보 수집방법<br>
							회사는 다음과 같은 방법으로 개인정보를 수집합니다.<br>
							① 유/무선 홈페이지 및 어플리케이션, 서면양식, 이메일, 전화, 팩스, 상담 게시판, 이벤트 응모, 배송 요청<br>
							② 협력회사로부터의 제공<br>
							③ 생성정보 수집 툴을 통한 수집<br><br>
							<br>
							■ 개인정보의 수집 및 이용목적<br><br>
							회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.<br>
							1) 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산<br>
							콘텐츠 제공, 구매 및 요금 결제, 물품배송 또는 청구지 등 발송, 금융거래 본인 인증 및 금융 서비스, 요금 추심 등<br>
							2) 회원 관리<br>
							회원제 서비스 이용에 따른 본인확인, 개인 식별, 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달, 분쟁 조정을 위한 기록보존, 회원탈퇴 의사 확인 등<br>
							3) 마케팅 및 광고에의 활용<br>
							신규 서비스 개발 및 맞춤 서비스 제공, 인구통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 주요 뉴스 및 투자 정보 제공, 이벤트 등 광고성 정보 제공, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계 등<br>
							4) 모바일 서비스 기능 제공<br>
							앱 푸시 알림, 이벤트 등 광고성 정보 제공 등<br><br>
							<br>
							■ 개인정보의 보유 및 이용기간<br><br>
							회사는 회원이 탈퇴의사를 밝히기 전까지 회원정보를 보유합니다. 그러나 회원탈퇴를 요청하거나 개인정보의 수집 및 이용에 대한 동의를 철회하는 경우, 해당 정보를 지체 없이 파기합니다.<br>
							단, 다음의 정보에 대해서는 아래의 이유로 명시한 기간 동안 보존합니다.<br>
							1) 회사 내부 방침에 의한 정보보호 사유<br>
							- 부정 이용 기록 / 보존 이유 : 부정 이용 방지 / 보존 기간 : 1년<br>
							2) 관계법령에 의한 정보보호 사유<br>
							상법, 전자상거래 등에서의 소비자보호에 관한 법률 등 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다. 이 경우 회사는 보관하는 정보를 그 보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.<br>
							- 표시.광고에 관한 기록 / 보존 이유 : 전자상거래 등에서의 소비자보호에 관현 법률 / 보존 기간 : 6개월<br>
							- 계약 또는 청약철회 등에 관한 기록 / 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 / 보존 기간 : 5년<br>
							- 대금결제 및 재화 등의 공급에 관한 기록 / 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 / 보존 기간 : 5년<br>
							- 전자 금융 거래에 관한 기록 / 보존 이유 : 전자금융거래법 / 보존 기간 : 5년<br>
							- 소비자의 불만 또는 분쟁처리에 관한 기록 / 보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률 / 보존 기간 : 3년<br>
							- 웹사이트 방문기록 / 보존 이유 : 통신비밀보호법 / 보존 기간 : 3개월<br><br>
							<br>
							■ 개인정보의 파기 절차 및 방법<br><br>
							이용자의 개인정보는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 회사의 개인정보 파기절차 및 방법은 다음과 같습니다.<br>
							1) 파기절차<br>
							- 회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기됩니다. 별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유 목적(보유 및 이용기간 참조) 이외의 다른 목적으로 이용되지 않습니다.<br>
							2) 파기방법<br>
							- 종이에 출력된 개인정보는 분쇄기로 분쇄하거나 소각을 통해 파기합니다.<br>
							- 전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.</p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<b style="color: red;">제3자 제공 동의</b>
						<div class="explainBox">
							<b></b>
							<p>본 도서관은 개인정보를 홍보·마케팅 목적으로 이용하는 경우「개인정보보호법」등에 따라 사전 에 이용자에게 동의를 얻고 있으며, 동의 이후에라도 이용자의 의사에 따라 동의를 철회 할 수 있습니다.
							개인정보 홍보·마케팅 목적에 대한 동의를 하시는 경우 그린피 할인 안내, 맞춤서비스 제공, 각종 이벤트 우대정보 및 참여기회를 제공 받으실 수 있습니다.
							동의하지 아니한 경우에도 회원가입이 가능하며, 서비스 이용에 따른 제한은 없습니다.</p>
						</div>
					</td>
				</tr>
				<tr>
					<th>
						이용약관 및 개인정보 수집/활용에 모두 동의합니다. <input type="checkbox" style="width: 18px; vertical-align: bottom;" id="agreeChk" value="off"><br><br><br><br>
					</th>
				</tr>
				<tr><td></td></tr>
			</table><br>
			<div align="center">
				<button type="button" onclick="agreeChk()">신청</button>
			</div> <br>
		</div>
	</c:if>
</div>
<%@ include file="../include/footer.jsp" %>
</body>
</html>

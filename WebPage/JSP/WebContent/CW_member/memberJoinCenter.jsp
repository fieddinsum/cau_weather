<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	int memberType = Integer.parseInt((String)request.getParameter("memberType")); 		//사용자(0), 교직원(1), 공사관리자(2)
	String memberTypeString = null;
	switch(memberType){
		case 0:
			memberTypeString = "일반사용자";
			break;
		case 1:
			memberTypeString = "교직원";
			break;
		case 2:
			memberTypeString = "공사관계자";
			break;
	}
%>
<!--start wrapper-->
<section class="wrapper">
    <div class="container">
        <div class="row sub_content">
        	<div class="col-lg-6 col-md-6 col-sm-6">
				<div class="dividerHeading">
					<h4>
						<span>Register Agreement</span>
					</h4>
				</div>
				<p>개인정보보호법 시행령에 따른 개인정보취급방침 동의</p>
				<form id="contactForm" action="" novalidate="novalidate">
					<div class="row">
						<div class="form-group">
							<div class="col-md-12">
								<textarea id="agree" class="form-control" id="message" rows="19" cols="50" data-msg-required="Please enter your message." readonly>
제 1 조 (목적)
1. "회사"는 이 약관의 내용을 "회원"이 쉽게 알 수 있도록 서비스 초기 화면에 게시합니다.
2. 회사는 온라인 디지털콘텐츠산업 발전법, 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제에 관한 법률, 소비자기본법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.
3. 회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 다만, 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다. 

제 2 조 (회원가입)
1. 이용자는 회사가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관과 개인정보처리방침에 동의한다는 의사 표시를 함으로써 회원가입을 신청합니다.
2. 본 이용약관에 대한 동의는 회원가입 당시 해당 웹 사이트의 “동의” 버튼을 누르거나 “확인” 등에 체크하는 방법을 취한 경우 본 약관에 동의한 것으로 간주합니다.
3. 회원가입은 반드시 실명으로만 가입할 수 있으며, 회사는 실명확인조치를 할 수 있습니다. 실명으로 등록하지 않은 이용 고객은 일체의 권리를 주장할 수 없습니다.

제 3 조 (개인정보의 보호 및 사용)
회사는 관계법령이 정하는 바에 따라 회원 등록정보를 포함한 회원의 개인정보를 보호하기 위해 노력합니다. 회원 개인정보의 보호 및 사용에 대해서는 관련법령 및 회사의 개인정보처리방침이 적용됩니다. 단, 회사의 공식사이트이외의 웹에서 링크된 사이트에서는 회사의 개인정보처리방침이 적용되지 않습니다. 또한 회사는 이용자의 귀책사유로 인해 노출된 정보에 대해서 일체의 책임을 지지 않습니다.

제 4 조 (회사의 의무)
1. "회사"는 관련법과 이 약관이 금지하거나 미풍양속에 반하는 행위를 하지 않으며, 계속적이고 안정적으로 "서비스"를 제공하기 위하여 최선을 다하여 노력합니다.
2. "회사"는 "회원"이 안전하게 "서비스"를 이용할 수 있도록 개인정보 보호를 위해 보안시스템을 갖추어야 하며 개인정보취급방침을 공시하고 준수합니다.
3. "회사"는 서비스이용과 관련하여 "회원"으로부터 제기된 의견이나 불만이 정당하다고 인정할 경우에는 이를 처리하여야 합니다. "회원"이 제기한 의견이나 불만사항에 대해서는 게시판을 활용하거나 전자우편 등을 통하여 "회원"에게 처리과정 및 결과를 전달합니다. 

제 5 조 (서비스 이용제한)
1. 회사는 회원이 서비스 이용내용에 있어서 다음 각 호에 해당하는 경우 서비스 이용을 제한할 수 있습니다.
가. 미풍양속을 저해하는 비속한 ID 및 별명 사용
나. 타 이용자에게 심한 모욕을 주거나, 서비스 이용을 방해한 경우
다. 기타 정상적인 서비스 운영에 방해가 될 경우
라. 정보통신 윤리위원회 등 관련 공공기관의 시정 요구가 있는 경우
2. 상기 이용제한 규정에 따라 서비스를 이용하는 회원에게 서비스 이용에 대하여 별도 공지 없이 서비스 이용의 일시정지, 초기화, 이용계약 해지 등을 불량이용자 처리규정에 따라 취할 수 있습니다.

부 칙
(시행일) 본 약관은 2016년 5월 15일부터 적용됩니다.
								</textarea>
							</div>
						</div>
					</div>
				</form>
			</div>
            <div class="col-lg-6 col-sm-6">
                <div class="dividerHeading">
                    <h4><span>Member Register (<%=memberTypeString %>)</span></h4>
                </div>
                <form id="registerform" method="post" name="registerform" action="memberJoinProc.jsp">
                    <div class="form-group">
                        <input type="text" class="form-control" name="m_id" placeholder="ID">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="m_pass" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" placeholder="Password Check">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="m_name" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="m_nickname" placeholder="Nickname">
                    </div>
					<div class="form-group">
                        <input type="text" class="form-control" name="m_telephone" placeholder="Telephone (010-0000-0000)">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="m_email" placeholder="E-mail">
                    </div>
                    <div class="form-group">
                    	<input type="checkbox" id="m_agree">약관을 모두 숙지하였으며, 이에 동의합니다.
                    	<input type="hidden" name="m_type" value="<%=memberType %>">
                        <input type="submit" class="btn btn-default btn-lg button pull-right" value="Register an account">
                    </div>
                </form>
            </div>
		</div>
    </div>
</section>
<!--end wrapper-->
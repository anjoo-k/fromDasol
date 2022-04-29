<%@page import="java.util.Map"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="dao.LessonDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	
	//전체 체크박스 선택/해제
	$("#allcheck").click(function() {
		
		var a=$(this).is(":checked");
		if(a) 
		{
			$(".idx").attr("checked",true); 
		} else {
			$(".idx").attr("checked",false);
		}
	});
		
	//상품클릭시 상세페이지로 이동
	$("div.cartlesson").click(function() {
		//태그에 넣어둔 lnum
		var lnum=$(this).attr("lnum");
		location.href='index.jsp?boramMain=detail/detailpage.jsp?lnum='+lnum;
	});
	
	
	
	//체크한 후 삭제버튼으로 삭제하는 이벤트
	$("#btncartdel").click(function(){
		
		//클릭한 상품 개수(null값 있는지) 확인
		var scnt=$(".idx:checked").length;
		//alert(scnt);
		
		if(scnt==0){
			alert("먼저 삭제할 상품을 선택하세요.");
			return; //함수 종료
		}
		
		$(".idx:checked").each(function(i,element) {
			
			var idx = $(this).attr("idx");
			
			//선택한 장바구니 모두 삭제
			$.ajax({
				type: "get",
				url: "cart/cartdelete.jsp",
				dataType: "html",
				data: {"idx":idx},
				success: function(){
					//새로고침
			    	location.reload(); 
				}
			});
			
		});		
	});
});

</script>
</head>
<% 
//로그인한 email얻기
String email=(String)session.getAttribute("email");

//dao
LessonDao dao=new LessonDao();

//장바구니 목록
List<HashMap<String,String>> list=dao.getCartList(email);
%>
<body>

<div class="myCart">
	<form action="" style="width:970px;">
		<table class="myCart">
			<caption>장바구니</caption>
			<tr>
				<th>
					<input type="checkbox" id="allcheck">
				</th>
				<th class="className">
					<span>클래스 제목</span>
				</th>
				<th class="cartPrice">
					<span>금액</span>
				</th>
			</tr>
			<tbody>
			<% 
			int allmoney=0;
			NumberFormat nf = NumberFormat.getCurrencyInstance();
			
			for(int i=0;i<list.size();i++)
			{
				HashMap<String,String> map=list.get(i);
				int price = Integer.parseInt(map.get("price"));
				%>
				<tr>
					<td class="mycartCb">
						<input type="checkbox" name="idx" idx="<%= map.get("cnum") %>" class="idx" checked="checked">
						
					</td>
					<td>
						<div class="cartlesson" lnum="<%= map.get("lnum") %>">
							<img src="savePhoto/<%= map.get("photo") %>" class="lesphoto">
							<span class="cartTitle"><%= map.get("title") %></span>
						</div>
					</td>
					<td class="cartPrice">
						<span><%= nf.format(map.get("price")) %>원</span>
					</td>
					<% allmoney+=price; %>
				</tr>
				
				  <%}
				  %>

			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						<div class="allPrice">총 결재금액:<span><%= nf.format(allmoney) %></span>원</div>
					</td>
					
				</tr>			
				<tr>
					<td colspan="2" class="btnDel">
						<button id="btncartdel" ><span>선택상품삭제</span></button>
					</td>
					<td>
						<button class="btnPay"><span>결제하기</span></button>
					</td>
				</tr>
			</tfoot>
		</table>
	</form>


</div>

</body>
</html>
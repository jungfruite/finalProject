<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:set var="pageMaker" value="${dataMap.pageMaker }" />
<c:set var="userList" value="${dataMap.userList}" />
<c:set var="cri" value="${pageMaker.cri }" />

<head>
<!-- sweetAlert -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!-- handlebars -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"  ></script>
	<style>
		* {
			font-size: 14px;
		}
		
		label {
			margin-bottom: 0;
		}
		
		div.table1 {
			max-height: 300px;
			overflow-y: auto;
		}	

		div.table2 {
			max-height: 160px;
			overflow-y: scroll;
		}
		
		div.table3 {
			max-height: 400px;
			overflow-y: scroll;  
		}
		
		.table-head-fixed th {
			padding-top: 0.3em;
			padding-bottom: 0.3em;
		}
		.table-head-fixed td {
			padding-top: 0.3em;
			padding-bottom: 0.3em;
		}
		
 		.card-body.p-0 .table thead>tr>th:first-of-type {
			padding-left: 12px;
		}
 		.card-body.p-0 .table tbody>tr>td:first-of-type {
			padding-left: 12px;
		}
		.card-body.p-0 .table thead>tr>th:last-of-type {
			padding-right: 12px;
		}
 		.card-body.p-0 .table tbody>tr>td:last-of-type {
			padding-right: 12px;
		}
		
		
		th, td {
			text-align: center;
		}
		#tb1 td, #td1 th {
			padding:0;
		}
		
		.table-hover:hover tbody tr:hover td {
   			 background-color: #395d83;
   			 color: white;
		}
		
		.alert {
			text-align: center;
		}
		.alert {
			font-size: 15px;
		}
		
		.alert-dismissible {
	    	padding-right: 0;
	    	padding-left: 0;
		}
		
	.stepper-wrapper {
	  margin-top: auto;
	  display: flex;
	  justify-content: space-between;
	  margin-bottom: 20px;
	}
	.stepper-item {
	  position: relative;
	  display: flex;
	  flex-direction: column;
	  align-items: center;
	  flex: 1;
	
	  @media (max-width: 768px) {
	    font-size: 12px;
	  }
	}
	
	.stepper-item::before {
	  position: absolute;
	  content: "";
	  border-bottom: 2px solid #ccc;
	  width: 100%;
	  top: 20px;
	  left: -50%;
	  z-index: 2;
	}
	
	.stepper-item::after {
	  position: absolute;
	  content: "";
	  border-bottom: 2px solid #ccc;
	  width: 100%;
	  top: 20px;
	  left: 50%;
	  z-index: 2;
	}
	
	.stepper-item .step-counter {
	  position: relative;
	  z-index: 5;
	  display: flex;
	  justify-content: center;
	  align-items: center;
	  width: 40px;
	  height: 40px;
	  border-radius: 50%;
	  background: #ccc;
	  margin-bottom: 6px;
	}
	
	.stepper-item.active {
	  font-weight: bold;
	}
	
	.stepper-item.completed .step-counter {
	  background-color: #26ff7b;
	  color : white;
	}
	
	.stepper-item.completed::after {
	  position: absolute;
	  content: "";
	  border-bottom: 2px solid #26ff7b;
	  width: 100%;
	  top: 20px;
	  left: 50%;
	  z-index: 3;
	}
	
	.stepper-item:first-child::before {
	  content: none;
	}
	.stepper-item:last-child::after {
	  content: none;
	}
	</style>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<section class="content-header">
   <div class="container-fluid">
        <div class="row md-2">
           <div class="col-sm-6" style="display: flex;">
              <h1 data-userId="${loginUser.id }" >???????????????</h1>
              <!--                ??????????????? ?????? -->
               <c:if test="${fn:indexOf(favoriteMenuListStr, '???????????????') != -1}">
                  <i id="star" class="fa-solid fa-star on fa-2x" ></i>
               </c:if>
               
<!--                ??????????????? ???????????? ?????? -->
               <c:if test="${fn:indexOf(favoriteMenuListStr, '???????????????') == -1}">
                  <i id="star" class="fa-regular fa-star off fa-2x" ></i>
               </c:if>
                            
           </div>
         
        </div>
   </div>
</section>
<section class="content">
  <div class="container-fluid" style="padding-left: 20px; padding-right: 20px;">
   <div class="card card-dark card-outline" style="height: 89vh;">
		<div class="card-header p-0 border-bottom-0">
		</div>
		<div class="card-body" style="padding-top: 0px;">
			<div class="tab-content" id="custom-tabs-four-tabContent" style="padding-top: 5px;">
				<div class="tab-pane fade show active" id="custom-tabs-four-home" role="tabpanel" aria-labelledby="custom-tabs-four-home-tab">
					<div class="row">
						<div class="col-sm-1">
						</div>
						<div class="col-sm-10">
							<div class="row">
								<div class="col-sm-12" style="padding-top: 10px;">
									<div class="stepper-wrapper">
									  <div class="stepper-item completed">
									    <div class="step-counter">
									    	<i class="fa-solid fa-1"></i>
									    </div>
									    <div class="step-name">?????????????????????</div>
									  </div>
									  <div id="" class="stepper-item second">
									    <div class="step-counter">
										    <i class="fa-solid fa-2"></i>
									    </div>
									    <div class="step-name">?????????????????????</div>
									  </div>
									  <div id="" class="stepper-item third">
									    <div class="step-counter">
										    <i class="fa-solid fa-3"></i>
									    </div>
									    <div class="step-name">??????????????????</div>
									  </div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-1">
						</div>
					</div>
					<div class="row">
					<div class="col-sm-12">
				<div class="card card-dark card-outline">
				<div class="card-header">
				<div class="row" style="display: flex; align-items: center;">
					<div class="col-sm-4">
						<h3 class="card-title">
							<i class="nav-icon fas fa-search"></i> &nbsp;&nbsp; ????????? ?????? ?????? ?????????
						</h3>
					</div>
					<div class="col-sm-2">
					</div>
					<div class="col-sm-3" style="color:#395d83; text-align: right;">
						?????? : <span class="tableSearchListCount"></span>???
					</div>
					<div class="col-sm-3">
							<div class="input-group">
									<select id="messageCategory" class="form-control form-control-sm" onchange="changeType();" style="width: 20px;">
										<option value="t">??????</option>
										<option value="s">??????</option>
										<option value="p">?????????</option>
										<option value="m">??????</option>
									</select> 
									<input type="text" id="searchKeyWord" class="form-control form-control-sm" placeholder="?????????">
									<div class="input-group-append">
										<button type="button" class="btn btn-dark btn-sm" onclick="changeType();">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
						</div>
					</div>
				</div>
				<div class="card-body" style="padding-top: 5px; height:23vh">
						<div id="tableSearchListDiv" class="row table2">
							<table id="tableSearchList" class="table table-hover table-bordered table-head-fixed text-center" >					
									<thead>
										<tr>
											<th style="width:10%;">????????????</th>
											<th style="width:10%;">??????</th>
											<th style="width:10%;">?????????</th>
										</tr>
									</thead>
									<tbody id="tbodyUp">	
									<c:if test="${empty userList}">
										<tr>
											<td colspan="8" class="text-center">
											?????? ????????? ????????????.
											</td>
										</tr>
									</c:if>
									<c:if test="${!empty userList}">
										<c:forEach items="${userList}" var="user" varStatus="status">
											<tr class="upclickableTr" style="cursor: pointer;">
												<c:if test="${user.category eq 's'}">
												<td>??????</td>
												</c:if>
												<c:if test="${user.category eq 'p'}">
												<td>??????</td>
												</c:if>
												<c:if test="${user.category eq 'm'}">
												<td>??????</td>
												</c:if>
												<td style="cursor: pointer;"><strong>${user.name }</strong></td>
												<td>${user.hp }</td>
												<td class="deleteBtn" style="display: none; width:5%;"><button type="button" class="btn btn-danger btn-xs" onclick="deleteTrBtn(this);">??????</button></td>
											</tr>
										</c:forEach>
									</c:if>	
									</tbody>
							</table>
						</div>
				</div>
   			</div>
						</div>
					</div>
					<!-- ????????? ????????? ????????? ?????? ??? ?????? ??????  -->
					<div class="row">
					<div class="col-sm-6"></div>
					<div class="row col-sm-6" style="display: flex; justify-content: space-between;">
							<div class="col-sm-4"></div>
							<div class="col-sm-2" >
								<button id="moveDown" class="btn btn-block btn-dark btn-flat"><i class="fa-solid fa-angle-down"></i></button>
							</div>
							<div class="col-sm-2" >
								<button id="moveAllDown" class="btn btn-block btn-dark btn-flat"><i class="fa-solid fa-angles-down"></i></button>
							</div>	
							<div class="col-sm-4"></div>
					</div>
					</div>
					<div class="row" style="padding-top: 20px;">
					
						<div class="col-sm-6" >
								<div class="card card-outline card-dark">
									<div class="card-header">
									<div class="row" style="display: flex; align-items: center;">
										<div class="col-sm-5">
										<h3 class="card-title">
										<i class="fas fa-solid fa-user-group"></i>
											&nbsp;
											?????? ??????
										</h3>
										</div>
										<div class="col-sm-7" style="color:#395d83; text-align: right;">
										<button type="button" class="btn btn-dark btn-sm" onclick="newGroup();">+ ?????????</button>
										</div>
									</div>
									</div>
									<div class="card-body" style="height:23vh">
										<div id="groupListTableDiv" class="row table2" >
													
											<table id="groupListTable" class="table table-hover table-bordered table-head-fixed text-center" >					
												<thead>
													<tr>
														<th style="width:30%;">?????????</th>
														<th style="width:20%;">??????/??????</th>
														<th style="width:15%;">??????</th>
													</tr>
												</thead>
												<tbody>	
												
												</tbody>
											</table>
											
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-sm-6" >
								<div class="card card-outline card-dark">
									<div class="card-header">
									<div class="row" style="display: flex; align-items: center;">
										<div class="col-sm-5">
										<h3 class="card-title">
										<i class="fas fa-solid fa-envelope"></i>
											&nbsp;
											????????? ?????? ??????
										</h3>
										</div>
										<div class="col-sm-7" style="color:#395d83; text-align: right;">
										?????? : <span class="tableSendListCount"></span>???&nbsp;&nbsp;&nbsp;&nbsp;
										<button type="button" class="btn btn-dark btn-sm" onclick="groupSave();">?????? ??????</button>
										<button type="button" class="btn btn-dark btn-sm" onclick="flushList();">?????? ?????????</button>
										</div>
									</div>
									</div>
									<div class="card-body" style="height:23vh">
										<div id="tableSendListDiv" class="row table2" >
													
											<table id="tableSendList" class="table table-bordered table-head-fixed text-center" >					
												<thead>
													<tr>
														<th style="width:8%;">????????????</th>
														<th style="width:8%;">??????</th>
														<th style="width:5%;">?????????</th>
														<th class="none" style="display: none;"></th>
														<th class="none" style="display: none;"></th>
														<th class="none" style="display: none;"></th>
														<th style="width:5%;">??????</th>
													</tr>
												</thead>
												<tbody id="tbodyDown">	
														
												</tbody>
											</table>
											
										</div>
									</div>
								</div>
							</div>
					</div>
					<div class="row">
						<div class="col-sm-1">
						</div>
						<div class="col-sm-10"></div>
						<div class="col-sm-1">
						<button id="firstNextBtn" class="btn btn-block btn-dark">??????</button>
						</div>
					</div>
				</div>
<!-- ????????? ??? ??? -->
<!-- ????????? ??? ?????? -->
				<div class="tab-pane fade" id="custom-tabs-four-profile" role="tabpanel" aria-labelledby="custom-tabs-four-profile-tab">
					<div class="row">
						<div class="col-sm-1">
						</div>
						<div class="col-sm-10">
							<div class="row">
								<div class="col-sm-12" style="padding-top: 10px;">
									<div class="stepper-wrapper">
									  <div class="stepper-item completed">
									    <div class="step-counter">
									    	<i class="fa-solid fa-1"></i>
									    </div>
									    <div class="step-name">?????????????????????</div>
									  </div>
									  <div id="" class="stepper-item second">
									    <div class="step-counter">
										    <i class="fa-solid fa-2"></i>
									    </div>
									    <div class="step-name">?????????????????????</div>
									  </div>
									  <div id="" class="stepper-item third">
									    <div class="step-counter">
										    <i class="fa-solid fa-3"></i>
									    </div>
									    <div class="step-name">??????????????????</div>
									  </div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-sm-1">
						</div>
					</div>
					<div class="row">
						<div class="col-sm-5">
								<div class="card card-outline card-dark" >
						           <div class="card-header">
						               <h3 class="card-title">
											<i class="fas fa-solid fa-envelope-open-text"></i>
											&nbsp;
											?????? ??????
									   </h3>
						            </div>
						            <div class="card-body">
						            	<div id="templateListTableDiv" class="row table2">
						            		<table id="templateListTable" class="table table-hover table-bordered table-head-fixed text-center">
						            		<thead>
													<tr>
														<th>?????? ??????</th>
														<th>??????</th>
													</tr>
												</thead>
												<tbody>	
													
												</tbody>
											</table>
						            	</div>
						            </div>
						         </div>
<!-- 						         ?????? ?????? ??????  -->
						         <div class="card card-outline card-dark" style="padding-top: 5px;">
						           <div class="card-header row">
						           		<div class="col-sm-8">
							               <h3 class="card-title">
												<i class="fas fa-solid fa-envelope"></i>
												&nbsp;
												?????? ?????? ??????
										   </h3>
									   </div>
									   <div class="col-sm-4" style="color:#395d83; text-align: right;">
									   		?????? : <span class="tableSendListCount"></span>???
									   </div>
						            </div>
						            <div class="card-body">
						            	<div id="sendMessageConfirmList1" class="row table2">
						            	
						            	</div>
						            </div>
						         </div>
				   		</div>
					  <div id="templateSelectArea" class="col-sm-7">
						<div class="card card-outline card-dark" style="height: 63vh;">
				           <div class="card-header">
				           <div class="row" style="display: flex; align-items: center;">
										<div class="col-sm-4">
										<h3 class="card-title">
										<i class="fas fa-solid fa-comment-sms"></i>
											&nbsp;????????? ??????
							  			</h3>
										</div>
										<div class="col-sm-4">
										</div>
										<div class="col-sm-4" style="text-align: right;">
										<button type="button" class="btn btn-dark btn-sm" onclick="registDirect();">?????? ??????</button>
										<button type="button" class="btn btn-dark btn-sm" onclick="templateSave();">??????????????????</button>
										</div>
									</div>
				            </div>
				            <div class="card-body" style="height: 54vh;">
				            	<div id="sendMessageFormTableDiv" class="row" >
				            		<table id="sendMessageFormTable" class="table table-bordered">
												<tr>
													<th class="noHover" style="width: 10%; vertical-align: center;">?????? ??????</th>
													<td class="noHover" style="width: 30%; vertical-align: center;">
														<input class="form-control" disabled="disabled" id="templateName" type="text" placeholder="?????? ?????? ?????? ??????">
													</td>
												</tr>
												<tr>
													<th class="noHover" style="width: 10%; vertical-align: center; ">?????????</th>
													<td class="todayInputTd" id="messageSendDate">
													</td>
												</tr>
												<tr>
													<th class="noHover" style="width: 10%; vertical-align: center;">??????</th>
													<td class="noHover" style="width: 30%; vertical-align: center;">
														<input class="form-control" disabled="disabled" id="templateTitle" type="text" placeholder="?????? ??????">
													</td>
												</tr>
												<tr>
													<th class="noHover" style="vertical-align: center;" >??????<br>(<span id="nowByte">0</span>/90bytes)</th>
													<td class="noHover"><textarea id="templateContent" required rows="10" class="form-control" style="resize: none;" disabled="disabled" onkeyup="fn_checkByte(this)"></textarea></td>
												</tr>
									</table>
				            	</div>
				            </div>
				         </div>
					  </div>
					</div>
					<div class="row" style="padding-top: 39px;">
						<div class="col-sm-1">
						<button id="secondPrevBtn" class="btn btn-block btn-secondary">??????</button>
						</div>
						<div class="col-sm-10"></div>
						<div class="col-sm-1">
						<button id="secondNextBtn" class="btn btn-block btn-dark">??????</button>
						</div>
					</div>
				</div>
<!-- 				????????? ??? ??? -->
<!-- 				????????? ??? ?????? -->
				<div class="tab-pane fade" id="custom-tabs-four-third" role="tabpanel" aria-labelledby="custom-tabs-four-info-tab">
				<div class="row">
					<div class="col-sm-1">
					</div>
					<div class="col-sm-10">
						<div class="row">
							<div class="col-sm-12" style="padding-top: 10px;">
								<div class="stepper-wrapper">
								  <div class="stepper-item completed">
								    <div class="step-counter">
								    	<i class="fa-solid fa-1"></i>
								    </div>
								    <div class="step-name">?????????????????????</div>
								  </div>
								  <div id="" class="stepper-item second" >
								    <div class="step-counter">
									    <i class="fa-solid fa-2"></i>
								    </div>
								    <div class="step-name">?????????????????????</div>
								  </div>
								  <div id="" class="stepper-item third">
								    <div class="step-counter">
									    <i class="fa-solid fa-3"></i>
								    </div>
								    <div class="step-name">??????????????????</div>
								  </div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-1">
					</div>
				</div>
<!-- 				?????? ?????? -->
				<div class="row">
						<div class="col-sm-5">
<!-- 						         ?????? ?????? ??????  -->
						         <div class="card card-outline card-dark" style="padding-top: 5px; height: 63vh;">
						           <div class="card-header row">
						              <div class="col-sm-8">
							               <h3 class="card-title">
												<i class="fas fa-solid fa-envelope"></i>
												&nbsp;
												?????? ?????? ??????
										   </h3>
									   </div>
									   <div class="col-sm-4" style="color:#395d83; text-align: right;">
									   		?????? : <span class="tableSendListCount"></span>???
									   </div>
						            </div>
						            <div class="card-body">
						            	<div id="sendMessageConfirmList2" class="row table3">
						            	
						            	</div>
						            </div>
						         </div>
				   		</div>
					  <div id="lessonSelectArea" class="col-sm-7">
						<div class="card card-outline card-dark" style="height: 63vh;">
				           <div class="card-header">
				           <div class="row" style="display: flex; align-items: center;">
										<div class="col-sm-4">
										<h3 class="card-title">
										<i class="fas fa-solid fa-comment-sms"></i>
											&nbsp;????????? ??????
							  			</h3>
										</div>
										<div class="col-sm-4">
										</div>
										<div class="col-sm-4" >
										</div>
									</div>
				            </div>
				            <div class="card-body" style="height: 54vh;">
				            	<div id="lessonTimeRegistWeekDayForm" class="row" >
				            		<table id="lessonRegistFormTable" class="table table-bordered">
												<tr>
													<th class="noHover" style="width: 20%; vertical-align: center; ">?????????</th>
													<td class="todayInputTd">
													</td>
												</tr>
												<tr>
													<th class="noHover" style="width: 20%; vertical-align: center; ">??????</th>
													<td class="todayInputTd" id="finalMessageTitle">
													</td>
												</tr>
												<tr>
													<th class="noHover" style="vertical-align: center;" >??????</th>
													<td class="noHover" style="height: 320px;" ><textarea id="finalMessageContent" disabled="disabled" style="width:100%; height: 100%; resize: none; border:none;"></textarea></td>
												</tr>
									</table>
				            	</div>
				            </div>
				         </div>
					  </div>
					</div>
						<div class="row" style="padding-top: 39px;">
						<div class="col-sm-1">
						<button id="thirdPrevBtn" class="btn btn-block btn-secondary">??????</button>
						</div>
						<div class="col-sm-10"></div>
						<div class="col-sm-1">
						<input class="btn btn-block btn-dark" type="button" onclick="messageFormSubmit()" value="??????">
						</div>
						</div>
			</div>
		</div>
		</div>
	</div>
   </div>
   <input type="hidden" id="mngId" value="${loginUser.id}">
</section>
   
 <script>
 window.onload=function(){
	 changeType();
	 changeCount();
	 loadGroupListName();
	 loadTemplateList();
	 
	 $("#firstNextBtn").on("click",function(){
			
// 			if(!managerId){
// 				alert("???????????? ??????????????????");
// 				return;
// 			}

			$("#custom-tabs-four-home-tab").attr("class","nav-link");
			$("#custom-tabs-four-profile-tab").attr("class","nav-link active");
			$("#custom-tabs-four-home-tab").attr("aria-selected","false");
			$("#custom-tabs-four-profile-tab").attr("aria-selected","true");
			$("#custom-tabs-four-home").attr("class","tab-pane fade");
			$("#custom-tabs-four-profile").attr("class","tab-pane fade active show");
			
			$(".second").attr("class","stepper-item second completed");
			
			
                var td = new Date();                   //?????? ??????
                var yyyy = td.getFullYear();           //??????  
                var mm = "" + (td.getMonth()+1);    //???
                var dd = "" + td.getDate();           //??? 

                if(mm.length < 2) mm = "0" + mm;
                if(dd.length < 2) dd = "0" + dd;

                var Today = yyyy.toString() +"-"+ mm +"-"+ dd; 

                $(".todayInputTd").text(Today);
                
                $('#sendMessageConfirmList1').empty();
                $('#sendMessageConfirmList2').empty();
                
                $('#tableSendList').clone().appendTo('#sendMessageConfirmList1');
                $('#tableSendList').clone().appendTo('#sendMessageConfirmList2');
 
                $("#sendMessageConfirmList1 table th:last").remove();
                $('#sendMessageConfirmList1 table tbody tr td:last-child').remove();
                $("#sendMessageConfirmList2 table th:last").remove();
                $('#sendMessageConfirmList2 table tbody tr td:last-child').remove();
                
		});
		
		$("#secondPrevBtn").on("click",function(){
			$("#custom-tabs-four-profile-tab").attr("class","nav-link");
			$("#custom-tabs-four-home-tab").attr("class","nav-link active");
			$("#custom-tabs-four-profile-tab").attr("aria-selected","false");
			$("#custom-tabs-four-home-tab").attr("aria-selected","true");
			$("#custom-tabs-four-profile").attr("class","tab-pane fade");
			$("#custom-tabs-four-home").attr("class","tab-pane fade active show");
			$(".second").attr("class","stepper-item second");
			
			$('#sendMessageConfirmList1').empty();
			$('#sendMessageConfirmList2').empty();
			
		});
		
		$("#secondNextBtn").on("click",function(){
			
			$("#custom-tabs-four-profile-tab").attr("class","nav-link");
			$("#custom-tabs-four-third-tab").attr("class","nav-link active");
			$("#custom-tabs-four-profile-tab").attr("aria-selected","false");
			$("#custom-tabs-four-third-tab").attr("aria-selected","true");
			$("#custom-tabs-four-profile").attr("class","tab-pane fade");
			$("#custom-tabs-four-third").attr("class","tab-pane fade active show");
			$(".third").attr("class","stepper-item third completed");
			$(".second").attr("class","stepper-item second completed");
			
			var messageContent = $('#templateContent').val();
			var messageTitle = $('#templateTitle').val();
			$('#finalMessageContent').val(messageContent);
			$('#finalMessageTitle').text(messageTitle);
			
			 $('#sendMessageConfirmList1').empty();
             $('#sendMessageConfirmList2').empty();
             
             $('#tableSendList').clone().appendTo('#sendMessageConfirmList1');
             $('#tableSendList').clone().appendTo('#sendMessageConfirmList2');
             
         	$("#sendMessageConfirmList1 table th:last").remove();
            $('#sendMessageConfirmList1 table tbody tr td:last-child').remove();
            $("#sendMessageConfirmList2 table th:last").remove();
            $('#sendMessageConfirmList2 table tbody tr td:last-child').remove();
		});
		
		$("#thirdPrevBtn").on("click",function(){
			$("#custom-tabs-four-third-tab").attr("class","nav-link");
			$("#custom-tabs-four-profile-tab").attr("class","nav-link active");
			$("#custom-tabs-four-third-tab").attr("aria-selected","false");
			$("#custom-tabs-four-profile-tab").attr("aria-selected","true");
			$("#custom-tabs-four-third").attr("class","tab-pane fade");
			$("#custom-tabs-four-profile").attr("class","tab-pane fade active show");
			$(".third").attr("class","stepper-item third");
			
            $('#sendMessageConfirmList2').empty();
		});
		
// 	????????? tr ?????? ?????? css ??????	
		$(document).on('click','.upclickableTr',function(){
			 $(this).css("background-color","#395d83");
			 $(this).css("color","white");
			 $(this).attr("class","upselectedTr");
			 //var test = $(this).children('.tdShow');
			 $(this).children('.tdShow').attr("class","tdHide");
			 $(this).children('.deleteBtn').attr("class","deleteBtnShow");
		 });
		 $(document).on('click','.upselectedTr',function(){
			 $(this).css("background-color","white");
			 $(this).css("color","black");
			 $(this).attr("class","upclickableTr");
			 $(this).children('.tdHide').attr("class","tdShow");
			 $(this).children('.deleteBtnShow').attr("class","deleteBtn");
		 });
		// ?????? ?????? ????????? ??? ???????????? ??????
		 $("#moveDown").click(function(){
			 $("#tbodyDown").append($(".upselectedTr"));
			 
			 $(".tdHide").css("display","none");
			 $(".deleteBtnShow").css("display","");
			 
			 $(".upselectedTr").css("background-color","white");
			 $(".upselectedTr").css("color","black");
			 $(".upselectedTr").css("cursor","default");
			 $(".upselectedTr").attr("class","downclickableTr");
			 $(".upselectedTr").remove();
			 
			 changeCount();
			 
		 });
		 // ??? ?????? ?????? ????????? ??? ???????????? ??????
		 $("#moveAllDown").click(function(){
			 $("#tbodyDown").append($(".upselectedTr"));
			 $("#tbodyDown").append($(".upclickableTr"));
			 
			 $(".tdHide").css("display","none");
			 $(".deleteBtnShow").css("display","");
			 $(".deleteBtn").css("display","");
			 $(".tdShow").css("display","none");
			 
			 $(".upselectedTr").css("background-color","white");
			 $(".upselectedTr").css("color","black");
			 $(".upselectedTr").attr("class","downclickableTr");
			 $(".upselectedTr").remove();
			 $(".upclickableTr").css("background-color","white");
			 $(".upclickableTr").attr("class","downclickableTr");
			 $(".upclickableTr").remove();
			 
			 changeCount();
		 });
		 
		
 }
 </script>  
 <script>
 // ????????? 90byte ????????? ??????
 function fn_checkByte(obj){
    const maxByte = 90; //?????? 90?????????
    const text_val = obj.value; //????????? ??????
    const text_len = text_val.length; //????????? ?????????
    
    let totalByte=0;
    for(let i=0; i<text_len; i++){
    	const each_char = text_val.charAt(i);
        const uni_char = escape(each_char); //???????????? ???????????? ??????
        if(uni_char.length>4){
        	// ?????? : 2Byte
            totalByte += 2;
        }else{
        	// ??????,??????,???????????? : 1Byte
            totalByte += 1;
        }
    }
    
    if(totalByte>maxByte){
    	//alert('?????? 90Byte????????? ?????????????????????.');
    	 Swal.fire({
		        icon: 'error',
		        title: '?????? 90Byte????????? ?????????????????????.',
		    });
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "red";
        }else{
        	document.getElementById("nowByte").innerText = totalByte;
            document.getElementById("nowByte").style.color = "green";
        }
    }
 
 // ????????? ?????? ??????
 function messageFormSubmit(){
	// alert('messageFormSubmit click!!!');
	
	 var tableSendListCount = $("#tableSendList >tbody tr").length;
	 if(tableSendListCount == 0){
		 Swal.fire({
		        icon: 'error',
		        title: '????????? ????????? ????????????.',
		    });
		 return;
	 }
	 
	 var finalMessageContent = $('#finalMessageContent').val();
	 //console.log(finalMessageContent);
	 if(finalMessageContent == ""){
		 Swal.fire({
		        icon: 'error',
		        title: '????????? ????????? ????????????.',
		    });
		 return;
	 }
	
	Swal.fire({
		title: '???????????? ?????? ???????????????????',
		text: '?????? ?????? ????????? ????????? ????????? ?????? ??? ??????????????????.',
		icon: 'warning',
		showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
		confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
		cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
		confirmButtonText: '?????????', // confirm ?????? ????????? ??????
		cancelButtonText: '??????', // cancel ?????? ????????? ??????
		reverseButtons: false, // ?????? ?????? ?????????
		}).then(result => {
		// ?????? Promise????????? ?????????,
		if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
			 sendMessage();
			 saveSendList();
			 const Toast = Swal.mixin({
			      toast: true,
			      position: 'center-center',
			      showConfirmButton: false,
			      timer: 1500,
			      timerProgressBar: true,
			      didOpen: (toast) => {
			        toast.addEventListener('mouseenter', Swal.stopTimer)
			        toast.addEventListener('mouseleave', Swal.resumeTimer)
			      }
			    })

			    Toast.fire({
			      icon: 'success',
			      title: '????????? ????????? ??????????????????. ????????? ?????? ???????????? ???????????????.'
			    })
			    
			    setTimeout(function() {
					window.location.href="<%=request.getContextPath()%>/manager/academymanagement/kakao/regist.do";
				}, 1600);
					
			  }
			});
 }
 
 // ????????? ????????? ??????
 function sendMessage(){
	 var kakaoSendContent1 = $('#finalMessageContent').val();
	 $('#sendMessageConfirmList1').empty();
     $('#sendMessageConfirmList2').empty();
     //console.log(kakaoSendContent1);
     let downTrs = [];
	 $(".downclickableTr").each(function(){
		 let messageGroupList1 = new Object();
		 //console.log(this);
		 
		 messageGroupList1.kakaoSendType = $(this).children().eq(0).text();
		 messageGroupList1.kakaoReceiverName = $(this).children().eq(1).text();
		 messageGroupList1.kakaoReceiverHp = $(this).children().eq(2).text();
		 
		 downTrs.push(messageGroupList1);
	 });
	 var dataItem = {
			messageGroupList : downTrs
			,kakaoSendContent : kakaoSendContent1
	 }
	 dataItem = JSON.stringify(dataItem);
		 	
	 $.ajax({
	       type: "post"
	      ,url : "/manager/academymanagement/message/send.do"
	      ,contentType: 'application/json'
	      ,data : dataItem
	      ,success : function (data){

	       }
	      ,error : function(e){
	    	  Swal.fire({
		  	        icon: 'error',
		  	        title: '???????????????. ??????????????? ??????????????????.',
		  	  }); 
	       }
	 }); 

 }
 
 // ????????? ?????? ?????? ??????
 function saveSendList(){
	var mngId1 = $('#mngId').val();
	var kakaoSendContent1 = $('#finalMessageContent').val();
	var kakaoSendTitle1 = $('#finalMessageTitle').text();
	var kakaoSendType1 = 'SMS';
	 $('#sendMessageConfirmList1').empty();
    $('#sendMessageConfirmList2').empty();
    //console.log(kakaoSendContent1);
    let downTrs = [];
	 $(".downclickableTr").each(function(){
		 let messageGroupList1 = new Object();
		 //console.log(this);
		 
		 messageGroupList1.kakaoReceiverType = $(this).children().eq(0).text();
		 messageGroupList1.kakaoReceiverName = $(this).children().eq(1).text();
		 messageGroupList1.kakaoReceiverHp = $(this).children().eq(2).text();
		 messageGroupList1.kakaoReceiverEmail = $(this).children().eq(2).attr("data-email");
		 
		 downTrs.push(messageGroupList1);
	 });
	 var dataItem1 = {
			messageGroupList : downTrs
			,kakaoSendContent : kakaoSendContent1
			,mngId :mngId1
			,kakaoSendTitle :kakaoSendTitle1
			,kakaoSendType : kakaoSendType1
	 }
	 dataItem = JSON.stringify(dataItem1);
	 console.log(dataItem);
	 $.ajax({
	       type: "post"
	      ,url : "/manager/academymanagement/kakaoSendList/regist.do"
	      ,contentType: 'application/json'
	      ,data : dataItem
	      ,success : function (data){
	    	
	       }
	      ,error : function(e){
	    	  Swal.fire({
		  	        icon: 'error',
		  	        title: '???????????????. ??????????????? ??????????????????.',
		  	  }); 
	       }
	 });   
 }
 
 // ?????? ?????? ?????? ???????????? input ?????? ?????? ???????????? ??????
 function registDirect(){
	 //alert('registDirect click!!!');
	 $('#templateName').attr("disabled",false);
	 $('#templateContent').attr("disabled",false);
	 $('#templateTitle').attr("disabled",false);
 }
 
 // ????????? ?????? ?????? ???????????? ???????????? ??????
 function templateSave(){
	 //alert('templateSave click!!!');
	 var templateName = $('#templateName').val();
	console.log('?????????1 '+templateName);
	 $.ajax({
		 url : "/manager/academymanagement/template/templateListCheck.do?templateName="+templateName,
	   	 method : "get",	
	   	 success : function(result){
	  		   if(result.toUpperCase() == "DUPLICATED"){
	  			 Swal.fire({
	  				title: '????????? ????????? ????????????.',
	  				text: '????????? ????????? ?????????????????????????',
	  				icon: 'warning',
	  				showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
	  				confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
	  				cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
	  				confirmButtonText: '??????', // confirm ?????? ????????? ??????
	  				cancelButtonText: '??????', // cancel ?????? ????????? ??????
	  				reverseButtons: false, // ?????? ?????? ?????????
	  				}).then(result => {
	  				// ?????? Promise????????? ?????????,
	  				if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
								// ????????? ?????? ???????????? ????????????
	  							updateTemplate();
	  				}
	  				});
	  				
	  		   }else{
	  			 registTemplate(); 
	  		   }
	   	 },
	        error:function(error){
	         // alert("?????????????????? ????????? ???????????????.");
	       	 AjaxErrorSecurityRedirectHandler(error.status);
	        }			 
		 });
	 
 }
 
 // ????????? regist ?????? ??????
 function registTemplate(){
	 var templateName = $('#templateName').val();
	 var templateTitle = $('#templateTitle').val();
	 var templateContent = $('#templateContent').val();
	 var dataItem = {
			 templateName : templateName 
			,templateTitle : templateTitle
			,templateContent : templateContent
	 }
	 dataItem = JSON.stringify(dataItem);
		 	
	 $.ajax({
	       type: "post"
	      ,url : "/manager/academymanagement/template/regist.do"
	      ,contentType: 'application/json'
	      ,data : dataItem
	      ,success : function (data){
	    	Swal.fire({
	  	        icon: 'success',
	  	        title: '?????? ???????????????.',
	  	    });
	    	
	    	loadTemplateList();
// 	    	setTimeout(function() {
// 	    		window.location.reload();
// 	    				}, 500);
	       }
	      ,error : function(e){
	    	  Swal.fire({
		  	        icon: 'error',
		  	        title: '???????????????. ??????????????? ??????????????????.',
		  	  }); 
	       }
	 });   
 }
 
 // ????????? ???????????? ???????????? ??????
 function updateTemplate(){
	 var templateId = $('#templateName').attr("data-id");
	 var templateName = $('#templateName').val();
	 var templateTitle = $('#templateTitle').val();
	 var templateContent = $('#templateContent').val();
	 
	 var dataItem = {
			 templateId : templateId
			,templateName : templateName 
			,templateTitle : templateTitle
			,templateContent : templateContent
	 }
	 dataItem = JSON.stringify(dataItem);
	 
	 $.ajax({
	       type: "post"
	      ,url : "/manager/academymanagement/template/update.do"
	      ,contentType: 'application/json'
	      ,data : dataItem
	      ,success : function (data){
	    	Swal.fire({
	  	        icon: 'success',
	  	        title: '?????? ???????????????.',
	  	    });
	    	
	    	loadTemplateList();
//	    	setTimeout(function() {
//	    		window.location.reload();
//	    				}, 500);
	       }
	      ,error : function(e){
	    	  Swal.fire({
		  	        icon: 'error',
		  	        title: '???????????????. ??????????????? ??????????????????.',
		  	  }); 
	       }
	 });   
 }
 
 // ????????? td ???????????? ???????????? ??????
 function templateDetail(e){
	 var templateId = $(e).attr("data-num");
	 //console.log(templateId);
	 var dataItem = {
 	   		"templateId" : templateId
    		}
	 
	$.ajax({
 		type: "get"
	,url : "/manager/academymanagement/template/detail.do"
	,data : dataItem 
	,success : function (data){
	   //console.log(data);
		$('#templateName').attr("disabled",false);
		$('#templateContent').attr("disabled",false);
		$('#templateTitle').attr("disabled",false);
		
		$('#templateName').attr("data-id",data.templateDetail.templateId);
		$('#templateName').val(data.templateDetail.templateName);
		$('#templateContent').val(data.templateDetail.templateContent);
		$('#templateTitle').val(data.templateDetail.templateTitle);
	}
	,error : function(e){
	   Swal.fire({
	        icon: 'error',
	        title: '???????????????. ??????????????? ??????????????????.',
	   }); 
	 }
	});
 }
 
 // ????????? ?????? ?????? ???????????? ???????????? ??????
 function daleteTemplate(e){
	// alert('daleteTemplate click!!!');
	Swal.fire({
		title: '?????? ???????????????????',
		text: '?????? ?????? ?????? ????????? ??? ????????????.',
		icon: 'warning',
		showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
		confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
		cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
		confirmButtonText: '??????', // confirm ?????? ????????? ??????
		cancelButtonText: '??????', // cancel ?????? ????????? ??????
		reverseButtons: false, // ?????? ?????? ?????????
		}).then(result => {
		// ?????? Promise????????? ?????????,
		if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
			var templateId = $(e).attr("data-id");
			console.log(templateId);
			var dataItem = {"templateId" : templateId}
			$.ajax({
			       type: "post"
			      ,url : "/manager/academymanagement/template/delete.do"
			      ,data : dataItem
			      ,success : function(){
			    	  Swal.fire({
					        icon: 'success',
					        title: '?????? ?????? ???????????????.',
					    });
			    	  $(e).parent().parent().remove();
			    	  loadTemplateList();
			       }
			      ,error : function(e){
			    	  Swal.fire({
				  	        icon: 'error',
				  	        title: '???????????????. ??????????????? ??????????????????.',
				  	  }); 
					}
			 });
			}
		});
	
 }
 
 // ?????? ?????? ?????? ???????????? ???????????? ??????
 function groupSave(){
	// alert('groupSave click!!!');
	newGroup();
 }
 
 // ?????? ????????? ?????? ???????????? ???????????? ??????
 function flushList(){
	 //alert('flushList click!!!');
	 $(".downclickableTr").remove();
	 
	  changeCount();
 }
 
 // ??? ?????? ???????????? tr ??????
 function newGroup() {
	 //alert('new Group click!!!');
	 $("#groupListTable>tbody>tr:eq(0)").before("<tr data-id=''>"
			 +     "<td><input type='text' value='' style='border:none; text-align:center; width: 100%; height: 100%;'></td>"
			 +		"<td><button type='button' class='btn btn-dark btn-xs' onclick='messageGroupDetail(this);' >??????</button></td>"
			 +     "<td class=''>"
			 +     "<button type='button' class='btn btn-info btn-xs' onclick='groupNameChange(this);' style='display:none;'>??????</button>"
			 +     "<button type='button' class='btn btn-dark btn-xs' onclick='registGroup(this);'>??????</button>"
			 +     "</td>"
			 +     "<td><button type='button' class='btn btn-danger btn-xs' onclick='daleteGroup(this);'>??????</button></td>"
			 + "</tr>");
	 
	 $("#groupListTable>tbody>tr:eq(0)").children('td:eq(0)').children('input:eq(0)').focus();
 }
 
 
 // ?????? ?????? ????????? ??? ?????? ??????(????????? ?????????)
 function registGroup(e) {
	 var tableSendListCount = $("#tableSendList >tbody tr").length;
	 //console.log(tableSendListCount);
	 if(tableSendListCount == 0){
		 Swal.fire({
		        icon: 'error',
		        title: '????????? ????????? ????????????.',
		    });
		 return;
	 }
	 
	// alert('regist Group click!!!');
	 var thisInput = $(e).parent().parent().children('td:eq(0)').children('input:eq(0)');
	 var thisTrGroupName = $(e).parent().parent().attr("data-id");
	 //alert(thisTrGroupName);
	 //alert(thisInput.val());
	 if(thisInput.val() == ""){
		 Swal.fire({
		        icon: 'error',
		        title: '?????? ????????? ????????????.',
		    });
		 return;
	 }
	 
	 if(thisInput.val() == thisTrGroupName){
		 //alert("??? ?????? ????????????");
		 updateGroup(e);
		 return;
	 } else {
		// alert("??? ?????? ????????????");
		  $.ajax({
		 url : "/manager/academymanagement/messageGroup/groupNameCheck.do?messageGroupName="+thisInput.val(),
	   	 method : "get",	
	   	 success : function(result){
	  		   if(result.toUpperCase() == "DUPLICATED"){
		  			 Swal.fire({
		 		        icon: 'error',
		 		        title: '?????? ?????? ?????????????????????.',
		 		     });
	  			} else{
	  				var dataItem = {messageGroupName : thisTrGroupName}
	  				dataItem = JSON.stringify(dataItem);
	  				$.ajax({
	  				       type: "post"
	  				      ,url : "/manager/academymanagement/messageGroup/delete.do"
	  				      ,contentType: 'application/json'
	  				      ,data : dataItem
	  				      ,success : function(){
	  				       
	  				      }
	  				      ,error : function(e){
	  				    	  Swal.fire({
	  					  	        icon: 'error',
	  					  	        title: '???????????????. ??????????????? ??????????????????.',
	  					  	  }); 
	  						}
	  				 });
	  				
	  				updateGroup(e);
	  			}
	   	 },
	        error:function(error){
	         // alert("?????????????????? ????????? ???????????????.");
	       	 AjaxErrorSecurityRedirectHandler(error.status);
	        }			 
		 });
	 }
	 
		
		
 }
 
 function updateGroup(e){
	 //console.log($(e));
	 var thisInput = $(e).parent().parent().children('td:eq(0)').children('input:eq(0)');
	 
	 $(thisInput).attr('readonly','true');
	 var thisModifyBtn = $(e).parent().children('button:eq(0)');
	 $(thisModifyBtn).css("display","");
	 $(e).css("display","none");
	 
	 var downTrs = [];
	 $(".downclickableTr").each(function(){
		 let messageGroupList1 = new Object();
		 //console.log(this);
		 
		 messageGroupList1.receiverCategory = $(this).children().eq(0).text();
		 messageGroupList1.receiverName = $(this).children().eq(1).text();
		 messageGroupList1.receiverHp = $(this).children().eq(2).text();
		 messageGroupList1.receiverEmail = $(this).children().eq(2).attr("data-email");
		 downTrs.push(messageGroupList1);
	 });
	 console.log(downTrs);
 	 var messageGroupName1 = $(thisInput).val();
	 var dataItem = {
			messageGroupList : downTrs
			,messageGroupName : messageGroupName1
	 }
	 dataItem = JSON.stringify(dataItem);
		 	
	 $.ajax({
	       type: "post"
	      ,url : "/manager/academymanagement/messageGroup/regist.do"
	      ,contentType: 'application/json'
	      ,data : dataItem
	      ,success : function (data){
	    	Swal.fire({
	  	        icon: 'success',
	  	        title: '?????? ???????????????.',
	  	    });
	    	setTimeout(function() {
	    		window.location.reload();
	    				}, 500);
	       }
	      ,error : function(e){
	    	  Swal.fire({
		  	        icon: 'error',
		  	        title: '???????????????. ??????????????? ??????????????????.',
		  	  }); 
	       }
	 });   
	 
 }
 
 // ?????? ?????? ???????????? ?????? ?????? ????????? ?????? ?????? ?????? ??????
 function groupNameChange(e){
	 //alert('Group Name Change click!!!');
	 var thisInput = $(e).parent().parent().children('td:eq(0)').children('input:eq(0)');
	 $(thisInput).removeAttr('readonly');
	 var thisSaveBtn = $(e).parent().children('button:eq(1)');
	 $(thisSaveBtn).css("display","");
	 $(e).css("display","none");
// 	 alert(test);
 	 //console.log(thisSaveBtn);
 }
 
 // ?????? ???????????? ??????
 function daleteGroup(e){
 	 //alert('delete Group click!!!');
 	
	 	Swal.fire({
		title: '?????? ???????????????????',
		text: '?????? ?????? ?????? ????????? ??? ????????????.',
		icon: 'warning',
		showCancelButton: true, // cancel?????? ?????????. ????????? ?????? ??????
		confirmButtonColor: '#3085d6', // confrim ?????? ?????? ??????
		cancelButtonColor: '#d33', // cancel ?????? ?????? ??????
		confirmButtonText: '??????', // confirm ?????? ????????? ??????
		cancelButtonText: '??????', // cancel ?????? ????????? ??????
		reverseButtons: false, // ?????? ?????? ?????????
		}).then(result => {
		// ?????? Promise????????? ?????????,
		if (result.isConfirmed) { // ?????? ??????????????? confirm ????????? ????????????
			var messageGroupName1 = $(e).parent().parent().attr("data-id");
			//console.log(messageGroupName1);
			var dataItem = {messageGroupName : messageGroupName1}
			dataItem = JSON.stringify(dataItem);
			$.ajax({
			       type: "post"
			      ,url : "/manager/academymanagement/messageGroup/delete.do"
			      ,contentType: 'application/json'
			      ,data : dataItem
			      ,success : function(){
			    	  Swal.fire({
					        icon: 'success',
					        title: '?????? ?????? ???????????????.',
					    });
			    	  loadGroupListName(); 
			       }
			      ,error : function(e){
			    	  Swal.fire({
				  	        icon: 'error',
				  	        title: '???????????????. ??????????????? ??????????????????.',
				  	  }); 
					}
			 });
			$(e).parent().parent().remove();
 		 }
		});
 }
 
 // selectbox ??? ????????? ???????????? ??????(???????????? ??????,??????,??????,??????)
 function changeType(){
	 
	 var category = $('#messageCategory').val();
	 
	 if(category == "s"){
		 var data = null;
		//alert('?????? change ??? ^^');
		 var keyword = $("#searchKeyWord").val();
			
    		 let dataItem = {
	    	   		"keyword" : keyword
	       		}
    		 
    		 $.ajax({
 		        type: "get"
 		       ,url : "/manager/academymanagement/message/studentSearchList.do"
 		       ,data : dataItem
 		       ,success : function (data){
 		    	   //console.log(data);
	 			   printData(data,$('#tableSearchList'),$('#tableSearchListDiv'),$('#tableSearchListStudent-template'));
	 			   
	 			   changeCount();
 		       }
 		       ,error : function(e){
 		        }
 			});
	 }
	 if(category == "p"){
		 //var data = null;
		 //alert('?????? change ??? ^^');
		  var keyword = $("#searchKeyWord").val();
			
    		 let dataItem = {
	    	   		"keyword" : keyword
	       		}
    		 
    		 $.ajax({
 		        type: "get"
 		       ,url : "/manager/academymanagement/message/parentSearchList.do"
 		       ,data : dataItem
 		       ,success : function (data){
 		    	  // console.log(data);
		 		   printData(data,$('#tableSearchList'),$('#tableSearchListDiv'),$('#tableSearchListParent-template'));
		 		   
		 		   changeCount();
 		        }
 		       ,error : function(e){
 		        }
 			});
	 }
	 if(category == "m"){
		 //var data = null;
		 //alert('????????? change ??? ^^');
		  var keyword = $("#searchKeyWord").val();
			
    		 let dataItem = {
	    	   		"keyword" : keyword,
	    	   		"searchType" : 't'
	       		}
    		 
    		 $.ajax({
 		        type: "get"
 		       ,url : "/manager/academymanagement/message/managerSearchList.do"
 		       ,data : dataItem
 		       ,success : function (data){
 		    	  // console.log(data);
		 		   printData(data,$('#tableSearchList'),$('#tableSearchListDiv'),$('#tableSearchListManager-template'));
 			
		 		   changeCount();
 		        }
 		       ,error : function(e){
 		        }
 			});
	 }
	 if(category == "t"){
		 //var data = null;
		 //alert('?????? change ??? ^^');
		// list_go(1,"/manager/academymanagement/kakao/regist.do");
		var keyword = $("#searchKeyWord").val();
		
		let dataItem = {
	    	   		"keyword" : keyword
	       		}
		
		 $.ajax({
 		        type: "get"
 		       ,url : "/manager/academymanagement/message/userSearchList.do"
 		       ,data : dataItem
 		       ,success : function (data){
 		    	  // console.log(data);
 		    	   printData(data,$('#tableSearchList'),$('#tableSearchListDiv'),$('#tableSearchListUser-template'));
 			
		 		   changeCount();
 		        }
 		       ,error : function(e){
 		        }
 			});
		 
		 changeCount();
	 }
 }
 
 // ????????? ?????? ?????? tr ?????? ?????? ????????? ??????(?????? tr ??????)
 function deleteTrBtn(e){
	 //var parent = $(e).parent();
	 //alert(parent);
	//console.log(parent);
	$(e).parent().parent().remove();
	 
	changeCount();
 }
 
 // ????????? ????????? ??????
 function changeCount(){
	 var tableSearchListCount = $("#tableSearchList >tbody tr").length;
	 if(tableSearchListCount == 0) {
		 $(".tableSearchListCount").text(0);
	 } else {
	 	$(".tableSearchListCount").text(tableSearchListCount);
	 }
	 
	 var tableSendListCount = $("#tableSendList >tbody tr").length;
	 if(tableSendListCount == 0){
	 	$(".tableSendListCount").text(0);
	 } else {
	 	$(".tableSendListCount").text(tableSendListCount);
	 }
 }

// ?????? ?????? ????????? ???????????? ajax
function loadGroupListName(){
		
		$.ajax({
	        type: "get"
	       ,url : "/manager/academymanagement/messageGroup/list.do"
	       ,success : function (data){
	    	   //console.log(data);
	    	   printData(data,$('#groupListTable'),$('#groupListTableDiv'),$('#groupListTable-template'));
	        }
	       ,error : function(e){
	    	   Swal.fire({
		  	        icon: 'error',
		  	        title: '???????????????. ??????????????? ??????????????????.',
		  	  }); 
	        }
		});
}

// ?????? ????????? ????????? ???????????? ajax
function messageGroupDetail(e){
	var GroupName = $(e).parent().parent().attr("data-id");
	//console.log(GroupName);
	var dataItem = {
	    	   		"messageGroupName" : GroupName
	       		}
	$.ajax({
        type: "get"
       ,url : "/manager/academymanagement/messageGroup/detail.do"
       ,data : dataItem 
       ,success : function (data){
    	   //console.log(data);
    	   printData(data,$('#tableSendList'),$('#tableSendListDiv'),$('#tableSendList-template'));
    	   changeCount();
        }
       ,error : function(e){
    	   Swal.fire({
	  	        icon: 'error',
	  	        title: '???????????????. ??????????????? ??????????????????.',
	  	  }); 
        }
	});
}

// ????????? ?????? ?????? ???????????? ??????
function loadTemplateList(){
	$.ajax({
        type: "get"
       ,url : "/manager/academymanagement/template/list.do"
       ,success : function (data){
    	   //console.log(data);
    	   printData(data,$('#templateListTable'),$('#templateListTableDiv'),$('#templateListTable-template'));
        }
       ,error : function(e){
    	   Swal.fire({
	  	        icon: 'error',
	  	        title: '???????????????. ??????????????? ??????????????????.',
	  	  }); 
        }
	});
}

 
 </script>
 
 <script>
// handlebars ??????
function printData(data,delArea,target,templateObject){
	var template=Handlebars.compile(templateObject.html());
	var html = template(data);	
	delArea.remove();
	target.append(html);
}


</script>

 <script type="text/x-handlebars-template"  id="tableSearchListStudent-template" >
<table id="tableSearchList" class="table table-hover table-head-fixed table-bordered" >
		<thead>
			<tr>
				<th style="width:8%;">????????????</th>
				<th style="width:10%;">??????</th>
				<th style="width:10%;">?????????</th>
				<th style="width:10%;">??????</th>
				<th style="width:8%;">??????</th>
				<th style="width:10%;">?????????</th>
			</tr>
		</thead>
		<tbody id="tbodyUp">	
			{{#each studentList}}
					<tr class="upclickableTr" onclick='' style="cursor: pointer;">
						<td data-category="??????">??????</td>
						<td data-name="{{name}}">{{name}}</td>
						<td data-hp="{{hp}}" data-email="{{id}}">{{hp}}</td>
						<td class="tdShow">{{schoolNo}}</td>
						<td class="tdShow">{{gradeCategoryCode}}&nbsp;{{grade}}</td>
						<td class="tdShow">{{sibling}}</td>
						<td class="deleteBtn" style="display: none; width:5%;"><button type="button" class="btn btn-danger btn-xs" onclick="deleteTrBtn(this);">??????</button></td>
					</tr>
			{{else}}
				<tr>
					<td colspan="7" class="text-center" style="background: white; color: black;">
						?????? ????????? ????????????.
					</td>
				</tr>
			{{/each}}
		</tbody>
</table>
</script>   
<script type="text/x-handlebars-template"  id="tableSearchListParent-template" >
<table id="tableSearchList" class="table table-hover table-head-fixed table-bordered" >
		<thead>
			<tr>
				<th style="width:8%;">????????????</th>
				<th style="width:10%;">??????</th>
				<th style="width:10%;">?????????</th>
				<th style="width:10%;">????????????</th>
				<th style="width:10%;">????????????</th>
				<th style="width:8%;">????????????</th>
				<th style="width:10%;">???????????????</th>
			</tr>
		</thead>
		<tbody id="tbodyUp">	
			{{#each parentList}}
					<tr class="upclickableTr" style="cursor: pointer;">
						<td data-category="??????">??????</td>
						<td data-name="{{parentName}}">{{parentName}}</td>
						<td data-hp="{parentHp}}" data-email="{{id}}">{{parentHp}}</td>
						<td style="cursor: pointer;" class="tdShow"><strong>{{childrenName}}</strong></td>
						<td class="tdShow">{{childrenSchoolName}}</td>
						<td class="tdShow">{{childrenGradeCode}}&nbsp;{{childrenGrade}}</td>
						<td class="tdShow">{{childrenClassName}}</td>
						<td class="deleteBtn" style="display: none; width:5%;"><button type="button" class="btn btn-danger btn-xs" onclick="deleteTrBtn(this);">??????</button></td>
					</tr>
			{{else}}
					<tr>
						<td colspan="8" class="text-center" style="background: white; color: black;">
							?????? ????????? ????????????.
						</td>
					</tr>
			{{/each}}
		</tbody>
</table>
</script>   
<script type="text/x-handlebars-template"  id="tableSearchListManager-template" >
<table id="tableSearchList" class="table table-hover table-head-fixed table-bordered" >
		<thead>
			<tr>
				<th style="width:8%;">????????????</th>
				<th style="width:10%;">??????</th>
				<th style="width:10%;">?????????</th>
				<th style="width:8%;">??????</th>
			</tr>
		</thead>
		<tbody id="tbodyUp">	
			{{#each managerList}}
				<tr class="upclickableTr" style="cursor: pointer;">
					<td data-category="??????">??????</td>
					<td style="cursor: pointer;" data-name="{{mngName}}"><strong>{{mngName}}</strong></td>
					<td data-hp="{mngHp}}" data-email="{{id}}">{{mngHp}}</td>
					<td class="tdShow" >{{deptId}}</td>
					<td class="deleteBtn" style="display: none; width:5%;"><button type="button" class="btn btn-danger btn-xs" onclick="deleteTrBtn(this);">??????</button></td>
				</tr>
			{{else}}
				<tr>
					<td colspan="5" class="text-center" style="background: white; color: black;">
						?????? ????????? ????????????.
					</td>
				</tr>
			{{/each}}
		</tbody>
</table>
</script>
<script type="text/x-handlebars-template"  id="tableSearchListUser-template" >
<table id="tableSearchList" class="table table-hover table-bordered table-head-fixed text-center" >					
			<thead>
				<tr>
					<th style="width:10%;">????????????</th>
					<th style="width:10%;">??????</th>
					<th style="width:10%;">?????????</th>
				</tr>
			</thead>
			<tbody id="tbodyUp">
				{{#each userList}}
					<tr class="upclickableTr" style="cursor: pointer;">
						<td data-category="{{category}}">{{category}}</td>
						<td style="cursor: pointer;" data-name="{{name}}"><strong>{{name}}</strong></td>
						<td data-hp="{{hp}}" data-email="{{id}}">{{hp}}</td>
						<td class="deleteBtn" style="display: none; width:5%;"><button type="button" class="btn btn-danger btn-xs" onclick="deleteTrBtn(this);">??????</button></td>
					</tr>
				{{else}}
					<tr>
						<td colspan="4" class="text-center" style="background: white; color: black;">
						?????? ????????? ????????????.
						</td>
					</tr>
				{{/each}}	
			</tbody>
		</table>
</script> 

<script type="text/x-handlebars-template"  id="groupListTable-template" >
<table id="groupListTable" class="table table-hover table-bordered table-head-fixed text-center" >					
	<thead>
		<tr>
			<th style="width:30%;">?????????</th>
			<th style="width:20%;">??????</th>
			<th style="width:20%;">??????/??????</th>
			<th style="width:15%;">??????</th>
		</tr>
	</thead>
	<tbody>	
		{{#each groupNameList}}
		<tr data-id="{{messageGroupName}}">
			<td><input type="text" value="{{messageGroupName}}" readonly="readonly" style="border:none; text-align:center; width: 100%; height: 100%;"></td>
			<td>
			<button type="button" class="btn btn-dark btn-xs" onclick="messageGroupDetail(this);" >??????</button></td>
			<td class="">
			<button type="button" class="btn btn-info btn-xs" onclick="groupNameChange(this);">??????</button>
			<button type="button" class="btn btn-dark btn-xs" onclick="registGroup(this);" style="display:none;">??????</button>
			</td>
			<td><button type="button" class="btn btn-danger btn-xs" onclick="daleteGroup(this);">??????</button></td>
		</tr>
		{{else}}
		<tr>
			<td colspan="3" class="text-center" style="background: white; color: black;">
			????????? ????????????.
			</td>
		</tr>
		{{/each}}	
	</tbody>
</table>  
</script>

<script type="text/x-handlebars-template"  id="tableSendList-template" >
<table id="tableSendList" class="table table-bordered table-head-fixed text-center">					
	<thead>
		<tr>
			<th style="width:8%;">????????????</th>
			<th style="width:8%;">??????</th>
			<th style="width:5%;">?????????</th>
			<th class="none" style="display: none;"></th>
			<th class="none" style="display: none;"></th>
			<th class="none" style="display: none;"></th>
			<th style="width:5%;">??????</th>
		</tr>
	</thead>
	<tbody id="tbodyDown">	
		{{#each groupNameDetail}}
		<tr class="downclickableTr" background-color: white; color: black;">
			<td data-category="{{receiverCategory}}">{{receiverCategory}}</td>
			<td style="cursor: pointer;" data-name="{{receiverName}}"><strong>{{receiverName}}</strong></td>
			<td data-hp="{{receiverHp}}" data-email="{{receiverEmail}}">{{receiverHp}}</td>
			<td class="deleteBtnShow" style="width: 5%;"><button type="button" class="btn btn-danger btn-xs" onclick="deleteTrBtn(this);">??????</button></td>
		</tr>
		{{/each}}	
	</tbody>
</table>
</script>

<script type="text/x-handlebars-template"  id="templateListTable-template" >
<table id="templateListTable" class="table table-hover table-bordered table-head-fixed text-center">
	<thead>
		<tr>
			<th>?????? ??????</th>
			<th>??????</th>
		</tr>
	</thead>
	<tbody>	
		{{#each templateList}}
		<tr id="{{templateId}}">
			<td onclick="templateDetail(this);" data-num={{templateId}}>{{templateName}}</td>
			<td><button type="button" data-id="{{templateId}}" class="btn btn-danger btn-xs" onclick="daleteTemplate(this);">??????</button></td>
		</tr>
		{{else}}
		<tr>
			<td colspan="2" class="text-center" style="background: white; color: black;">
			?????? ????????? ????????????.
			</td>
		</tr>
		{{/each}}	
	</tbody>
</table>
</script>
   
</body>
</html>
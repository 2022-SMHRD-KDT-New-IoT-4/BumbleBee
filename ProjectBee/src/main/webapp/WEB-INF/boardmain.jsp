<%@page import="com.BumbleBee.model.TbBeehiveDTO"%>
<%@page import="com.BumbleBee.model.TbBoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.BumbleBee.model.TbMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
    Astral by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<head>
    <title>Welcome to BeeHive</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./assets/css/main.css" />
    <link rel="stylesheet" href="style.css">
    <noscript>
    <link rel="stylesheet" href="./assets/css/noscript.css" />
    </noscript>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="modal_style.css">
    

</head>
<style>
    a {
        text-decoration: none;
        color: black;
    }

    a :hover {
        text-decoration: underline;
    }

    .modal {
        position: absolute;
        top: 0;
        left: 0;

        width: 100%;
        height: 100%;

        display: none;

        background-color: #ffffff
    }
</style>

<body class="is-preload">
	<% TbMemberDTO user = (TbMemberDTO)session.getAttribute("user"); %>
	<% List<TbBoardDTO> list = (List)request.getAttribute("list"); %>
	<% if(user == null) { 
		response.sendRedirect("Start.do");
	} %>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
   
            


            <article id="board" class="panel">
                <header>
                    <h2 class="text-warning">?????????</h2>
                </header>
                <form action="#" method="post">
                    <div class="board_list_wrap">
                        <table class="board_list">
                            <caption>????????? ??????</caption>
                            <thead>
                                <tr>
                                    <th>??????</th>
                                    <th>??????</th>
                                    <th>?????????</th>
                                    <th>?????????</th>
                                    <th>?????????</th>

                                </tr>
                            </thead>
                            <tbody>
                            	<% for(int i = 0;i < list.size();i++) { %>
                            	<tr>
                            		<td><%=list.get(i).getBoardSeq() %></td>
                            		<td> <a href = "BoardSelect.do?boardid=<%=list.get(i).getBoardSeq()%>"><%=list.get(i).getBoardTitle()%></a></td>
                            		<td><%=list.get(i).getMbId() %></td>
                            		<td><%=list.get(i).getBoardDt() %></td>
                            		<td><%=list.get(i).getBoardViews() %></td>
                            	</tr>
                            	<% } %>
                            	
                                
                            </tbody>
                        </table>
                        <div class="page">
                            <a href=""> ??? </a>
                            <a href="">???</a>
                            <a href="">[1]</a>
                            <a href="">[2]</a>
                            <a href="">[3]</a>
                            <a href="">[4]</a>
                            <a href="">[5]</a>
                            <a href="">???</a>
                            <a href="">???</a>
                        </div>
                        <br>
                        <div class="modal">
                            <div class="modal_body"> 
                                <article id="boardwrite" class="panel">
       
                                <article id="boardwrite" class="panel">
                                <div class="form_box">
                                    <h3 class="text-warning text-bold">????????? ??????</h3>
                                    <input class="input_field" type="text" placeholder="???????????? ??????????" ><br>
                                    <input class="input_field" type="password" placeholder="??? ????????????" ><br>
                                    <input class="input_field" type="text" placeholder="????????? ??????????????????." ><br>
                                    <textarea class="textarea_field" placeholder="????????? ??????????????????."></textarea><br>
                                    <div class="d-flex justify-content-center">
                                        <a href="http://121.179.35.58:5500/main.html#board" class="btn btn-warning" role="button">?????????</a>
                                    </div>
                                </div>
                                </article>
                        </article></div>

                            
                          </div>
                        <div class="d-flex justify-content-center">
                            <div class="d-flex justify-content-center">
                				<button type="button" onclick="location.href = 'Boardgowrite.do'" class="btn btn-warning">?????????</button>
                				<button type="button" onclick="location.href = 'Main.do'" class="btn btn-warning">????????????</button>
               				 </div>
                        </div>
                        
                        
                        <!--  
                        <script>
                            const modal = document.querySelector('.modal');
                            const btnOpenPopup = document.querySelector('.btn-open-popup');

                            btnOpenPopup.addEventListener('click', evt => {
                                alert("???????????????");
                                evt.stopPropagation();          //????????? ?????? ??????
                                evt.preventDefault();           //??????????????? ??????
                                if(modal){
                                    modal.style.display = 'block';
                                }
                            });
                        </script> -->

                    </div>
                </form>
            </article>





            <!--????????????-->

        </div>
        <!-- Footer -->
        <div id="footer">
            <ul class="copyright text-warning">
                <li>&copy; Untitled.</li>
                <li>Design: Bumble Bee</li>
            </ul>
        </div>
    </div>
    <!-- Scripts -->
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
</body>

</html>
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
    <link rel="stylesheet" href="./assets/css/style.css">
    <noscript>
    <link rel="stylesheet" href="./assets/css/noscript.css" />
    </noscript>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- <link rel="stylesheet" href="modal_style.css"> -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>

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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
    <!-- Wrapper-->
    <div id="wrapper">

        <!-- Nav -->
        <nav id="nav">
        	<a href="#" class="icon solid fa-home glyphicon glyphicon-home dark"><span>Home</span></a>

        	<!--  <a href="#login" class="icon solid fa-key"><span>?????????</span></a> -->
            <!-- <a href="#member" class="icon solid fa-user-plus"><span>????????????</span></a>  -->
            <a href="#dashboard" class="icon solid fa-table"><span>????????????</span></a>
           	<a href="#weather" class="icon solid fa-cloud"><span>????????????</span></a>
            <a href="#inform" class="icon solid fa-folder"><span>????????????</span></a>
            <a href="Boardmain.do" class="icon solid fa-book"><span>?????????</span></a>
            
            
            
        </nav>

        <nav class="navbar fixed-top">
            <div class="container-fluid">
                <a class="navbar-brand -4 fw-bold" href="#">Smart BeeHive</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                    aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header">
						<a href = "Logout.do"><h5 class="offcanvas-title text-warning" id="offcanvasNavbarLabel">????????????</h5></a>
						<a href = "GoSelect.do"><h5 class="offcanvas-title text-warning" id="offcanvasNavbarLabel">???????????? ??????</h5></a>
                    	<!-- <h5 class="offcanvas-title text-warning" id="offcanvasNavbarLabel">???????????? ???????????????</h5>  -->
                        <button type="button" class="btn-close btn-warning" data-bs-dismiss="offcanvas"
                            aria-label="Close"></button>
                    </div>
                    
                    <hr color="gold">
				
                </div>
            </div>
        </nav>
        <!-- Main -->
        <div id="main">

            <!-- Me -->
            <article id="home" class="panel intro">
                <header>
                    <h1 class="text-warning">SMART BEEHIVE</h1>
                    <p>??????????????? ??? ???????????????</p>
                </header>
                <a href="#work" class="jumplink pic">
                    <span class="text-warning arrow icon solid fa-chevron-righ t"><span>See my work</span></span>

                </a>
            </article>
            <!-- ????????? -->
          
            <article id="login" class="panel">
            <% if(user != null) { %>
                <header>
                    <h2 class="text-warning">?????????</h2>
                </header>
                <form action="Login.do" method="post">
                    <div>
                        <div class="row">
                            <div class="col-6">
                                <input type="text" name="mbid" placeholder="???????????? ???????????????" />
                            </div>
                            <div class="col-6 ">
                                <input type="text" name="mbpw" placeholder="??????????????? ???????????????" />
                            </div>
                            <div class="col-6">
                            </div>
                            <!-- <button type="button" class="btn btn-warning">?????????</button> -->
                            <input type="submit" value="?????????" class="btn btn-warning">
                        </div>
                    </div>
                </form>
              <% } else { %>
               <a href = "Logout.do">????????????</a>
               <% } %>
            </article>
            
<!-- 
            <article id="member" class="panel">
                <header>
                    <h2 class="text-warning">????????????</h2>
                </header>
                <div class="col-sm-12 col-md-offset-3 ">
                    <form method="post" role="form" action="Register.do">
                        <div class="form-group">
                            <label for="mbid">?????????</label>
                            <input type="text" name="mbid" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="mbpw">????????????</label>
                            <input type="password" name="mbpw" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="mbname">??????</label>
                            <input type="text" name="mbname" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="mbage">??????</label>
                            <input type="text" name="mbage" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="mbjob">??????</label>
                            <input type="text" name="mbjob" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="mbtel">????????????</label>
                            <input type="text" name="mbtel" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="mbregion">??????</label>
                            <input type="text" name="mbregion" class="form-control">
                        </div>
                        <br>

                        <div class="form-group text-center">
                        <input type="submit" value="????????????">                           
                        

                        </div>
                    </form>
                </div>

            </article>


            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
                crossorigin="anonymous"></script>
 -->
            <!-- ??????????????? -->

            <!-- ???????????? ????????? -->
            <article id="work" class="panel">
                <header>
                    <h2 class="text-warning text-bold">Smart Beehive ??????</h2>
                    <h6 class="text-warning">?????? ????????? ????????? ????????? ?????????</64>
                </header>
                <div class="container text-left">

                    <div class="row">
                        <div class="col">
                            <div class="card" style="width: 40rem;">
                                <img src="http://rda.go.kr/webzine/2022/04/images/sub1-2_img03.jpg"
                                    class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">????????? ?????? ???-??????(Bee-Guard)</h5>
                                    <p class="card-text">????????? ????????? ????????? ????????? ???????????? ????????? ??? ??????</p>
                                    <p class="card-text">?????????????????? ????????? ???????????? ????????? ????????? IOT ??????????????????.</p>
                                    </p>

                                </div>
                            </div>
                        </div>


                        <div class="col">
                            <div class="card" style="width: 40rem;">
                                <img src="https://image.newsis.com/2021/02/14/NISI20210214_0000690069_web.jpg?rnd=20210214050513"
                                    class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">????????? ??????(Smart Beehive)</h5>
                                    <p class="card-text">????????? ????????? ????????? ???????????? ???????????? ?????? ?????? ?????? ?????????,
                                    <p class="card-text">?????????????????? ????????? ????????? ????????? ?????? ???????????????.</p>
                                </div>
                            </div>
                        </div>


                        <div class="col">
                            <div class="card" style="width:40rem;">
                                <img src="https://cdn.newspenguin.com/news/photo/202203/10913_32455_2928.jpg"
                                    class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">????????? ?????? ?????????(Wasp capture machine)</h5>
                                    <p class="card-text">?????? ????????? ????????? ??? ???????????? ??????, ????????? ?????? ???????????? ?????????????????? ???????????? ????????? ????????????,
                                        ???????????? ?????? ????????? ???????????? ????????? ?????????.
                                    </p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="container text-center">
                    <a href="#" class="center btn btn-warning">HOME</a>
                </div>

            </article>
            <!-- ????????????  ??????-->
            
            <article id="dashboard" class="panel">
                <header>
                    <h2 class="text-warning">????????????</h2>
                    <p>?????? ?????? ?????? ????????? ??????, ??????????????? ???????????????</p>
                    <br>

                </header>
               
                <table class="table table-bordered text-center ">
                    <h5 class="text-center ">????????? ?????? ?? ?????? ?? ??????</h5>
                    <br>

                    <tr class="bg-warning">
                        <td>??????</td>
                        <td>??????</td>
                        <td>??????</td>
                        <td>??????</td>
                    </tr>
                    <tr>
                        <td>
                            1
                        </td>
                        <td>
                            33
                        </td>
                        <td>
                            45
                        </td>
                        <td>
                            15
                        </td>
                    </tr>
                    <tr>
                        <td>
                            2
                        </td>
                        <td>
                            23
                        </td>
                        <td>
                            34
                        </td>
                        <td>
                            15
                        </td>
                    </tr>
                    <tr>
                        <td>
                            3
                        </td>
                        <td>
                            18
                        </td>
                        <td>
                            29
                        </td>
                        <td>
                            19
                        </td>
                    </tr>
                    <tr>
                        <td>
                            4
                        <td>
                            32
                        </td>
                        <td>
                            41
                        </td>
                        <td>
                            12
                        </td>
                    </tr>
                    <tr>
                        <td>
                            5
                        <td>
                            23
                        </td>
                        <td>
                            37
                        </td>
                        <td>
                            12
                        </td>
                    </tr>
                </table>
                <br>
                <table class="table table-bordered text-center">
                    <h5 class="text-center">?????? ?????????</h5>
                    <br>
                    <tr class="bg-warning">
                        <td>
                            ??????
                        </td>
                        <td>
                            ?????? ??????(??????)
                        </td>
                        <td>
                            ????????? ??????(%)
                        </td>
                    </tr>
                    <tr>
                        <td>
                            1
                        </td>
                        <td>
                            3
                        </td>
                        <td>
                            50
                        </td>
                    </tr>
                    <tr>
                        <td>
                            2
                        </td>
                        <td>
                            3
                        </td>
                        <td>
                            50
                        </td>
                    </tr>
                    <tr>
                        <td>
                            2
                        </td>
                        <td>
                            3
                        </td>
                        <td>
                            50
                        </td>
                    </tr>
                </table>
                <div class="chart-container" style="position: relative; height:40vh; width:30vw">
       				<canvas id="myChart" width="600" height="300"></canvas>
      			 </div>
      			 <script>
             	var t = [];
           		var h = [];
           		var w = [];
             	var t2 = [];
           		var h2 = [];
           		var w2 = [];
    function loadFn() {
		console.log('??????');
		
		
		const random = () => {
			  return Math.round(Math.random() * 100) + 20
			}
		const random1 = () => {
			  return Math.round(Math.random() * 10) + 20
			}
		const random2 = () => {
			  return Math.round(Math.random() * 25) + 40
			}
		const random3 = () => {
			  return Math.random() * 10
			}
		
		const randomData = () => {
			  return [
			    random(),
			    random(),
			    random(),
			    random(),
			    random(),
			    random(),
			    random(),
			    random(),
			    random(),
			    random(),
			    random(),
			    random()
			  ]
			}
		
        $.ajax({
            url: "Load.do",		// ???????????? ????????? ?????? ??????
            dataType : "json",
            success: function(info){	// ???????????? ??????????????? ??????. ??????????????? data ??????
            
            	$.each(info, function(index, obj) {
            		t.push(Number(obj.bhTemp));
            		h.push(Number(obj.bhHumid));
            		w.push(Number(obj.bhWeight)/100);
            		
            		//t.push(Math.floor(Math.random() * 30));
            	});
            	t.reverse();
        		h.reverse();
        		w.reverse();
            	
            	const labels = ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24    (H)'];

  const data = {
    labels: labels,
    datasets: [{
      label: '??????',
      backgroundColor: 'rgb(255, 99, 132)',
      borderColor: 'rgb(255, 99, 132)',

      data: t,
    },
       {
         label: '??????',
         backgroundColor: 'rgb(0, 191, 255)',
         borderColor: 'rgb(0, 191, 255)',
         data: h,
       },
     {
         label: '??????',
         backgroundColor: 'rgb(255, 255, 0)',
         borderColor: 'rgb(255, 255, 0)',
         data: w,
       }]
     };

  const config = {
    type: 'line',
    data: data,
    options: {
       responsive:false,
       text: '',
       indexAxis: ''
    }
  };

  const myChart = new Chart(
          document.getElementById('myChart'),
          config
        );
  
  const next = () =>  { $.ajax({
      url: "Load2.do",		// ???????????? ????????? ?????? ??????
      dataType : "json",
      success: function(info){	// ???????????? ??????????????? ??????. ??????????????? data ??????
      console.log(info);

      		t2 =Number(info[0].bhTemp);
      		h2 =Number(info[0].bhHumid);
      		w2 =Number(info[].bhWeight)/1000;

      	var n = [];
      	n.push(t2);
      	n.push(h2);
      	n.push(w2);
      	myChart.data.datasets[0].data.push(n[0]); //????????? ??????
		myChart.data.datasets[1].data.push(n[1]); //????????? ??????
		myChart.data.datasets[2].data.push(n[2]); //????????? ??????
		myChart.update() //????????????
      }
  	})
  }
//  let randomUserCount1 = 0
//  let randomUserCount2 = 0
//  let randomUserCount3 = 0
	const fakeUsersCount = () => {
//		  randomUserCount1 = random1();
//		  randomUserCount2 = random2();
//		  randomUserCount3 = random3();
		  myChart.data.datasets[0].data.splice(0, 1) //????????? ??????
		  myChart.data.datasets[1].data.splice(0, 1) //????????? ??????
		  myChart.data.datasets[2].data.splice(0, 1) //????????? ??????
		  next();
		}

		setInterval(() => { //?????? ????????? ????????? ??????????????? ?????? ?????????
		  fakeUsersCount()
		}, 5000)
            },
            error : function(){
                alert('?????? ??????');
    		}
        }) 	
     }
   	loadFn();
   	

 </script>
 
 
 
            </article>
            <!-- ???????????? ??? -->

            <!--??????-->
            <article id="weather" class="panel ">

                <h2 class="text-warning  text-bold">????????????</h2>
                <br>
                <form action="#">

                    <body onload="DefaultScreen()">
                        <center>
                            <div class="weather">
                                <h1 id="Para1"></h1>
                                <p></p><input type="text" id="cityInput" placeholder="????????? ???????????????(ENG)"></p>
                                <a href="#link" class="btn btn-warning" onclick="GetInfo()">?????? ??????</a>

                                <br>
                                <br>
                                <h2 id="cityName"></h2>
                                <br>
                                <br>
                                <br>
                                <br>
                            </div>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>
                            <br>

                        </center>

                        <div id="weatherContainer">
                            <div id="iconsContainer">
                                <div class="icons">
                                    <p class="weather" id="day1"></p>
                                    <div class="image"><img src="dots.png" class="imgClass" id="img1"></div>
                                    <p class="minValues" id="day1Min">Loading...</p>
                                    <p class="maxValues" id="day1Max">Loading...</p>
                                    <p class="humidity" id="day1humidity"></p>


                                </div>
                                <div class="icons">
                                    <p class="weather" id="day2"></p>
                                    <div class="image"><img src="dots.png" class="imgClass" id="img2"></div>
                                    <p class="minValues" id="day2Min">Loading...</p>
                                    <p class="maxValues" id="day2Max">Loading...</p>
                                    <p class="humidity" id="day2humidity"></p>

                                </div>
                                <div class="icons">
                                    <p class="weather" id="day3"></p>
                                    <div class="image"><img src="dots.png" class="imgClass" id="img3"></div>
                                    <p class="minValues" id="day3Min">Loading...</p>
                                    <p class="maxValues" id="day3Max">Loading...</p>
                                    <p class="humidity" id="day3humidity"></p>

                                </div>
                                <div class="icons">
                                    <p class="weather" id="day4"></p>
                                    <div class="image"><img src="dots.png" class="imgClass" id="img4"></div>
                                    <p class="minValues" id="day4Min">Loading...</p>
                                    <p class="maxValues" id="day4Max">Loading...</p>
                                    <p class="humidity" id="day4humidity"></p>


                                </div>
                                <span class="icons">
                                    <p class="weather" id="day5"></p>
                                    <div class="image"><img src="dots.png" class="imgClass" id="img5"></div>
                                    <p class="minValues" id="day5Min">Loading...</p>
                                    <p class="maxValues" id="day5Max">Loading...</p>
                                    <p class="humidity" id="day5humidity"></p>
                            </div>
                        </div>

                </form>
            </article>


            <!--?????? ?????????-->
            <!--????????????-->
            <article id="inform" class="panel ">
                <header>
                    <h2 class="text-warning  text-bold">????????????</h2>
                </header>
                <div class="container text-center">
                    <div class="row">
                        <div class="col">
                            <div class="card" style="width: 18rem;">
                                <img src="http://rda.go.kr/webzine/2022/04/images/sub1-2_img03.jpg"
                                    class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">????????????</h5>
                                    <p class="card-text"> ???????????? ??????????????????
                                    </p>
                                    <br>
                                    <a href="https://www.korapis.or.kr/jsp/main.jsp" class="btn btn-warning">????????????</a>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card" style="width: 18rem;">
                                <img src="https://image.newsis.com/2021/02/14/NISI20210214_0000690069_web.jpg?rnd=20210214050513"
                                    class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">???????????? ??????</h5>
                                    <p class="card-text">????????? ???????????? ?????? ??????.</p>
                                    <br>
                                    <a href="https://www.korapis.or.kr/jsp/sub3-3.jsp" class="btn btn-warning">????????????</a>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card" style="width: 18rem;">
                                <img src="https://cdn.newspenguin.com/news/photo/202203/10913_32455_2928.jpg"
                                    class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">???????????? ??????</h5>
                                    <p class="card-text">?????? ????????????????????? ????????????.
                                    </p>
                                    <br>
                                    <a href="https://www.korapis.or.kr/jsp/sub5-3.jsp" class="btn btn-warning">????????????</a>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card" style="width: 18rem;">
                                <img src="https://image.newsis.com/2021/02/14/NISI20210214_0000690069_web.jpg?rnd=20210214050513"
                                    class="card-img-top">
                                <div class="card-body">
                                    <h5 class="card-title">????????? ?????? ??????</h5>
                                    <p class="card-text">???????????? (???) ?????? ?????? ??????</p>
                                    <br>
                                    <a href="https://www.korapis.or.kr/book_beeplant/index.html"
                                        class="btn btn-warning">????????????</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </article>
            <!--???????????????-->

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
                                <tr>
                                    <td>N</td> <!--????????????-->
                                    <td class="board_list_wrap2">
                                        <a href="/" class="">????????? ?????????1</a>
                                    </td>
                                    <td>?????????</td>
                                    <td>2023-01-20</td>
                                    <td>123123</td>
                                </tr>
                                <tr>
                                    <td>N</td> <!--????????????-->
                                    <td class="board_list_wrap2">
                                        <a href="#">????????? ?????????2</a>
                                    </td>
                                    <td>?????????</td>
                                    <td>2023-01-20</td>
                                    <td>123123</td>
                                </tr>
                                <tr>
                                    <td>N</td> <!--????????????-->
                                    <td class="board_list_wrap2">
                                        <a href="#">????????? ?????????3</a>
                                    </td>
                                    <td>?????????</td>
                                    <td>2023-01-20</td>
                                    <td>123123</td>
                                </tr>
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
                            
                            <button type="submit" class="btn-open-popup btn-warning">????????? ??????</button>
                        </div>
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
                        </script>

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
<%-- 
    Document   : BMIcal
    Created on : Dec 5, 2023, 12:43:19 PM
    Author     : Lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- By Ali Aslan -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>BMI Calculator</title>
    <style>
        /* Import Google Font - Poppins */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap');
    *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
    }
    
    body{
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
    background: rgb(97,138,254,0.9);
    }
/* 
  .container {
    min-width: 250px;
  } */

  .box {
    width: 500px;
    background: #fafafa;
    border-radius: 12px;
    text-align: center;
    box-shadow: 2px 2px 20px 5px rgba(0,0,0,0.5);

  }


  h1 {
    color: rgb(0, 0, 0, 0.7);
    font-weight: bold;
    font-size: 36px;
    padding: 30px 0;
    
  }


    
    .content {
        padding: 0 30px;
        
    }
    
    .input {
        background: #fff;
        box-shadow: 0px 0px 95px -30px rgba(0, 0, 0, 0.15);
        border-radius: 12px;
        padding: 20px 0;
        margin-bottom: 20px;
    }

    
    .input label {
        display: block;
        font-size: 18px;
        font-weight: 600;
        color: #000;
        margin-bottom: 20px;
    }
    .input input {
        outline: none;
        border: none;
        border-bottom: 1px solid #4f7df9;
        width: 50%;
        text-align: center;
        font-size: 28px;
        font-family: "Nunito", sans-serif;
    }


    
    .inputW {
        background: #fff;
        box-shadow: 0px 0px 95px -30px rgba(0, 0, 0, 0.15);
        border-radius: 12px;
        padding: 10px 0;
        margin-bottom: 20px;
    }


    .inputW label {
        display: block;
        font-size: 18px;
        font-weight: 600;
        color: #000;
        margin-bottom: 20px;
    }
   .inputW input {
        outline: none;
        border: none;
        border-bottom: 1px solid #4f7df9;
        width: 50%;
        text-align: center;
        font-size: 28px;
        font-family: "Nunito", sans-serif;
    }

    .inputH {
        background: #fff;
        box-shadow: 0px 0px 95px -30px rgba(0, 0, 0, 0.15);
        border-radius: 12px;
        padding: 10px 0;
        margin-bottom: 20px;
        margin-right: 20px;
    }


    .inputH label {
        display: block;
        font-size: 18px;
        font-weight: 600;
        color: #000;
        margin-bottom: 20px;
    }
   .inputH input {
        outline: none;
        border: none;
        border-bottom: 1px solid #4f7df9;
        width: 50%;
        text-align: center;
        font-size: 28px;
        font-family: "Nunito", sans-serif;
    }

  
button.calculate {
    cursor: pointer;
    font-family: "Nunito", sans-serif;
    color: #fff;
    background: rgb(97,138,254,1);
    font-size: 16px;
    border-radius: 7px;
    padding: 12px 0;
    width: 100%;
    outline: none;
    border: none;
    transition: all 0.5s;
  }
  button.calculate:hover {
    background: #0044ff;
  }

  
  
.result {
    padding: 10px 20px;
  }
  .result p {
    font-weight: 600;
    font-size: 22px;
    color: #000;
    margin-bottom: 15px;
  }
  .result #result {
    font-size: 36px;
    font-weight: 900;
    color: #4f7df9;
    background-color: #eaeaea;
    display: inline-block;
    padding: 7px 20px;
    border-radius: 55px;
    margin-bottom: 25px;
  }
  #comment {
    color: #4f7df9;
    font-weight: 800;
  }

.comment {
    display: none;
    border: dashed 1px;
    border-radius: 7px;
    padding: 5px;
}

.footer {
    display: flex;
    justify-content: start;
    align-items: center;
    padding: 10px 15px
}

.footer-text {
    text-decoration: none;
    color: rgba(40, 40, 40, 0.8);
    font-family: 'Poppins', sans-serif;
    font-weight: 200;
    font-size: 14px;
    transition: all 0.5;
}

.footer-text:hover {
    color: rgba(40, 40, 40, 1);
}

.gender {
    display: flex;
    justify-content: space-around;
    align-items: center;
    align-content: center;
    background: #fff;
    box-shadow: 0px 0px 95px -30px rgba(0, 0, 0, 0.15);
    border-radius: 12px;
    padding: 20px 0;
    margin-bottom: 20px;
}

  /* Style for Radio */
.gender .container {
    display: block;
    position: relative;
    padding-left: 35px;
    /* margin-bottom: 12px; */
    margin-top: 7px;
    cursor: pointer;
    font-size: 22px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }
  
  /* Hide the browser's default radio button */
  .gender .container input {
    position: absolute;
    opacity: 0;
    cursor: pointer;
  }
  
  /* Create a custom radio button */
  .checkmark {
    position: absolute;
    top: 0;
    left: 0;
    height: 25px;
    width: 25px;
    background-color: #eee;
    border-radius: 50%;
  }
  
  /* On mouse-over, add a grey background color */
  .gender .container:hover input ~ .checkmark {
    background-color: #ccc;
  }
  
  /* When the radio button is checked, add a blue background */
  .gender .container input:checked ~ .checkmark {
    background-color: #2196F3;
  }
  
  /* Create the indicator (the dot/circle - hidden when not checked) */
  .checkmark:after {
    content: "";
    position: absolute;
    display: none;
  }
  
  /* Show the indicator (dot/circle) when checked */
  .gender .container input:checked ~ .checkmark:after {
    display: block;
  }
  
  /* Style the indicator (dot/circle) */
  .gender .container .checkmark:after {
       top: 9px;
      left: 9px;
      width: 8px;
      height: 8px;
      border-radius: 50%;
      background: white;
  }
  /* END Style for Radio */

.containerHW {
    display: flex;
    justify-content: space-around;
    align-items: center;
}
  




/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 300px;

}

/* Modal Content */
.modal-content {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 600px;
  border-radius: 10px;
  box-shadow: #393c76 -1px 2px 2px 1px;
}

#modalText {
  padding-top: 8px;
  padding-right: 5px;
  font-size: 18px;
  font-family: 'Poppins', sans-serif;
  color: rgb(24, 23, 23);
}

.modal-wrong {
border: 2px solid red;
}

.modal-correct {
  border: 2px solid green;
  }

/* The Close Button */
.close {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
  cursor: pointer;
  transition: all 0.3s;
}

.close:hover {
  color: #d41111; 
}





.linkDownload {
    position: fixed;
    background-color: #d12322;
    margin: 20px;
    padding: 10px 10px;
    left: -0px;
    border-radius: 5px;
    bottom: -0px;
    font-size: 16px;
    font-weight: 400;
    color: #fff;
    text-decoration: none;
    text-transform: capitalize;
    transition: all 0.43s ease-in-out;


  }

  
.linkDownload i {
    padding-left: 7px;
  }
  
  .linkDownload:hover {
    text-decoration: none;
    background-color: black;
  }
  

@media (max-width: 700px){


    .box {
        width: 380px;
    }



    
    .input label {

        font-size: 18px;
    }

    .inputH label, .inputW label {
        font-size: 14px;
    }


    .input input, .inputH input, .inputW input{
        font-size: 24px;
    }


    .modal-content {

      width: 380px;
    }



}
    </style>
</head>
<body>
    
    <div class="container">
        <div class="box">
          <h1>BMI Calculator</h1>
          <div class="content">


            <div class="input">
                <label for="height">Age</label>
                <input type="text" class="text-input" id="age" autocomplete="off" required/>
            </div>

            <div class="gender">

                <label class="container">
                    <input type="radio" name="radio" id="m"><p class="text">Male</p>
                    <span class="checkmark"></span>
                  </label>


                <label class="container">
                    <input type="radio" name="radio" id="f" ><p class="text">Female</p>
                      <span class="checkmark"></span>
                    </label>

            </div>

            <div class="containerHW">
            <div class="inputH">
              <label for="height">Height(cm)</label>
              <input type="number" id="height" required>
            </div>

            <div class="inputW">
              <label for="weight">Weight(kg)</label>
              <input type="number" id="weight" required>
            </div>
          </div>

            <button class="calculate" id="submit" onclick="calculate();">Calculate BMI</button>
          </div>
          <div class="result">
            <p>Your BMI is</p>
            <div id="result">00.00</div>
            <p class="comment"></p>
          </div>
          <div class="footer"><a class="footer-text" target="_blank" href="https://myskypower.net/">By My Sky Power</a></div>
        
      

        </div>
      </div>

      <!--<a href="#" target="_blank" class="linkDownload">Download Source Code</a>-->


      
    <!-- The Modal -->
    <div id="myModal" class="modal">
      <!-- Modal content -->
    <div class="modal-content">
      <span class="close">&times;</span>
      <p id="modalText"></p>
    </div></div>



    
<script src="script.js"></script>

</body>
</html>

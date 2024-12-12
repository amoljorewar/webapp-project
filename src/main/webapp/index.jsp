<!DOCTYPE html>
<html>

<head>
    <title>Age Calculator</title>
    <link rel="stylesheet" 
          href="style.css" />
</head>

<body>
    <div class="card">
        <header>
            <h1>MY AGE CALCULATOR</h1>
        </header>

        <div>
            <label>Enter your Date of Birth</label><br>
            <input id="inputDob" 
                   type="date" 
                   value="2000-01-01" />
        </div>
        <br />

        <!-- Take the date from which age is to be calculated -->
        <div>
            <label>Current Date</label><br>
            <input id="cdate"
                   type="date" 
                   value="" />
        </div>
        <br />

        <button type="button" 
                onclick="getDOB()">
            Calculating
        </button>
        <br />
        <div id="currentAge"></div>
        <script src="script.js"></script>
    </div>
</body>

</html>

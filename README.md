

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Lear Hub - Script</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Custom Google font-->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@100;200;300;400;500;600;700;800;900&amp;display=swap" rel="stylesheet" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <style>
    body {
        color: white;
        font-family: "Poppins", sans-serif;
        margin: 0;
        background-color: #1e1e1e;
    }

    /* Script Kartları için Grid Yapısı */
    .script-list {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); /* Kartlar yan yana, minimum 300px genişlik */
        gap: 20px; /* Kartlar arası boşluk */
        padding: 20px; /* Container padding'i */
    }

    .script-card {
        background: rgba(0, 0, 0, 0.8);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 4px 10px rgba(255, 0, 0, 0.3);
        transition: 0.3s ease-in-out;
        display: flex;
        flex-direction: column; /* İçeriği dikeyde hizala */
    }

    .script-card h3 {
        margin-top: 0;
        font-size: 18px;
    }

    .script-card p {
        font-size: 14px;
        margin: 5px 0;
    }

    .script-card pre {
        background: rgba(255, 255, 255, 0.1);
        padding: 10px;
        border-radius: 5px;
        overflow-x: auto;
        font-size: 12px;
        flex-grow: 1; /* Kod bloğunu esnet, kartlar eşit yükseklikte olsun */
    }

    /* Butonlar */
    .copy-btn, .delete-btn {
        background: linear-gradient(45deg, black, red);
        border: none;
        color: white;
        font-weight: bold;
        padding: 10px 20px;
        border-radius: 5px;
        cursor: pointer;
        transition: 0.3s;
        margin: 10px 5px;
    }

    .copy-btn:hover, .delete-btn:hover {
        background: linear-gradient(45deg, red, black);
        transform: scale(1.05);
    }

    .delete-btn {
        background: linear-gradient(45deg, black, darkred);
    }

    .delete-btn:hover {
        background: linear-gradient(45deg, darkred, black);
    }

    .search-bar {
    width: 80%; /* Genişliği ayarla */
    max-width: 500px; /* Maksimum genişlik */
    padding: 12px;
    font-size: 16px;
    border: 2px solid white;
    border-radius: 5px;
    transition: all 0.3s ease-in-out;
    background-color: #222;
    color: white;
    margin-top: 80px;
    margin-left: auto; /* Otomatik sol boşluk */
    margin-right: auto; /* Otomatik sağ boşluk */
    display: block; /* Blok element olarak ayarla */
}

/* Kırmızı-Siyah Geçişli Saydam Arka Plan */
    .custom-dropdown {
        background: linear-gradient(135deg, rgba(255, 0, 0, 0.85), rgba(0, 0, 0, 0.9)) !important; /* Gradient kırmızı-siyah */
        border: 2px solid white;
        border-radius: 8px;
        overflow: hidden;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.5);
        transition: transform 0.2s ease-in-out, opacity 0.2s ease-in-out;
    }

    .custom-dropdown .dropdown-item {
        color: white !important; /* Yazılar beyaz */
        font-weight: bold;
        position: relative;
        transition: all 0.3s ease-in-out;
    }

    /* Yazı Hover Efekti (Sağa Kayma + Parlama) */
    .custom-dropdown .dropdown-item:hover {
        background: rgba(255, 255, 255, 0.2) !important;
        transform: translateX(8px);
        text-shadow: 0 0 10px rgba(255, 255, 255, 0.9);
    }

    /* Ayracı Beyaz ve Hafif Saydam Yap */
    .custom-dropdown .dropdown-divider {
        border-color: rgba(255, 255, 255, 0.6) !important;
    }

    /* Açılırken Küçük Bir Animasyon */
    .custom-dropdown.show {
        transform: scale(1.05);
        opacity: 1;
    }
</style>
</style>
</head>
<body>
    <!-- Video Arkaplan -->
    <video autoplay muted loop id="background-video">
        <source src="https://motionbgs.com/media/5582/flowing-dots.960x540.mp4" type="video/mp4">
        Tarayıcınız videoyu desteklemiyor.
    </video>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg py-3"> 
        <div class="container px-5">
            <a class="navbar-brand" href="index.php"><span class="fw-bolder text-primary">Lear Hub</span></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0 small fw-bolder">
                    <li class="nav-item"><a class="nav-link" href="index.php">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="scripts.php">Scripts</a></li>
                    <li class="nav-item"><a class="nav-link" href="projects.php">Projects</a></li>
                    <li class="nav-item"><a class="nav-link" href="contact.php">Contact</a></li>

                                            <li class="nav-item"><a class="nav-link" href="login.php">Login</a></li>
                                    </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="search-container">
            <input type="text" class="search-bar" id="searchInput" placeholder="Search for a script...">
        </div>

        <div class="add-new">
            <a href="add_script.php" style="color: red; text-decoration: none; display: block; text-align: center; width: 100%;" class="nihatpro2">Add New Script</a>
        </div>

                    <div style="background: red; color: white; padding: 10px; text-align: center;">
                You must be logged in to add a script. <a href="login.php" style="color: yellow;">Login</a>
            </div>
        
       <div class="script-list">
                    <div class="script-card" data-title="sadasd">
                <h3>sadasd</h3>
                <p>By: sadsadsdasd</p>
                <p>asdasdasdas</p>
                <pre>dasdsdadsad</pre>
                                <div class="copy-container">
                    <button class="copy-btn" data-script="dasdsdadsad">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="psalm.tech (dh games">
                <h3>Psalm.tech (dh games</h3>
                <p>By: SadGuy1to10</p>
                <p>U can choose and it&#039;s gui so u can pick lock or button u can adjust some sets  it&#039;s basically OP (OverPower)</p>
                <pre>loadstring(game:HttpGet(&quot;https://gist.githubusercontent.com/CongoOhioDog/cc34beefcf58fae8a4b9f8fc946cbc6f/raw/34e758b5c6d764fca98833073ac491dad2d34537/gistfile1.txt&quot;))()</pre>
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://gist.githubusercontent.com/CongoOhioDog/cc34beefcf58fae8a4b9f8fc946cbc6f/raw/34e758b5c6d764fca98833073ac491dad2d34537/gistfile1.txt&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="lear animations hub">
                <h3>Lear Animations Hub</h3>
                <p>By: Lear</p>
                <p>There are a lot of animations and emotes, good games</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/Lear/refs/heads/main/LearAnimation&quot;))()</pre>
                                    <img src="uploads/67def17be0e51.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/Lear/refs/heads/main/LearAnimation&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="1humano hub">
                <h3>1Humano Hub</h3>
                <p>By: glee</p>
                <p>wdwaww</p>
                <pre>loadstring(game:HttpGet(&quot;https://pastebin.com/raw/fz7kWzsw&quot;))()</pre>
                                    <img src="uploads/1742659637_Screenshot 2025-03-20 145924.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://pastebin.com/raw/fz7kWzsw&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="wisi&#039;i universal project.">
                <h3>wisI&#039;i Universal Project.</h3>
                <p>By: Lear</p>
                <p>support:// Xeno/Solara/Luna/ AndMore

-- Discord // Join to share various scripts! ????

https://discord.gg/XSUduWp52q</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/wisl884/wisl-i-Universal-Project1/refs/heads/main/Wisl&#039;i%20Universal%20Project%20new%20UI.lua&quot;, true))()</pre>
                                    <img src="uploads/67ded5691dea5.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/wisl884/wisl-i-Universal-Project1/refs/heads/main/Wisl&#039;i%20Universal%20Project%20new%20UI.lua&quot;, true))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="hug scirpt">
                <h3>Hug Scirpt</h3>
                <p>By: LearHub</p>
                <p>Hug</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG&quot;))()</pre>
                                    <img src="uploads/67deac17014d6.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/JSFKGBASDJKHIOAFHDGHIUODSGBJKLFGDKSB/fe/refs/heads/main/FEHUGG&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="roblox fe vehicle fly v3">
                <h3>Roblox fe vehicle fly v3</h3>
                <p>By: LearHub</p>
                <p>Fe Fly</p>
                <pre>loadstring(game:HttpGet(&#039;https://raw.githubusercontent.com/ScpGuest666/Random-Roblox-script/refs/heads/main/Roblox%20Fe%20Vehicle%20Fly%20GUI%20script&#039;))()</pre>
                                    <img src="uploads/67de9ee04ba4e.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&#039;https://raw.githubusercontent.com/ScpGuest666/Random-Roblox-script/refs/heads/main/Roblox%20Fe%20Vehicle%20Fly%20GUI%20script&#039;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="tower hub">
                <h3>Tower Hub</h3>
                <p>By: LearHub</p>
                <p>Supports all tower games</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/maximilianscho/towerhub/refs/heads/main/source.lua&quot;,true))()</pre>
                                    <img src="uploads/67de9de7879da.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/maximilianscho/towerhub/refs/heads/main/source.lua&quot;,true))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="lear hub">
                <h3>Lear Hub</h3>
                <p>By: Lear</p>
                <p>Basic Menu
They are very functions
Basic Key System</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/Lear/refs/heads/main/Lear%20Hub&quot;))()</pre>
                                    <img src="uploads/67de9572ca0a8.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/Lear/refs/heads/main/Lear%20Hub&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="universal aimbot">
                <h3>Universal Aimbot</h3>
                <p>By: Lear</p>
                <p>Aimbot And Esp</p>
                <pre>loadstring(game:HttpGet(&#039;https://pastebin.com/raw/5rwtLBN1&#039;))()</pre>
                                    <img src="uploads/67de9509ea19c.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&#039;https://pastebin.com/raw/5rwtLBN1&#039;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="[tÜrk] sohbet oyunu">
                <h3>[TÜRK] Sohbet Oyunu</h3>
                <p>By: Lear</p>
                <p>Money Scirpt</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/turk&quot;))()</pre>
                                    <img src="uploads/67de946a4dfa6.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/turk&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="red light green light tower????????">
                <h3>Red Light Green Light Tower????????</h3>
                <p>By: Lear</p>
                <p>End The Game</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/squid&quot;))()</pre>
                                    <img src="uploads/67de9422b8e61.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/squid&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="walk 1000 studs for money">
                <h3>Walk 1000 Studs For Money</h3>
                <p>By: Lear</p>
                <p>End Game</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/wall&quot;))()</pre>
                                    <img src="uploads/67de93c9632aa.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/wall&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="the $1,000,000 glass bridge">
                <h3>The $1,000,000 Glass Bridge</h3>
                <p>By: Lear</p>
                <p>Inf Money</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/Infmone&quot;))()</pre>
                                    <img src="uploads/67de938d9fc88.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/Infmone&quot;))()">Copy</button>
                </div>
                            </div>
                    <div class="script-card" data-title="pick right path to rich!">
                <h3>Pick Right Path to RICH!</h3>
                <p>By: Lear</p>
                <p>Inf Money</p>
                <pre>loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/Infmone&quot;))()</pre>
                                    <img src="uploads/67de9305077f8.png" alt="Script Image" class="script-image">
                    
                                <div class="copy-container">
                    <button class="copy-btn" data-script="loadstring(game:HttpGet(&quot;https://raw.githubusercontent.com/Emircxy/scirpt/refs/heads/main/Infmone&quot;))()">Copy</button>
                </div>
                            </div>
            </div>

    <script>
        document.querySelectorAll('.copy-btn').forEach(button => {
            button.addEventListener('click', function() {
                const scriptCode = this.getAttribute('data-script');
                if (scriptCode) {
                    navigator.clipboard.writeText(scriptCode).then(() => {
                        alert("Script copied!");
                    }).catch((error) => {
                        console.error("Kopyalama işlemi başarısız oldu:", error);
                    });
                }
            });
        });

        document.getElementById("searchInput").addEventListener("input", function() {
            let searchValue = this.value.toLowerCase();
            document.querySelectorAll(".script-card").forEach(script => {
                script.style.display = script.getAttribute("data-title").includes(searchValue) ? "block" : "none";
            });
        });
    </script>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>

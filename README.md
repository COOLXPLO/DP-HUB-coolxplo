<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>DP Hub – Top Roblox Scripts</title>

  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&family=Poppins:wght@600&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <style>
    :root{
      --bg1:#0a0a0a;
      --bg2:#1a0a0a;
      --primary:#ff0000;
      --secondary:#ff5555;
      --text:#ffffff;
    }

    *{margin:0;padding:0;box-sizing:border-box;font-family:'Inter',Segoe UI,sans-serif;}
    html{scroll-behavior:smooth;}
    body{
      min-height:100vh;
      overflow-x:hidden;
      color:var(--text);
      background:linear-gradient(135deg,var(--bg1),var(--bg2));
      position:relative;
    }

    canvas#bg{
      position:fixed;
      top:0; left:0;
      width:100%; height:100%;
      z-index:0;
    }

    #progress{position:fixed;top:0;left:0;height:3px;width:0;z-index:1000;background:linear-gradient(90deg,var(--primary),var(--secondary));transition:width .25s ease-out;}

    nav{
      position:fixed;top:0;left:0;width:100%;z-index:999;
      border-bottom:1px solid rgba(255,255,255,.04);
      backdrop-filter:blur(14px);
      background:rgba(16,16,20,.35);
    }
    .navwrap{max-width:1200px;margin:0 auto;padding:.9rem 1rem;display:flex;align-items:center;justify-content:space-between;}
    .brand{font-family:Poppins,Inter,Arial,sans-serif;font-size:1.15rem;font-weight:600;color:var(--primary);letter-spacing:.03em;}
    nav ul{list-style:none;display:flex;gap:2rem;}
    nav a{color:var(--text);font-weight:600;position:relative;transition:color .3s;}
    nav a::after{content:'';position:absolute;left:0;bottom:-4px;height:2px;width:0;background:var(--primary);transition:width .35s;}
    nav a:hover{color:var(--primary)}
    nav a:hover::after{width:100%}

    .menu-toggle{display:none;width:36px;height:36px;background:none;border:none;cursor:pointer;position:relative;}
    .menu-toggle span,.menu-toggle::before,.menu-toggle::after{content:'';position:absolute;left:0;width:100%;height:3px;border-radius:3px;background:var(--text);transition:.35s;}
    .menu-toggle span{top:50%;transform:translateY(-50%);} .menu-toggle::before{top:9px}.menu-toggle::after{bottom:9px}
    nav.open .menu-toggle::before{top:50%;transform:translateY(-50%) rotate(45deg)}
    nav.open .menu-toggle::after{top:50%;transform:translateY(-50%) rotate(-45deg)}
    nav.open .menu-toggle span{opacity:0}

    @media(max-width:768px){
      .menu-toggle{display:block}
      nav ul{display:none;flex-direction:column;gap:1.2rem;margin-top:1rem}
      nav.open ul{display:flex}
      nav{max-height:66px;overflow:hidden}
      nav.open{max-height:400px}
      .navwrap{flex-direction:row}
      nav.open .navwrap{flex-direction:column;align-items:flex-start;gap:.7rem}
    }

    section{max-width:1100px;margin:0 auto;padding:5rem 1rem;position:relative;z-index:1}

    .hero{min-height:80vh;display:flex;align-items:center;justify-content:center;gap:3rem;flex-wrap:wrap;padding-top:7rem;text-align:left;}
    .avatar{width:200px;height:200px;border-radius:50%;object-fit:cover;border:4px solid var(--primary);box-shadow:0 0 12px var(--primary);}
    .intro-text h1{font-size:clamp(2.8rem,6vw,4.5rem);font-weight:700;color:var(--primary);}
    .intro-text p{margin-top:1rem;font-size:1.1rem;max-width:620px;line-height:1.5}

    .grid-flex{display:flex;flex-wrap:wrap;justify-content:center;gap:2.2rem;}
    .card{
      position:relative;width:300px;padding:2rem 1rem;background:linear-gradient(135deg,rgba(255,0,0,0.17) 0%,rgba(255,85,85,0.17) 100%);
      border:1px solid rgba(255,255,255,.05);backdrop-filter:blur(28px);border-radius:1.2rem;text-align:center;overflow:hidden;
      transition:box-shadow .3s,transform .3s;cursor:pointer;color:inherit;text-decoration:none;
    }
    .card:hover{transform:translateY(-8px) scale(1.05);box-shadow:0 0 28px 5px var(--secondary);}
    .card h3{font-size:1.3rem;font-weight:700;margin-bottom:.5rem;color:var(--primary);}
    .card p{font-size:0.95rem;opacity:.85;}
    .card button{
      margin-top:1rem;
      background:var(--primary);
      color:#000;
      border:none;
      padding:.6rem 1.2rem;
      border-radius:8px;
      font-weight:600;
      cursor:pointer;
      transition:background .3s, transform .3s;
    }
    .card button:hover{background:var(--secondary);transform:scale(1.05);}

    .discord-btn {
      display:inline-block;padding:1rem 2rem;font-weight:600;color:#fff;
      background:linear-gradient(135deg, rgba(255,0,0,0.17), rgba(255,85,85,0.17));
      border:1px solid rgba(255,255,255,0.05);backdrop-filter:blur(28px);border-radius:1.3rem;text-decoration:none;
      transition:transform .3s, box-shadow .3s;
    }
    .discord-btn:hover{
      transform:translateY(-6px) scale(1.05);
      box-shadow:0 0 28px 8px var(--secondary);
    }

    footer{text-align:center;padding:3rem 1rem;font-size:.85rem;opacity:.7;}
  </style>
</head>

<body>

<canvas id="bg"></canvas>
<div id="progress"></div>

<nav id="siteNav">
  <div class="navwrap">
    <span class="brand">DP Hub</span>
    <button class="menu-toggle" id="menuToggle"><span></span></button>
    <ul>
      <li><a href="#home" class="active-tab">Home</a></li>
      <li><a href="#scripts">Scripts</a></li>
      <li><a href="#deobfuscator">Deobfuscator</a></li>
      <li><a href="#about">About</a></li>
    </ul>
  </div>
</nav>

<section id="home" class="hero">
  <img src="https://yt3.googleusercontent.com/VZFsH87J_cdIIAUJgNQEj0SYUSCu9xYOwAvFj73Sbrr9u6914UXUHEBnLhdOPMbDNQWuJzG3Omc=s900-c-k-c0x00ffffff-no-rj" alt="DP Hub Avatar" class="avatar"/>
  <div class="intro-text">
    <h1>DP Hub</h1>
    <p>The ultimate Roblox scripting hub. High-quality scripts for top executors like Dex, Delta, and Vega X.</p>
    <a href="https://discord.gg/cVX9QpPkYE" target="_blank" class="discord-btn">Join Discord</a>
  </div>
</section>

<section id="scripts">
  <h2 style="text-align:center;margin-bottom:2rem;">Top Roblox Scripts</h2>
  <div class="grid-flex" id="scriptContainer"></div>
</section>

<section id="deobfuscator">
  <h2 style="text-align:center;margin-bottom:1.5rem;color:var(--primary)">DP Hub Deobfuscator</h2>

  <div class="main-container" style="
    max-width:900px;
    margin:0 auto;
    padding:2rem;
    background:rgba(255,0,0,0.12);
    border:1px solid rgba(255,255,255,.05);
    border-radius:1.3rem;
    backdrop-filter:blur(22px);
  ">

    <header style="text-align:center;margin-bottom:1.5rem;">
      <h1 style="font-family:Poppins;font-size:2.4rem;">
        DP Hub <span class="accent" style="color:var(--primary)">Deobfuscator</span>
      </h1>
      <p style="opacity:.8;">Advanced Lua & MoonSec Script Recovery</p>
    </header>

    <div class="upload-zone" id="drop-zone" style="
      border:2px dashed rgba(255,255,255,.2);
      padding:2rem;
      text-align:center;
      border-radius:1.2rem;
      background:rgba(0,0,0,0.2);
    ">
      <div class="icon-container" style="font-size:3rem;margin-bottom:1rem;color:var(--primary);">
        <i class="fa-solid fa-file-code"></i>
      </div>

      <h3>Drag & Drop or Paste Code</h3>
      <p style="opacity:.7;">Supported formats: .txt, .lua</p>

      <input type="file" id="file-input" accept=".txt,.lua" hidden>
      <button class="browse-btn" onclick="document.getElementById('file-input').click()" style="
        margin-top:1rem;
        background:var(--primary);
        padding:.6rem 1.4rem;
        font-weight:600;
        border:none;
        border-radius:8px;
        cursor:pointer;
      ">
        Browse Files
      </button>

      <div class="divider" style="margin:1.5rem 0;opacity:.6;">OR</div>

      <textarea id="text-input"
        placeholder="Paste your obfuscated script here..."
        style="
          width:100%;
          height:180px;
          padding:1rem;
          border-radius:.8rem;
          background:rgba(0,0,0,.3);
          color:white;
          border:1px solid rgba(255,255,255,.1);
          resize:vertical;
        "
      ></textarea>
    </div>

    <button id="deobf-btn" class="action-btn" style="
      margin-top:1.5rem;
      width:100%;
      padding:1rem;
      border:none;
      font-weight:600;
      border-radius:.8rem;
      background:var(--primary);
      cursor:pointer;
    ">
      <i class="fa-solid fa-wand-magic-sparkles"></i> Deobfuscate
    </button>

    <div id="status" class="status-msg" style="margin-top:1rem;text-align:center;"></div>

  </div>
</section>

<section id="about">
  <h2 style="text-align:center;margin-bottom:1.5rem;color:var(--primary)">About DP Hub</h2>
  <p style="max-width:700px;margin:0 auto 1.5rem;text-align:center">
    Made by <strong>Plo_mex</strong> &amp; <strong>IamUnknown77</strong>. DP Hub is designed for Roblox enthusiasts who love automation, customization, and fun enhancements. All scripts are free and regularly updated.
  </p>
</section>

<footer>© 2025 DP Hub. All rights reserved.</footer>

<script>
  // === MENU TOGGLE ===
  const menuToggle = document.getElementById('menuToggle');
  const siteNav = document.getElementById('siteNav');
  menuToggle.addEventListener('click', () => siteNav.classList.toggle('open'));
  window.addEventListener('resize', () => siteNav.classList.remove('open'));

  // === SCROLL PROGRESS ===
  const progress = document.getElementById('progress');
  window.addEventListener('scroll', () => {
    const winScroll = document.documentElement.scrollTop || document.body.scrollTop;
    const height = document.documentElement.scrollHeight - document.documentElement.clientHeight;
    progress.style.width = (winScroll / height) * 100 + '%';
  });

  // === SCRIPT LIST ===
  const scripts = [
    { title: "Grow a Garden", desc: "Keyless", code: `loadstring(game:HttpGet("https://coolxplo.github.io/DP-HUB-coolxplo/Garden.lua"))()` },
    { title: "99 Nights in the Forest", desc: "Fly, Float, Instant Win", code: `loadstring(game:HttpGet("https://coolxplo.github.io/DP-HUB-coolxplo/99.lua", true))()` },
    { title: "Emergency Hamburg", desc: "Made with love!", code: `loadstring(game:HttpGet("https://raw.githubusercontent.com/COOLXPLO/DP-HUB-coolxplo/refs/heads/main/EH.lua"))()` },
    { title: "Murder Mystery 2", desc: "Win Every Time", code: `loadstring(game:HttpGet('https://raw.githubusercontent.com/COOLXPLO/DP-HUB-coolxplo/refs/heads/main/MM2.lua'))()` }
  ];

  const container = document.getElementById('scriptContainer');
  scripts.forEach(s => {
    const card = document.createElement('div');
    card.className = 'card';
    card.innerHTML = `<h3>${s.title}</h3><p>${s.desc}</p><button class="copy-btn" data-code="${encodeURIComponent(s.code)}">Copy Script</button>`;
    container.appendChild(card);
  });

  document.addEventListener('click', function(e){
    if(e.target && e.target.classList.contains('copy-btn')){
      const code = decodeURIComponent(e.target.getAttribute('data-code'));
      navigator.clipboard.writeText(code);
      alert('✅ Script copied!');
    }
  });

  // === PARTICLE BACKGROUND ===
  const canvas = document.getElementById("bg");
  const ctx = canvas.getContext("2d");
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;
  const particles = [];
  for(let i=0;i<120;i++){
    particles.push({ x: Math.random()*canvas.width, y: Math.random()*canvas.height, r: Math.random()*2+1, d: Math.random()*1.5 });
  }

  function draw(){
    ctx.clearRect(0,0,canvas.width,canvas.height);
    ctx.fillStyle="white";
    for(let p of particles){
      ctx.beginPath();
      ctx.arc(p.x,p.y,p.r,0,Math.PI*2,true);
      ctx.fill();
    }
    update();
  }

  function update(){
    for(let p of particles){
      p.y+=p.d;
      if(p.y>canvas.height){p.y=0;p.x=Math.random()*canvas.width;}
    }
  }

  setInterval(draw,33);
  window.addEventListener('resize',()=>{canvas.width=window.innerWidth;canvas.height=window.innerHeight;});

  // === DEOBFUSCATOR JS INLINE ===
  const fileInput = document.getElementById('file-input');
  const textInput = document.getElementById('text-input');
  const deobfBtn = document.getElementById('deobf-btn');
  const status = document.getElementById('status');
  const dropZone = document.getElementById('drop-zone');

  if (fileInput) {
      fileInput.addEventListener('change', e => {
          const file = e.target.files[0];
          if (!file) return;
          const reader = new FileReader();
          reader.onload = ev => { textInput.value = ev.target.result; };
          reader.readAsText(file);
      });
  }

  if (dropZone) {
      dropZone.addEventListener('dragover', e => { e.preventDefault(); dropZone.style.borderColor = "var(--primary)"; });
      dropZone.addEventListener('dragleave', () => { dropZone.style.borderColor = "rgba(255,255,255,.2)"; });
      dropZone.addEventListener('drop', e => {
          e.preventDefault(); dropZone.style.borderColor = "rgba(255,255,255,.2)";
          const file = e.dataTransfer.files[0];
          if (!file) return;
          const reader = new FileReader();
          reader.onload = ev => { textInput.value = ev.target.result; };
          reader.readAsText(file);
      });
  }

  function simpleDeobfuscate(code) {
      if (!code) return "";
      code = code.replace(/\s+/g, " ");
      code = code.replace(/--\[\[[\s\S]*?\]\]/g, "");
      code = code.replace(/--.*/g, "");
      code = code.replace(/;{2,}/g, ";");
      code = code.replace(/loadstring\((.*?)\)/g, "loadstring($1)");
      return code.trim();

    if (deobfBtn) {
      deobfBtn.addEventListener('click', () => {
          let code = textInput.value;

          if (!code.trim()) {
              status.textContent = "❌ Please paste or upload a script first.";
              status.style.color = "red";
              return;
          }

          const result = simpleDeobfuscate(code);

          textInput.value = result;
          status.textContent = "✅ Deobfuscation complete!";
          status.style.color = "lightgreen";
      });
  }
</script>

</body>
</html>
  }

  

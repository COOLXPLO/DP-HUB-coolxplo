<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>DP Hub – Top Roblox Scripts</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', sans-serif;
    }

    body {
      background: #000;
      color: #fff;
      overflow-x: hidden;
      position: relative;
    }

    canvas#bg {
      position: fixed;
      top: 0;
      left: 0;
      z-index: 0;
    }

    header {
      background-color: #111;
      border-bottom: 2px solid red;
      padding: 1rem 2rem;
      display: flex;
      align-items: center;
      position: relative;
      z-index: 1;
    }

    header img {
      width: 50px;
      height: 50px;
      margin-right: 1rem;
    }

    header h1 {
      color: red;
      font-size: 2rem;
      font-weight: bold;
    }

    .discord-icon {
      margin-left: auto;
    }

    .discord-icon img {
      width: 40px;
      height: 40px;
      filter: drop-shadow(0 0 10px #7289da);
      transition: transform 0.3s ease, filter 0.3s ease;
    }

    .discord-icon img:hover {
      transform: scale(1.1);
      filter: drop-shadow(0 0 15px #7289da);
    }

    .nav-bar {
      display: flex;
      justify-content: center;
      background: #111;
      padding: 0.5rem;
      gap: 2rem;
      border-bottom: 1px solid red;
    }

    .nav-bar a {
      color: #fff;
      text-decoration: none;
      font-weight: bold;
      transition: color 0.3s;
    }

    .nav-bar a:hover,
    .nav-bar .active-tab {
      color: red;
    }

    .section {
      padding: 2rem;
      text-align: center;
    }

    .container {
      position: relative;
      z-index: 1;
      padding: 2rem;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
      gap: 1.5rem;
    }

    .card {
      background: #1a1a1a;
      border: 1px solid #444;
      border-left: 4px solid red;
      border-radius: 0.5rem;
      padding: 1rem;
      transition: transform 0.2s;
    }

    .card:hover {
      transform: translateY(-5px);
      box-shadow: 0 0 15px red;
    }

    .card h3 {
      color: red;
      margin-bottom: 0.5rem;
    }

    .card p {
      color: #ccc;
      font-size: 0.9rem;
    }

    .card button {
      margin-top: 1rem;
      background: red;
      color: black;
      border: none;
      padding: 0.5rem 1rem;
      border-radius: 4px;
      cursor: pointer;
      font-weight: bold;
    }

    .card button:hover {
      background: #ff4d4d;
    }

    footer {
      text-align: center;
      padding: 2rem;
      font-size: 0.875rem;
      color: #777;
      z-index: 1;
      position: relative;
    }

    textarea {
      display: none;
    }
  </style>
</head>
<body>

<canvas id="bg"></canvas>

<header>
  <img src="https://yt3.googleusercontent.com/VZFsH87J_cdIIAUJgNQEj0SYUSCu9xYOwAvFj73Sbrr9u6914UXUHEBnLhdOPMbDNQWuJzG3Omc=s900-c-k-c0x00ffffff-no-rj" alt="Dragon">
  <h1>DP Hub</h1>
  <a href="https://discord.gg/cVX9QpPkYE" target="_blank" class="discord-icon">
    <img src="https://i.pinimg.com/1200x/c1/62/5d/c1625d28e215bde2df23e15d3f950cfe.jpg" alt="Discord" />
  </a>
</header>

<nav class="nav-bar">
  <a href="#home" class="active-tab">Home</a>
  <a href="#about">About</a>
</nav>

<div class="container" id="home">
  <!-- Top 15 Script Cards -->
  <script>
    const scripts = [
      { title: "Blade Ball Combat AI", desc: "Auto parry, dash, fake detect", code: `loadstring(game:HttpGet('https://pastebin.com/raw/BladeAI'))()` },
      { title: "Arsenal ESP", desc: "Full wallhack, tracers, team check", code: `loadstring(game:HttpGet('https://pastebin.com/raw/ESPCode'))()` },
      { title: "Fly / Noclip", desc: "Toggle fly + noclip anywhere", code: `loadstring(game:HttpGet('https://pastebin.com/raw/FlyCode'))()` },
      { title: "Speed Boost", desc: "Boost walk/run speed", code: `loadstring(game:HttpGet('https://pastebin.com/raw/Speed'))()` },
      { title: "Teleport GUI", desc: "Click-to-teleport around map", code: `loadstring(game:HttpGet('https://pastebin.com/raw/Teleport'))()` },
      { title: "ESP + Aimbot", desc: "Combo vision + auto aim", code: `loadstring(game:HttpGet('https://pastebin.com/raw/AimbotESP'))()` },
      { title: "Anti-AFK", desc: "Prevent AFK kick forever", code: `loadstring(game:HttpGet('https://pastebin.com/raw/AntiAFK'))()` },
      { title: "Chat Spammer", desc: "Spam custom messages", code: `loadstring(game:HttpGet('https://pastebin.com/raw/Spammer'))()` },
      { title: "Kill All Script", desc: "One-tap kill everyone", code: `loadstring(game:HttpGet('https://pastebin.com/raw/KillAll'))()` },
      { title: "Auto Farm GUI", desc: "Auto farm + level up", code: `loadstring(game:HttpGet('https://pastebin.com/raw/Farm'))()` },
      { title: "X-Ray Vision", desc: "See through walls", code: `loadstring(game:HttpGet('https://pastebin.com/raw/Xray'))()` },
      { title: "Invisible Character", desc: "Turn invisible fully", code: `loadstring(game:HttpGet('https://pastebin.com/raw/Invis'))()` },
      { title: "Item Giver", desc: "Spawn items into inventory", code: `loadstring(game:HttpGet('https://pastebin.com/raw/Giver'))()` },
      { title: "Knife Ability Script", desc: "Use all abilities in Knife Game", code: `loadstring(game:HttpGet('https://pastebin.com/raw/Knife'))()` },
      { title: "OP GUI Hub", desc: "All-in-one GUI for exploits", code: `loadstring(game:HttpGet('https://pastebin.com/raw/OPGUI'))()` },
    ];

    document.write(
      scripts.map(script => `
        <div class="card">
          <h3>${script.title}</h3>
          <p>${script.desc}</p>
          <button onclick="copyScript(\`${script.code}\`)">Copy Script</button>
        </div>
      `).join("")
    );
  </script>
</div>

<section id="about" class="section" style="display: none;">
  <h2 style="color: red;">About</h2>
  <p><strong>Made by:</strong> Plo_mex and IamUnknown77</p>

  <h3>Introduction</h3>
  <p>DP Hub – The Ultimate Roblox Scripting Hub</p>
  <p>
    Welcome to DP Hub, the next-generation scripting hub designed for Roblox enthusiasts who love customization, efficiency, and powerful scripts. Created by Plo_mex and iamunknown77, DP Hub brings you a seamless experience with high-quality scripts that work on top executors like Dex, Delta, and Vega X.
  </p>

  <h3>Why Choose DP Hub?</h3>
  <ul style="text-align: left; max-width: 600px; margin: 0 auto;">
    <li>✅ Powerful & Optimized Scripts – Enjoy well-coded scripts designed for smooth performance.</li>
    <li>✅ Wide Executor Compatibility – Works with all good executors, ensuring a hassle-free experience.</li>
    <li>✅ User-Friendly Interface – Designed for both beginners and experienced scripters.</li>
    <li>✅ Regular Updates – Stay ahead with frequently updated scripts.</li>
    <li>✅ Free & Reliable – No unnecessary paywalls, just quality scripts for everyone.</li>
  </ul>

  <p>Whether you're looking for automation, customization, or simply fun enhancements in your favorite games, DP Hub has got you covered! 🚀</p>
</section>

<footer>
  &copy; 2025 DP Hub. All rights reserved.
</footer>

<textarea id="scriptBox"></textarea>
<script>
  function copyScript(text) {
    const box = document.getElementById("scriptBox");
    box.style.display = "block";
    box.value = text;
    box.select();
    document.execCommand("copy");
    box.style.display = "none";
    alert("✅ Script copied!");
  }
</script>

<script>
  const tabs = document.querySelectorAll('.nav-bar a');
  const aboutSection = document.getElementById('about');
  const homeSection = document.getElementById('home');

  tabs.forEach(tab => {
    tab.addEventListener('click', e => {
      e.preventDefault();
      const target = tab.getAttribute('href').substring(1);

      if (target === 'about') {
        aboutSection.style.display = 'block';
        homeSection.style.display = 'none';
      } else {
        aboutSection.style.display = 'none';
        homeSection.style.display = 'grid';
      }

      tabs.forEach(t => t.classList.remove('active-tab'));
      tab.classList.add('active-tab');
    });
  });
</script>

<!-- Particle Background Script -->
<script>
  const canvas = document.getElementById("bg");
  const ctx = canvas.getContext("2d");
  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;

  const particles = [];
  for (let i = 0; i < 100; i++) {
    particles.push({
      x: Math.random() * canvas.width,
      y: Math.random() * canvas.height,
      r: Math.random() * 2 + 1,
      d: Math.random() * 1,
    });
  }

  function draw() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    ctx.fillStyle = "white";
    for (let i = 0; i < particles.length; i++) {
      const p = particles[i];
      ctx.beginPath();
      ctx.arc(p.x, p.y, p.r, 0, Math.PI * 2, true);
      ctx.fill();
    }
    update();
  }

  function update() {
    for (let i = 0; i < particles.length; i++) {
      const p = particles[i];
      p.y += p.d;
      if (p.y > canvas.height) {
        p.y = 0;
        p.x = Math.random() * canvas.width;
      }
    }
  }

  setInterval(draw, 33);
  window.onresize = () => {
    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;
  };
</script>
</body>
</html>

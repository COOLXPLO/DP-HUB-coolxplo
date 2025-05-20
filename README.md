<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>DP Hub – Roblox Script Center</title>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
  <style>
    body {
      margin: 0;
      font-family: 'Inter', sans-serif;
      background: #0f172a;
      color: white;
    }

    header {
      background-color: #1e293b;
      padding: 1rem 2rem;
      border-bottom: 2px solid #334155;
    }

    header h1 {
      font-size: 2rem;
      margin: 0;
      color: #38bdf8;
    }

    header p {
      margin: 0.25rem 0 0;
      font-size: 1rem;
      color: #94a3b8;
    }

    .container {
      padding: 2rem;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
      gap: 1.5rem;
    }

    .card {
      background-color: #1e293b;
      padding: 1rem;
      border-radius: 0.75rem;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      transition: transform 0.2s ease;
      position: relative;
    }

    .card:hover {
      transform: translateY(-5px);
    }

    .card h3 {
      margin-top: 0;
      color: #38bdf8;
    }

    .card p {
      font-size: 0.9rem;
      color: #94a3b8;
    }

    .card button {
      background-color: #38bdf8;
      border: none;
      padding: 0.5rem 1rem;
      margin-top: 1rem;
      border-radius: 0.5rem;
      cursor: pointer;
      font-weight: bold;
      color: #0f172a;
    }

    .card button:hover {
      background-color: #0ea5e9;
    }

    footer {
      text-align: center;
      padding: 2rem;
      color: #64748b;
      font-size: 0.875rem;
    }

    textarea {
      display: none;
    }
  </style>
</head>
<body>

  <header>
    <h1>DP Hub</h1>
    <p>Roblox Scripts & Tools. Fast. Reliable. Updated Daily.</p>
  </header>

  <div class="container">

    <div class="card">
      <h3>Blade Ball AI Script</h3>
      <p>Auto parry, dash after parry, fake detection, and more.</p>
      <button onclick="copyScript(`loadstring(game:HttpGet('https://pastebin.com/raw/BladeBallScript'))()`)">Copy Script</button>
    </div>

    <div class="card">
      <h3>Arsenal ESP</h3>
      <p>Wallhack, tracers, healthbars, and team check enabled.</p>
      <button onclick="copyScript(`loadstring(game:HttpGet('https://pastebin.com/raw/ArsenalESP'))()`)">Copy Script</button>
    </div>

    <div class="card">
      <h3>Universal Fly/Noclip</h3>
      <p>Fly around, clip through walls, and toggle with a hotkey.</p>
      <button onclick="copyScript(`loadstring(game:HttpGet('https://pastebin.com/raw/FlyNoclip'))()`)">Copy Script</button>
    </div>

    <div class="card">
      <h3>Speed Boost</h3>
      <p>Boost your character speed with a toggle key.</p>
      <button onclick="copyScript(`loadstring(game:HttpGet('https://pastebin.com/raw/SpeedBoost'))()`)">Copy Script</button>
    </div>

    <div class="card">
      <h3>Teleport GUI</h3>
      <p>Click anywhere to teleport around the map instantly.</p>
      <button onclick="copyScript(`loadstring(game:HttpGet('https://pastebin.com/raw/TeleportGUI'))()`)">Copy Script</button>
    </div>

  </div>

  <footer>
    &copy; 2025 DP Hub. All rights reserved.
  </footer>

  <textarea id="scriptBox"></textarea>
  <script>
    function copyScript(scriptText) {
      const textarea = document.getElementById("scriptBox");
      textarea.style.display = "block";
      textarea.value = scriptText;
      textarea.select();
      document.execCommand("copy");
      textarea.style.display = "none";
      alert("✅ Script copied to clipboard!");
    }
  </script>
</body>
</html>

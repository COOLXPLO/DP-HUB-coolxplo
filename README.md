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
      display: flex;
      flex-direction: column;
      align-items: flex-start;
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

    nav {
      margin-top: 1rem;
    }

    nav a {
      color: #cbd5e1;
      text-decoration: none;
      margin-right: 1rem;
      font-weight: 500;
    }

    nav a:hover {
      color: #38bdf8;
    }

    .container {
      padding: 2rem;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
      gap: 1.5rem;
    }

    .card {
      background-color: #1e293b;
      padding: 1rem;
      border-radius: 0.75rem;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
      transition: transform 0.2s ease;
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

    .card a {
      display: inline-block;
      margin-top: 1rem;
      background-color: #38bdf8;
      color: #0f172a;
      padding: 0.5rem 1rem;
      border-radius: 0.5rem;
      text-decoration: none;
      font-weight: 600;
    }

    .card a:hover {
      background-color: #0ea5e9;
    }

    footer {
      text-align: center;
      padding: 2rem;
      color: #64748b;
      font-size: 0.875rem;
    }
  </style>
</head>
<body>
  <header>
    <h1>DP Hub</h1>
    <p>Roblox Scripts & Tools. Fast. Reliable. Updated Daily.</p>
    <nav>
      <a href="#">Home</a>
      <a href="#">Scripts</a>
      <a href="#">About</a>
    </nav>
  </header>

  <div class="container">
    <div class="card">
      <h3>Blade Ball AI Script</h3>
      <p>Auto parry, dash after parry, fake detection and more.</p>
      <a href="https://pastebin.com/raw/your-bladeball-script" target="_blank">View Script</a>
    </div>

    <div class="card">
      <h3>Arsenal ESP</h3>
      <p>Wallhack, tracers, healthbars, and team check enabled.</p>
      <a href="https://pastebin.com/raw/your-arsenal-esp" target="_blank">View Script</a>
    </div>

    <div class="card">
      <h3>Universal Fly/Noclip</h3>
      <p>Fly around, clip through walls, and toggle with a hotkey.</p>
      <a href="https://pastebin.com/raw/your-fly-script" target="_blank">View Script</a>
    </div>
  </div>

  <footer>
    &copy; 2025 DP Hub. All rights reserved.
  </footer>
</body>
</html>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>YouTube Background</title>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
      overflow: hidden;
    }

    .bg-video {
      position: fixed;
      right: 0;
      bottom: 0;
      min-width: 100%;
      min-height: 100%;
      z-index: -1;
      object-fit: cover;
    }

    .content {
      position: relative;
      z-index: 1;
      color: white;
      text-align: center;
      padding-top: 20%;
      font-size: 2em;
    }
  </style>
</head>
<body>

  <video autoplay muted loop class="bg-video">
    <source src="videoplayback (6).mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>

  <div class="content">
    Welcome to my website!
  </div>

</body>
</html>

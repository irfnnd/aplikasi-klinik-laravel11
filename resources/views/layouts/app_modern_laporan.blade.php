<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>{{ $title ?? '' }} {{ config('app.name') }} </title>
    <link rel="shortcut icon" type="image/png" href="/modern/src/assets/images/logos/favicon.png" />
    <link rel="stylesheet" href="/modern/src/assets/css/styles.min.css" />
    <link href="/modern/src/assets/select2/dist/js/select2.min.css" rel="stylesheet" />
</head>

<body>
   @yield('content')
</body>

</html>

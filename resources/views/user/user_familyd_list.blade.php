<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>{{ $title }}</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<h1>{{ $title }}</h1>
<a href=""><button class="btn btn-success">+ Thêm</button></a>


<br>
<br>
<table class="table table-striped">
    <thead>
    <tr>
        <th>name</th>
        <th>level</th>
        <th>description</th>
        <th>balance</th>
        <th>status</th>
        <th>created_at </th>
    </tr>
    </thead>
    <tbody>
    @foreach($familyds as $familyd)
        <tr>
            <td>{{ $familyd->name }}</td>
            <td>{{ $familyd->level  }}</td>
            <td>{{ $familyd->description }}</td>
            <td>{{ $familyd->balance }}</td>
            <td>
                @if($familyd->status == 1)
                    <span class="badge badge-success">Hoạt động</span>
                @else
                    <span class="badge badge-danger">Đang tắt</span>
                @endif
            </td>
            <td>{{ $familyd->created_at }}</td>
            <td>
                <a href=""><button class="btn btn-warning">Sửa</button></a>
                <a href=""><button class="btn btn-danger">Xóa</button></a>

            </td>
        </tr>
    @endforeach

    </tbody>
</table>

{{$familyds->links()}}
</body>
</html>

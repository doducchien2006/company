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
<a href="{{ route('bank.create') }}"><button class="btn btn-success">+ Thêm</button></a>
<a href="{{ route('bank.list') }}?acc_bank=MB"><button class="btn btn-success">+ MB Bank</button></a>
<a href="{{ route('bank.list') }}?acc_bank=VCB"><button class="btn btn-success">+ VCB Bank</button></a>
<a href="{{ route('bank.list') }}?acc_bank=ACB"><button class="btn btn-success">+ ACD Bank</button></a>
<br>
<br>
<table class="table table-striped">
    <thead>
    <tr>
        <th>ID</th>
        <th>Số TK</th>
        <th>Tên TK</th>
        <th>Ngân hàng</th>
        <th>User ID </th>
        <th>Trạng thái</th>
        <th>Sắp xếp</th>
        <th>Hành động</th>
    </tr>
    </thead>
    <tbody>
    @foreach($banks as $bank)
        <tr>
            <td>{{ $bank->id }}</td>
            <td>{{ $bank->acc_num }}</td>
            <td>{{ $bank->acc_name }}</td>
            <td>{{ $bank->acc_bank }}</td>
            <td>
                @if($bank->status == 1)
                    <span class="badge badge-success">Hoạt động</span>
                @else
                    <span class="badge badge-danger">Đang tắt</span>
                @endif
            </td>
            <td>{{ $bank->sort }}</td>
            <td>
                <a href=""><button class="btn btn-warning">Sửa</button></a>
                <a href=""><button class="btn btn-danger">Xóa</button></a>

            </td>
        </tr>
    @endforeach

    </tbody>
</table>

{{$banks->links()}}
</body>
</html>

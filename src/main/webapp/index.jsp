<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Chat</title>
    <link rel="stylesheet" href="./css/style.css">
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">


    <style>
        html {
            height: 100%;
            width: 100%;
        }

        body {
            display: flex;
            height: 100%;
            width: 100%;
            background: #e5ddd5;
            margin: 0px;
            justify-content: center;
            align-items: center;
        }

        .content {
            width: 500px;
            background: #fff;
            border: solid 1px #bbb;
            border-radius: 15px;
            padding: 15px;
        }

        .content-head {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .div-buttons {
            display: flex;
            align-items: flex-end;
            justify-content: flex-end;
        }
    </style>

</head>

<body>
    <div id="app">
        <div class="content">
            <div class="content-head">Login</div>
            <div class="form-group">
                <label class="">E-mail</label>
                <input class="form-control" type="text">
            </div>
            <div class="form-group">
                <label class="">Senha</label>
                <input class="form-control" type="password">
            </div>
            <div class="div-buttons">
                <a href="./chat"><button class="btn btn-info">Login</button></a>
            </div>
        </div>
    </div>


    <script type="module">
        /* COMPONENTES */
       
    </script>


    <script type="module">
        //import comp from './components/component.js';

        var app = new Vue({
            el: '#app',
            data: {
                message: 'Hello Vue!'
            }
        })
    </script>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

</body>

</html>
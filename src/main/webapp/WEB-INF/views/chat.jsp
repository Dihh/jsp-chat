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
        }

        #app {
            display: flex;
            width: 100%;
        }

        .users-list {
            background: #fff;
            padding: 15px;
            height: 100%;
            border-right: solid 1px #ddd;
            flex: 1.5;
        }

        .chat-input {
            background: #eee;
            padding: 10px;
            width: 100%;
        }

        .chat {
            flex: 8.5;
            display: flex;
            align-items: flex-end;
            flex-direction: column-reverse;

        }

        .chat-msg {
            padding: 10px;
            display: flex;
            flex-direction: column-reverse;
            width: 100%;
            align-self: flex-end;
            margin: 5px;
        }

        .msg-out {
            background: #fff;
            padding: 6px;
            border-radius: 10px;
            width: fit-content;
            align-self: flex-end;
            margin: 5px;
        }

        .msg-in {
            background: #dcf8c6;
            padding: 6px;
            border-radius: 10px;
            width: fit-content;
            margin: 5px;

        }

        .user-img {
            width: 50px;
            height: 50px;
            overflow: hidden;
            border-radius: 50%;
        }

        .user-img img {
            width: 50px;
        }

        .user-item {
            display: flex;
            border-bottom: solid 1px #ddd;
            padding-bottom: 5px;
            margin-top: 5px;
        }

        .user-info {
            padding-left: 10px;

        }

        .last-msg {
            color: #ddd
        }
    </style>

</head>

<body>
    <div id="app">
        <div class="users-list">
            <div class="user-item">
                <div class="user-img">
                    <img
                        src="data:image/jpeg;base64,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">
                </div>
                <div class="user-info">
                    Name<br>
                    <span class="last-msg">Msg</span>
                </div>
            </div>
            <div class="user-item">
                <div class="user-img">
                    <img
                        src="data:image/jpeg;base64,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">
                </div>
                <div class="user-info">
                    Name<br>
                    <span class="last-msg">Msg</span>
                </div>
            </div>
        </div>
        <div class="chat">
            <div class="chat-input">
                <div class="form-group">
                    <input class="form-control" type="text" placeholder="Digite Sua menssgem aqui">
                </div>
            </div>
            <div class="chat-msg">
                <div class="msg-out">
                    Hello World!
                </div>
                <div class="msg-in">
                    Hello!
                </div>
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
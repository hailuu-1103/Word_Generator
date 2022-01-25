<%-- 
    Document   : test
    Created on : Jan 25, 2022, 10:33:32 AM
    Author     : hoang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
           
            #sample {
                border-style: double;
            }
           
        </style>
    </head>
    <body>
        <button onclick="generateWord()">Generate</button>
        <p id="sample">Hello World!</p>
        <button onclick="CopyToClipboard()" >Copy</button>
        <script>
            const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';

            function generateString(length) {
                let result = ' ';
                const charactersLength = characters.length;
                for (let i = 0; i < length; i++) {
                    result += characters.charAt(Math.floor(Math.random() * charactersLength));
                }

                return result;
            }


            function generateWord() {
                text = "";
                for (let i = 0; i < 100; i++) {
                    text += generateString(5) + " ";
                }
                document.getElementById("sample").innerHTML = text;
            }

            function CopyToClipboard()
            {
                var r = document.createRange();
                r.selectNode(document.getElementById("sample"));
                window.getSelection().removeAllRanges();
                window.getSelection().addRange(r);
                document.execCommand('copy');
                window.getSelection().removeAllRanges();
            }
        </script>
    </body>
</html>

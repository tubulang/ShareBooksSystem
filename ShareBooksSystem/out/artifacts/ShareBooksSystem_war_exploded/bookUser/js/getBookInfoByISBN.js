function getBookInfo() {
    // var ISBNData=document.getElementById("isbndata");
    // var mybook;
    $.ajax({
        type:"POST",
        dataType:'JSONP',
        // contentType:"application/json;charset=utf-8",
        url:"https://api.douban.com/v2/book/isbn/9787115275790",
        // url:"https://api.douban.com/v2/book/isbn/9787115226266",
        success:function (msg) {
            // msg=eval("("+msg+")");
            var author=msg.author[0];
            if(msg.translator.length>0){
                author=author.substring(3);
            }
            // var mybook={
            //     'bookName':msg.title,
            // 'bookAuthor':author,
            // 'bookPicture':msg.image,
            // 'bookPublic':msg.publisher,
            // 'bookPrice':msg.price,
            // 'bookCategory':msg.tags[7].name,
            // };
            // mybook=mybook.toString();
            // mybook=JSON.stringify(mybook);
            // console.log(typeof mybook+"aa");
            var a="大鹏";
            var b=['大鹏1','b','c'];
            var c=new Array(msg.title,author,msg.image,msg.publisher,msg.price,msg.tags[7].name);
            var c=msg.title+","+author+","+msg.image+","+msg.publisher
                +","+msg.price+","+msg.tags[7].name;
            // c=JSON.stringify(c);
            console.log(c);
            console.log(typeof c);
            console.log(typeof msg);
            console.log(msg);
            console.log(msg.author[0]);
            console.log(msg.image);
            console.log(msg.translator);
            console.log(msg.title);
            console.log(msg.publisher);
            console.log(msg.tags[7].name);
            console.log(msg.price);


            // encodeURI(encodeURI(author));
            console.log(typeof author);
            console.log(author);
            location.href="addBookAction?mybook="+c;
            // mybook=JSON.stringify(mybook);
            // targetForm=document.forms[0];
            // console.log("test");
            // targetForm.action="addBookAction.action?mybook="+encodeURIComponent(mybook);
            // console.log("test11");

            // $.ajax({
            //     type:"POST",
            //     url:"addBookAction",
            //     data:mybook,
            //     async:false,
            //     contentType:"application/x-www-form-urlencoded",
            //     dataType:"json",
            //     success:function (msg) {
            //         console.log("success");
            //     },
            //     error:function (errmsg) {
            //         console.log(errmsg);
            //     }
            //
            // });

        },
        error:function (errmsg) {
            console.log(errmsg);
        }
    });

    // $.getJSON("https://api.douban.com/v2/book/isbn/9787115275790",
    //     function (data) {
    //         alert(data);
    //     }
    // );
    // var xmlhttp;
    // if (window.XMLHttpRequest)
    // {
    //     // IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
    //     xmlhttp=new XMLHttpRequest();
    // }
    // else {
    //     // IE6, IE5 浏览器执行代码
    //     xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
    // }
    // xmlhttp.onreadystatechange=function()
    // {
    //     if (xmlhttp.readyState==4 && xmlhttp.status==200)
    //     {
    //         console.log(xmlhttp.responseText)
    //         // document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    //     }
    //
    // }
    // xmlhttp.open("POST","/try/ajax/demo_post.php",true);
    // xmlhttp.send();

}
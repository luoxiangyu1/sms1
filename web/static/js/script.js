window.onload = function (){
    //图片轮播
    //获取图片和小圆点
    var imgs = document.querySelectorAll(".img"); //返回dom对象
    var dots = document.querySelector(".dots").querySelectorAll("span");

    // 遍历所有img图片，给img图片设置data-index属性，好判断当前的图片是哪一张
    for(var i = 0; i < imgs.length; i++){
        imgs[i].setAttribute("data-index", i);
    }

    //获取图片和图片的index
    var currentImg = document.querySelector(".current");
    var currentIndex = currentImg.getAttribute("data-index");

    //遍历小圆点，并且绑定事件
    // 给所有的小圆点设置属性
    for(var k = 0; k < dots.length; k++){
        dots[k].setAttribute("data-index", k);
        dots[k].addEventListener("click",function (){
            //获取当前小圆点的索引
            var index = this.getAttribute("data-index");
            // 如果当前点击的小圆点的index索引与之前索引所以不一致，则切换图片,否则不做任何操作
            if(index != currentIndex){
                // 将鼠标点击之前显示的图片隐藏，即将之前显示的img上的current类删除
                imgs[currentIndex].classList.remove("current");
                //取消圆点的高亮显示
                dots[currentIndex].classList.remove("square");
                //显示当前图片
                imgs[index].classList.add("current");
                //圆点高亮
                dots[index].classList.add("square");
                //修改currentIndex
                currentIndex = index;
            }
        })
    }

    //自动轮播时间
    var timer = setInterval(changeImage,3000);

    //图片自动轮播
    function changeImage(){
        // 如果currentIndex这个变量是小于最后一个下标的
        if(currentIndex < imgs.length-1){
             // 将之前的图片隐藏
             imgs[currentIndex].classList.remove("current");
             // 将之前高亮的小圆点，不高亮显示
             dots[currentIndex].classList.remove("square");
             // 将下一张图片显示，将下一个小圆点高亮
             imgs[++currentIndex].classList.add("current");
             // 将下一个小圆点高亮显示
             dots[currentIndex].classList.add("square");
        }else{
             // 将之前的图片隐藏
             imgs[currentIndex].classList.remove("current");
             // 将之前高亮的小圆点，不高亮显示
             dots[currentIndex].classList.remove("square");
             currentIndex = 0;
             // 显示图片
             imgs[currentIndex].classList.add("current");
             // 圆点高亮显示
             dots[currentIndex].classList.add("square");
        }
    }

    // tab切换
    // 获取点击的城市列表，及要切换的房源信息
    var aList = document.getElementsByClassName("list_nav"),
        aTab = document.getElementsByClassName("productBox"),
        cityIndex = 0;    // 用来存储上一次高亮显示的元素的索引
    //遍历所有城市列表
    for(var a = 0; a < aList.length; a++){
        //函数加闭包自执行
        (function (a){
            //给每个城市li绑定事件
            aList[a].onclick = function (){
                // 上一次高亮显示的城市及内容隐藏
                aList[cityIndex].classList.remove("current_option");
                aTab[cityIndex].classList.remove("on");
                //更新cityIndex
                cityIndex = a;
                aList[a].classList.add("current_option");
                aTab[a].classList.add("on");
            }
        })(a)
    }
}
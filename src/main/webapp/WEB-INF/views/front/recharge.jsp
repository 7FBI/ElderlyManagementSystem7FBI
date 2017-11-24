<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>余额充值</title>
<link href="/resources/front/css/payment.20170419.e20b6.css" rel="stylesheet" />
</head>
<body>
  <!-- E 头部 -->
  <div class="pay_info_wrap"> 
   <div class="scan_code_wrap"> 
    <div class="pay_tips"> 
     <p class="tips_info">成功跳转至充值界面，请你一个 <span class="text_orange">充值方式</span>完成对账户余额的充值！</p> 
     <p class="receive_info"> 客户信息：黄金龙 / 13851435593 / <span class="js_region">上海市,上海市,长宁区</span> 大华三路555号 </p> 
    </div> 
    <div class="pay_info"> 
     <p>充值金额</p> 
     <p class="price"><span class="text_orange">1593.00元</span></p> 
    </div> 
   </div> 
  </div> 
  <div class="scan_code_wrap"> 
   <div class="scan_code_inner"> 
    <ul class="pay_tab js_pay_tab"> 
     <li class="wechat js_wechat " data-target="wechat"> <i class="icon-wechat"></i> 微信支付 </li> 
     <li class="alipay js_alipay checked" data-target="alipay"> <i class="icon-alipay"></i> 支付宝 </li> 
     <li class="huabei js_huabei" data-target="huabei"> <i class="icon-huabei"></i> 花呗分期 </li> 
   </ul> 
    <div class="js_target_wrap"> 
     <div class="wechat_code_wrap js_wechat_wrap" style="display: block;"> 
      <div class="wechat_code"> 
       <i class="icon-wechat-scan"></i> 
       <div class="wechat_code_inner"> 
        <div class="wechat_qrcode" id="wechat_qrcode" title="weixin://wxpay/bizpayurl?pr=1lZCOn4">
         <canvas width="168" height="168" style="display: none;"></canvas>
         <img alt="Scan me!" style="display: block;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAKgAAACoCAYAAAB0S6W0AAAGi0lEQVR4nO2UQRLjOAwD8/9P717mNnZMQgCleBpVvkkgQHXy+Xw+/+36KnJ6K/N3+yS7uuaHPwDtCkABdHlB6oMomZI+AAqgbQHoRkCTcgGq3kvNn/7x/eKPUZkFoKb5AOoRgAJoWwAqhFbvAWhfACqEVu8BaF8/AejpS1MzTULs6uHch+vNwj0AFEABtFy2IgD17ANAhbIVAahnHwAqlFVmVzX5I3LJ9T675wOo4OXKmBSAAuhyxqQAFECXMyYFoAC6nDEpAD0MUMVbyed8SOf81I9R9QJQYZYjH4ACaKysIx+AAmisrCMfgL4IUJccC3JBpWZO5nY+rJJRPeMSgBoyA2hOAGrIDKA5AaghM4DmBKCGzACaUwnQyU9diOvR3npG3VHlzIYPQN92Rt1R5QyAAiiAAui7z6g7qpwZ/y5TbZQC9soP4qSM6uzkvd06LiWA9mcn7+3WcSkBtD87eW+3jksJoP3ZyXu7dVxKAO3PTt7brVLK5HIV38nHnuzu8ln5ETvewykABVAA7fgA6LoPgAIogH7xduqTAmIS4iSgroyT3ZOfqgX4ARRAARRAB7sDKIACaFMACqD/BqCu4NNguWa5HsTVQ+1euad6T+4VQE2LVASgpR0BqGORigC0tCMAdSxSEYAWdqQUKRmbfKrek2ApeSYBWQFJ6era0eU9V4CUT9UbQAF0pIjqDaAAOlJE9QZQAB0ponoDKIDaQ6rFkpp8/CTEk11LoKl+FSPlTCWkusSkABRAAbQxS8032RVAAbSdb7IrgAJoO99k11FA1WKTPsmFpLoqvVZmJeEf/cG6yk/6AKjmBaBDPgCqeQHokA+Aal4/Cajy2OpCXLMqs10ZXRAnH9oFtnO+Y2d/zgEogNYzuu4BqCkjgAJoe9ZCWQBt7hFAhVkLZQG0ucefAFQpN+mz8riKl6uHa2dKHuePMfX2fz4A7Xq5egBoyRtAu16uHgBa8gbQrperB4AWvJWLyTNykcMBdT3+iWC59gGgJu+UD4ACqMU75QOgAGrxTvkAKIBavFM+AHr5eR46Vda52BTUqdlV0NT5rtzJ/gAKoMu5k/0BFECXcyf7AyiALudO9v/LPQmo6/FPfOypR0vuyNVVPQOgBR/X/FSP5I5cXQEUQMe8AVQQgM55A6ggAJ3z3g7oJDThIhZAHL2u7iXPuO6t/CAcPgAaml/xTp5x3QNQoQiAAiiAAujlnSMBdQHh8nUC6gLbJVfm5Ju5eqgCUAD9OsvVQxWAAujXWa4eqgAUQL/OcvVQBaAA+nWWq4eqklvqYadBc4E+tZ8r7+R8F8TW/mpwAM3v58o7OR9ATb4AmpkPoCZfAM3MPxJQZQHVcjsfX8mTXLYrT9XbJVdmNR+AAqg9d8WnMR9AAdSbu+LTmA+gAOrNXfFpzAdQAPXmrviU56eKKHfUe6q3CxCXknmSfxDRT278UEQt75oFoM/erkwAKswC0GdvVyYAFWYB6LO3K1P48yzFFcg1S/WZ7JrMrJxx/SCc/QEUQAEUQAEUQAH06zm1hyIABdB/B9CUuXomufzJ+cqs5KdmTJ0p78i1SFcRAAVQAB2Yr8wCUAAdm6/MAlAAHZuvzALQQUArAcohQ0AkMyqZ1TzOe08+rr2W7zkCASiAAiiAAqgaCEABNAao6/GVMxVv1xl1uapP6qvqtK4LswAUQPNdF2YBKIDmuy7MAlAAzXddmAWgAJrvKs9Kla34qGeS2vmwzsyurqkeACoKQAEUQAEUQFUB6A8COilX2eq50+FL5Un/QGyfbXMmAWi/6+6MANq8A6AAGhOA9rvuzgigzTsA+iJAw+bthbggci0y+UBqD5eUnalnnu4AaG8pAGo+83QHQHtLAVDzmac7ANpbCoCazzzdKQOalGvW7h/RZJ6kJt9jweedCwHQfm6XD4ACqEUA+hDA5bMbkN3zXXt0+QAogFr0GkBdi3WFPk0n7iP1rkkYb84B6KpO3AeAHvYgO3XiPgD0sAfZqRP3AaChB0kt7Wqec7k7M//CpwpAARRA73ymH78yq7g0AAVQAAVQAAVQAL33UWclH63irci1syQgyYyVOzfeAAqg+YyVOzfeAAqg+YyVOzfeAAqg+YyVOzfe68uvKjVr96MlPzVjSip8aj4ADXkDKIDe+gIogEoCUAAFUAB9N6CnLb+ypOlFpvq7zlR3pGjDzgAUQOsCUGFJ1YUcsGwABdD7hRywbAAF0PuFHLBsAG1+/wNVmC96T3grcgAAAABJRU5ErkJggg==" />
        </div> 
        <p class="wechat_qrcode_tips"><i class="icon-scan"></i>使用微信扫一扫<br />扫描二维码支付</p> 
       </div> 
       <p class="order_detail_link">支付成功后，<a href="/order/buyer/orderlist">可查看订单状态</a></p> 
      </div> 
     </div> 
     <div class="alipay_code_wrap js_alipay_wrap" style="display: none;"> 
      <div class="alipay_code"> 
       <div class="alipay_guide icon-alipay-desktop-b"></div> 
       <p><a class="pay_btn js_pay_btn" target="_blank" href="https://mapi.alipay.com/gateway.do?_input_charset=utf-8&amp;notify_url=https%3A%2F%2Fmall.midea.com%2Fnext%2Fpaynotifypc%2Falipaypcnotify&amp;out_trade_no=24816694840409000000001003509555&amp;partner=2088911365686636&amp;payment_type=1&amp;paymethod=directPay&amp;return_url=https%3A%2F%2Fmall.midea.com%2Fpayment%2Fnotify%2Falipay_web_callback&amp;seller_id=2088911365686636&amp;service=create_direct_pay_by_user&amp;sign=ec254b99ecaa9a52fbf7deeb46866abb&amp;sign_type=MD5&amp;subject=%E8%AE%A2%E5%8D%95%E5%95%86%E5%93%81-%E6%B4%97%E8%A1%A3%E6%9C%BA%208%E5%85%AC%E6%96%A4%E6%BB%9A%E7%AD%92%20%E4%B8%80%E7%BA%A7%E8%83%BD%E6%95%88%20%E5%8F%98%E9%A2%91%E7%94%B5%E6%9C%BA%20wifi%E6%8E%A7%E5%88%B6%20MG80V330WDX&amp;total_fee=1593.00">使用支付宝支付</a></p> 
      </div> 
     </div> 
     <div class="huabei_wrap js_huabei_wrap" style="display: none;"> 
      <div class="huabei_inner"> 
       <ul class="select-box js_huabei_select"> 
        <li class="installment" data-pay-installment-num="3"> 
         <div class="installment-inner"> 
          <i class="icon-checked"></i> 
          <div class="installment-stages">
           3期
          </div> 
          <div class="installment-amounts">
           &yen; 543.21x3
          </div> 
          <div class="installment-fee">
           含手续费&yen; 12.21每期
          </div> 
         </div> </li> 
        <li class="installment" data-pay-installment-num="6"> 
         <div class="installment-inner"> 
          <i class="icon-checked"></i> 
          <div class="installment-stages">
           6期
          </div> 
          <div class="installment-amounts">
           &yen; 277.44x6
          </div> 
          <div class="installment-fee">
           含手续费&yen; 11.94每期
          </div> 
         </div> </li> 
        <li class="installment" data-pay-installment-num="12"> 
         <div class="installment-inner"> 
          <i class="icon-checked"></i> 
          <div class="installment-stages">
           12期
          </div> 
          <div class="installment-amounts">
           &yen; 143.37x12
          </div> 
          <div class="installment-fee">
           含手续费&yen; 10.62每期
          </div> 
         </div> </li> 
       </ul> 
       <div class="huabei-des"> 
        <p class="total-amounts js_total_amounts"></p> 
        <p class="huabei-tips">分期金额及对应分期手续费请以花呗分期侧账单为准</p> 
       </div> 
       <p> <a class="pay_btn js_pay_btn disabled" id="huabeiPayBtn" target="_blank">使用花呗分期</a> </p> 
       <div class="huabei-rules"> 
        <p class="rules-title">注意事项：</p> 
        <p class="rules-content">1. 点击【使用花呗分期】按钮后，不可再更换分期期数。</p> 
        <p class="rules-content">2. 商品参与分期免息活动时，具体免息期数见商品详情页促销说明。</p> 
        <p class="rules-content">3. 参加免息活动商品单独下单购买时，可直接享受对应的分期期数免息。</p> 
        <p class="rules-content">4. 若多个商品合并下单，订单可免息期数按所有商品同时满足的免息期数计算。若其中存在不可免息商品，则合并下单时订单不可分期免息。</p> 
        <p class="rules-content">5. 若订单中商品免息活动已结束，订单也将不再享受分期免息优惠。</p> 
       </div> 
      </div> 
     </div> 
    </div> 
   </div> 
  </div> 
 
  
</body>

</html>
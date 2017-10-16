package com.controller.util;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

/**
 * Created by Administrator on 2017/10/16
 * 验证码代码
 * jsp页面链接:<img id="code" src="/code/front/getCode">
 * 设置code是session(前台code,后台bk_code)
 */


@Controller
@RequestMapping("/code")
public class Code {

    @RequestMapping("front/getCode")
    public void code(HttpServletResponse response, HttpServletRequest request) throws IOException {
        this.generateCode("code",response,request);
    }

    @RequestMapping("backend/getCode")
    public void bdCode(HttpServletRequest request,HttpServletResponse response) throws IOException {
        this.generateCode("bk_code",response,request);
    }


    private void generateCode(String name,HttpServletResponse response, HttpServletRequest request) throws IOException {
        // 设置响应头 Content-type类型
        response.setContentType("image/jpeg");
        // 以下三句是用于设置页面不缓存
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "No-cache");
        response.setDateHeader("Expires", 0);

        OutputStream os = response.getOutputStream();
        int width = 105, height = 40;
        // 建立指定宽、高和BufferedImage对象
        BufferedImage image = new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);

        Graphics g = image.getGraphics(); // 该画笔画在image上
        Color c = g.getColor(); // 保存当前画笔的颜色，用完画笔后要回复现场
        g.fillRect(0, 0, width, height);


        char[] ch = "abcdefghjkmnpqrstuvwxyz123456789".toCharArray(); // 随即产生的字符串 不包括 i l(小写L) o（小写O） 1（数字1）0(数字0)
        int length = ch.length; // 随即字符串的长度
        String sRand = ""; // 保存随即产生的字符串
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            // 设置字体
            g.setFont(new Font("Antique Olive Compact", Font.PLAIN, 24));
            // 随即生成0-9的数字
            String rand = new Character(ch[random.nextInt(length)]).toString();
            sRand += rand;
            // 设置随机颜色
            g.setColor(new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255)));
            g.drawString(rand, 20 * i + 10, 25);
        }
        //产生随即干扰点
        for (int i = 0; i < 20; i++) {
            int x1 = random.nextInt(width);
            int y1 = random.nextInt(height);
            g.drawOval(x1, y1, 2, 2);
        }
        g.setColor(c); // 将画笔的颜色再设置回去
        g.dispose();
        //将验证码记录到session
        request.getSession().setAttribute(name, sRand);
        // 输出图像到页面
        ImageIO.write(image, "JPEG", os);
        os.close();

    }


    @RequestMapping("/front/emailCode")
    @ResponseBody
    public void emailCode(HttpSession session) throws IOException{
        HttpSession session1=session;
        // 随即产生的字符串 不包括 i l(小写L) o（小写O） 1（数字1）0(数字0)
        char[] ch = "abcdefghjkmnpqrstuvwxyz123456789".toCharArray();
        int length = ch.length; // 随即字符串的长度
        String sRand = ""; // 保存随即产生的字符串
        Random random = new Random();
        for (int i = 0; i < 5; i++) {
            // 随即生成0-9的数字
            String rand = new Character(ch[random.nextInt(length)]).toString();
            sRand += rand;
        }
        /*设置session验证码*/
        session1.setAttribute("emailcode",sRand);
        /*设置session的有效时间(秒)*/
        session1.setMaxInactiveInterval(300);
    }



}

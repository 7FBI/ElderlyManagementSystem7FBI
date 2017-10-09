package com.others.ewm;

import com.google.zxing.*;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.HybridBinarizer;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Date;
import java.util.Hashtable;

/**
 * Created by Administrator on 2017/9/26.
 */
public class MyEWM {
    private final int BLACK = 0xFF000000;
    private final int WHITE = 0xFFFFFFFF;

    /**
     * 生成二维码矩阵
     * */
    public BufferedImage toBufferedImage(BitMatrix matrix) {
        int width = matrix.getWidth();
        int height = matrix.getHeight();
        /**
         * TYPE_INT_RGB:表示具有8位RGB颜色成分的整数像素的图像
         * */
        BufferedImage image = new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);
        for (int x = 0; x < width; x++) {
            for (int y = 0; y < height; y++) {
                image.setRGB(x, y, matrix.get(x, y) ? BLACK : WHITE);
            }
        }
        return image;
    }

    /*传入File的形式*/
    public boolean writeToFile(BitMatrix matrix, String format, File file) {
        BufferedImage image = toBufferedImage(matrix);
        Boolean flag=false;
        try {
            if (!ImageIO.write(image, format, file)) {
                System.out.println("Could not write an image of format: " + format + "\t to:" + file);
                return flag;
            } else {
                flag=true;
                return flag;
            }
        } catch (IOException e) {
            e.printStackTrace();
            flag=false;
            return flag;
        }
    }

    /*传入OutputStream的形式*/
    public boolean writeToFile(BitMatrix matrix, String format, OutputStream stream) {
        BufferedImage image = toBufferedImage(matrix);
        Boolean flag=false;
        try {
            if (!ImageIO.write(image, format, stream)) {
                System.out.println("Could not write an image of format: " + format);
                return flag;
            } else {
                flag=true;
                return flag;
            }
        } catch (IOException e) {
            e.printStackTrace();
            flag=false;
            return flag;
        }
    }

    public void decode(File file) {
        try {
            BufferedImage image;
            try {
                image = ImageIO.read(file);
                if (image == null) {
                    System.out.println("Could not decode image...");
                }
                LuminanceSource source = new BufferedImageLuminanceSource(image);
                BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));
                Result result;
                Hashtable hints = new Hashtable();
                //解码设置编码方式为：utf-8
                hints.put(DecodeHintType.CHARACTER_SET, "utf-8");
                result = new MultiFormatReader().decode(bitmap, hints);
                String resultStr = result.getText();
                System.out.println("解析后内容：" + resultStr);
            } catch (IOException ioe) {
                System.out.println(ioe.toString());
            } catch (ReaderException re) {
                System.out.println(re.toString());
            }
        } catch (Exception ex) {
            System.out.println(ex.toString());
        }
    }

    /**
     * createERW  创建二维码
     */
    public File createERW(String text, int width, int height, String format) throws WriterException, IOException {
        /**
         * HashMap几乎可以等价于Hashtable，
         * 除了HashMap是非synchronized的，
         * 并可以接受null(HashMap可以接受为null的键值(key)和值(value)，
         * 而Hashtable则不行)
         *
         * 枚举EncodeHintType 类型有: https://zxing.github.io/zxing/apidocs/com/google/zxing/EncodeHintType.html*/
        Hashtable<EncodeHintType, String> hints = new Hashtable<EncodeHintType, String>();
        hints.put(EncodeHintType.CHARACTER_SET, "utf-8");   // 内容所使用字符集编码
        /**
         * 创建一个矩阵类
         * BarcodeFormat.QR_CODE 这是一个枚举条形码格式类，这里选择二维码
         * 想知道有哪些类型可以查看下面的路径：
         * https://zxing.github.io/zxing/apidocs/com/google/zxing/BarcodeFormat.html
         * */
        BitMatrix bitMatrix = new MultiFormatWriter().encode(text,
                BarcodeFormat.QR_CODE, width, height, hints);
        Date date = new Date();
        StringBuffer str = new StringBuffer();
        str.append("wh_" + date.getTime());
        str.append(".gif");
        File outputFile = new File(str.toString());
        if (!writeToFile(bitMatrix, format, outputFile)) return null;
        return outputFile;
    }

    /**
     * String text  二维码内容
     * int width = 300;  二维码图片宽度
     * int height = 300;  二维码图片高度
     * String format = "gif"; 二维码的图片格式
     **/

    public static void main(String[] args) throws Exception {
        String text = "你们在说什么？我怎么听不懂？";
        int width = 300;
        int height = 300;
        String format = "gif";
        MyEWM ewm = new MyEWM();
        System.out.println("--------------生成二维码----------------");
        File outputFile=null;
        outputFile = ewm.createERW(text, width, height, format);
        if(outputFile!=null){
            System.out.println("--------------解析二维码----------------");
            ewm.decode(outputFile);
            System.out.println("--------------解析结束----------------");
        }else {
            System.out.println("--------------生成失败----------------");
        }
    }
}

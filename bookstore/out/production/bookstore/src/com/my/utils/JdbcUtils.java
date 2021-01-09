package com.my.utils;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.pool.DruidDataSourceFactory;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

public class JdbcUtils {

    private static DruidDataSource dataSource;

    static {

        try {
            Properties properties=new Properties();
            //读取jdbc.properties文件
            InputStream inputStream=JdbcUtils.class.getClassLoader().getResourceAsStream("jdbc.properties");
            //从流中加载数据
            properties.load(inputStream);
            //创建数据库连接池
            dataSource= (DruidDataSource) DruidDataSourceFactory.createDataSource(properties);


        }catch (Exception e){
            e.printStackTrace();
        }

    }

    public static void main(String[] args) {

    }



    /**
     * 获取数据库连接池中的连接
     * @return 如果返回null，说明返回连接失败
     */

    public static Connection getConnection(){
        Connection connection=null;
        try {
            connection=dataSource.getConnection();
        }catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }

    /**
     * 关闭连接，放回数据库连接池
     * @param conn
     */
    public static void close(Connection conn){
        if(conn!=null){
            try {
                conn.close();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        }

    }





}

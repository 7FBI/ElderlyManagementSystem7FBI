<<=======================================================================================>>
1.框架说明
	1.1框架集成架包版本:
		spring:4.3.2
		springMVC:4.3.2
		mybatis:3.4.4
	1.2框架使用环境:
		jdk:1.8.
		tomcat:tomcat8(或以上)
		开发软件:myeclipes(eclipes).
		模板:maven(3.3.9) webapp模板.
		jquery:3.2.0.
2.目录说明:
	2.1main:
		java:所有的java代码都放在这下面
		resources:所有的配置文件都放在这下面
		webapp:前端文件存放路径
		>>>>>>>>>>>>>>>>>>脚本目录
			webapp/resources:存放插件,js,jquery,静态图片等.
			webapp/resources/unity:存放公共的
			webapp/resources/backstage:后台
			webapp/resources/front:前台
		>>>>>>>>>>>>>>>>>>页面目录
			webapp/WEB-INF/views:存放jsp页面,html页面.
				webapp/WEB-INF/views/front:前台页面存放目录
				webapp/WEB-INF/views/backstage:后台页面存放目录
		>>>>>>>>>>>>>>>>>>配置文件目录
			resources/cfg:ssm配置文件目录
			resources/mapper:存放数据库***Mapper.xml文件
			resources/mapper/views:存放数据库***ViewsMapper.xml文件
			resources---->>>log4j.properties 日志输入文件
			resources---->>>mybatisjdbc.properties 数据库连接信息文件
			resources---->>>generatorConfig.xml 逆向生成***Mapper.xml工厂
		>>>>>>>>>>>>>>>>>>java目录
			com.controller:存放controller控制器目录.
				com.controller.front:前台控制器目录.
				com.controller.backstage:后台控制器目录.
				com.controller.util:存放其他用途的控制器目录
			>>>>>>>>>>>>>>
			com.converter:转换器目录
			>>>>>>>>>>>>>>
			com.others:存放于web无关的代码目录
			com.others.ewm:二维码存放目录
			>>>>>>>>>>>>>>
			com.bean:存放表的目录
			com.bean.veiws:存放对应***ViewMapper.xml的Bean的目录
			!!!>>>>>>>>>>>>>>(@Repository标注处)
			com.dao:存放***Mapper.java接口的目录
			com.dao.views:存放对应***ViewMapper.xml的***ViewMapper.java接口的目录
			>>>>>>>>>>>>>>
			com.service:存放***Service.java接口的目录
			com.service.views:存放对应***ViewMapper.xml的***ViewService.java接口的目录
			!!!>>>>>>>>>>>>>>(@Service标注处)
				com.service.Impl:存放***Service.java接口的实例化类的目录
				com.service.Impl.views:存放***ViewService.java接口的实例化类的目录
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
3.项目命名规范:
	3.1service层规范:
		com.service:这是接口，不加注解.
					类名:bean名字+Service	例如(OldUsersService)
		com.serviceImpl:实现service接口的类>>>>>添加注解@Service("")
					类名:bean名字+ServiceImpl	例如(OldUsersServiceImpl)
					注解规范:@Service("oldUsersService")>>>>>使用驼峰命名规范(小大小)
					>>>>>(与类名一致就是首字母小写)
		com.serviceImpl.view:
							类名:bean名字+ViewServiceImpl	例如(OldUsersViewServiceImpl)
							注解规范>>>类似上面(与类名一致就是首字母小写)
	3.2dao层规范:
		com.dao:这里全是接口:
			接口名:(如果不是逆向生成，那就自己写)>>>>>bean名字+Mapper
			注解规范:@Repository("oldUsersMapper")
				>>>>>使用驼峰命名规范(小大小)
				>>>>>(与类名一致就是首字母小写)
		com.dao.view:
			接口名:(如果不是逆向生成，那就自己写)>>>>>bean名字+ViewMapper
			注解规范:@Repository("oldUsersViewMapper")
				>>>>>使用驼峰命名规范(小大小)
				>>>>>(与类名一致就是首字母小写)
	3.3bean规范:
		com.bean:名字.(这里查询的是单表基本的信息:即不做关联查询)
		com.bean.view:名字View	例如(OldUsersView)	(用来做关联查询的)
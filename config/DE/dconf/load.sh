dconf load / < ./archcompiz
#不知道出于什么原因,重载的时候会导致compiz崩溃.错误提示中提到了mediakey,不过这份配置里并没有mediakey
#发现原因在于要删除这条配置：
#panel-main-menu=['disabled']

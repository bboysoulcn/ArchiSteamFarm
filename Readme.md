![](https://upload-images.jianshu.io/upload_images/3778244-905194c8e5e4f070.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

### 概述

之前我写过怎么在steam上挂卡，就是下面这篇文章

`https://www.bboysoul.com/2017/10/10/%E4%BD%BF%E7%94%A8ArchiSteamFarm%E5%9C%A8%E6%A0%91%E8%8E%93%E6%B4%BE%E6%8C%82%E5%8D%A1/`

不过自从我学习了docker之后，我发现没有什么是不能用一个镜像解决的，如果不能，那就两个，所以，从现在开始我要学会用docker解决任何问题，比如找女朋友。

### 首先说一下什么是挂卡

当你在steam里玩游戏的时候，你会发现当你玩的时间累积到一定的时间的时候，steam会奖励你一些卡，然后这些卡你可以在市场上卖，虽然卖出去的卡赚来的钱不能取出来，但是你可以买其他游戏啊。挂卡就是帮助你保持游戏的在线时间，然后赚取这些卡片。

但是问题又来了，我挂卡需要游戏，但是我没有钱买这些游戏怎么办？这个就由我这个老司机告诉你，首先没有游戏没关系，没有钱也没有关系，steam上经常会有一些游戏限免，这些游戏可以让你的游戏库加一，然后这些游戏一般都会有卡片的，接着你去关注下面这个商店，很多时候它都会送游戏

`https://www.humblebundle.com/store`

拿着领取到的key在steam上激活就好了，最后关注一些其他的喜加一新闻就好了

### 一些前提条件

首先肯定要docker啊，这个就不说了，很简单，在我的博客里搜索下就好了，其次最好使用国外的服务器挂卡，因为你懂的，中国大陆ping不通steamcommunity.com这个地址的

### 操作

说了这么多废话之后说下操作，首先clone下面这个仓库地址

`git clone https://github.com/bboysoulcn/ArchiSteamFarm.git`

之后star下这个仓库，并且follow这个很帅气的人，接着build这个镜像，输入下面命令

`cd ArchiSteamFarm`

`docker build -t bboysoul/archisteamfarm:3.3.0.3 .`

注意上面3.3.0.3后面有个点

如果你不想build这个镜像呢也没有关系，直接pull就可以了

`docker pull bboysoul/archisteamfarm:3.3.0.3`

之后新建一个screen会话并且运行起来

`screen -S steam`

`docker run --name archisteamfarm -it bboysoul/archisteamfarm:3.3.0.3 sh -c "/usr/bin/vim /asf/config/bboysoul.json && /asf/ArchiSteamFarm"`

首先会让你输入账号和密码，之后会有输入一个steam的验证码

全部输入完成之后，并且像下面这个样子

~~~bash
➜  ArchiSteamFarm git:(master) docker run --name archisteamfarm -it archisteamfarm:3.3.0.3 sh -c "/usr/bin/vim /asf/config/bboysoul.json && /asf/ArchiSteamFarm"
2018-08-22 23:08:32|ArchiSteamFarm-7|INFO|ASF|InitASF() ArchiSteamFarm V3.3.0.3 (linux-x64/61c03fef-7e4e-4e04-abbf-00d089ff014c | Linux 4.14.14-041414-lowlatency #201801201219 SMP PREEMPT Sat Jan 20 12:23:20 UTC 2018)
2018-08-22 23:08:33|ArchiSteamFarm-7|INFO|ASF|InitGlobalConfigAndLanguage() ASF will attempt to use your preferred  culture, but translation in that language was completed only in 0.0 %. Perhaps you could help us improve ASF translation for your language?
2018-08-22 23:08:33|ArchiSteamFarm-7|INFO|ASF|InitGlobalDatabaseAndServices() It looks like it's your first launch of the program, welcome!
2018-08-22 23:08:43|ArchiSteamFarm-7|WARN|ASF|InitGlobalDatabaseAndServices() Please review our privacy policy section on the wiki if you're concerned about what ASF is in fact doing!
2018-08-22 23:08:49|ArchiSteamFarm-7|INFO|ASF|CheckAndUpdateProgram() ASF will automatically check for new versions every 1 day.
2018-08-22 23:08:49|ArchiSteamFarm-7|INFO|ASF|CheckAndUpdateProgram() Checking for new version...
2018-08-22 23:08:51|ArchiSteamFarm-7|INFO|ASF|CheckAndUpdateProgram() Local version: 3.3.0.3 | Remote version: 3.3.0.3
2018-08-22 23:08:51|ArchiSteamFarm-7|INFO|ASF|InitializeSteamConfiguration() Initializing SteamDirectory...
2018-08-22 23:08:51|ArchiSteamFarm-7|INFO|ASF|InitializeSteamConfiguration() Success!
2018-08-22 23:08:52|ArchiSteamFarm-7|INFO|bboysoul|Start() Starting...
2018-08-22 23:08:52|ArchiSteamFarm-7|INFO|bboysoul|Connect() Connecting...
2018-08-22 23:08:53|ArchiSteamFarm-7|INFO|bboysoul|OnConnected() Connected to Steam!
2018-08-22 23:08:53|ArchiSteamFarm-7|INFO|bboysoul|OnConnected() Logging in...

<bboysoul> Please enter SteamGuard auth code that was sent on your e-mail: 5888K
2018-08-22 23:09:17|ArchiSteamFarm-7|INFO|bboysoul|OnDisconnected() Disconnected from Steam!
2018-08-22 23:09:17|ArchiSteamFarm-7|INFO|bboysoul|OnDisconnected() Reconnecting...
2018-08-22 23:09:17|ArchiSteamFarm-7|INFO|bboysoul|Connect() Connecting...
2018-08-22 23:09:20|ArchiSteamFarm-7|INFO|bboysoul|OnConnected() Connected to Steam!
2018-08-22 23:09:20|ArchiSteamFarm-7|INFO|bboysoul|OnConnected() Logging in...
2018-08-22 23:09:20|ArchiSteamFarm-7|INFO|bboysoul|OnLoggedOn() Successfully logged on as 76561198422915309/bboysoulcn.
2018-08-22 23:09:20|ArchiSteamFarm-7|INFO|bboysoul|Init() Logging in to ISteamUserAuth...
2018-08-22 23:09:22|ArchiSteamFarm-7|INFO|bboysoul|Init() Success!
2018-08-22 23:09:22|ArchiSteamFarm-7|INFO|bboysoul|IsAnythingToFarm() Checking first badge page...
2018-08-22 23:09:24|ArchiSteamFarm-7|INFO|bboysoul|StartFarming() We have a total of 12 games (39 cards) left to idle (~22 hours, 30 minutes remaining)...
2018-08-22 23:09:24|ArchiSteamFarm-7|INFO|bboysoul|Farm() Chosen idling algorithm: Complex
2018-08-22 23:09:24|ArchiSteamFarm-7|INFO|bboysoul|FarmSolo() Now idling: 550 (Left 4 Dead 2)
2018-08-22 23:09:25|ArchiSteamFarm-7|INFO|bboysoul|ShouldFarm() Idling status for 550 (Left 4 Dead 2): 3 cards remaining
2018-08-22 23:09:25|ArchiSteamFarm-7|INFO|bboysoul|FarmCards() Still idling: 550 (Left 4 Dead 2)
~~~

就表示成功了，并且正在挂卡中

ctrl+a+d离开这个会话。

### 总结一下

如果用上docker，那么你整个刮开流程只要四步

1. 安装docker
2. 执行`docker pull bboysoul/archisteamfarm:3.3.0.3`
3. 执行`screen -S steam`
3. 执行`docker run --name archisteamfarm -it bboysoul/archisteamfarm:3.3.0.3 sh -c "/usr/bin/vim /asf/config/bboysoul.json && /asf/ArchiSteamFarm"`

和以前要安装各种依赖影响宿主机来说好多了

欢迎关注Bboysoul的博客[www.bboysoul.com](http://www.bboysoul.com/)
Have Fun

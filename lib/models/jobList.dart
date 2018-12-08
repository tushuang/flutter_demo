
class JobList {
  const JobList({
    this.name,
    this.job,
    this.logo,
    this.site
  });

  final String name;
  final String job;
  final String logo;
  final String site;
}

const JobList joblist1 = JobList(
  name:'玛玛洛可',
  job:'少儿英语市场专员/策划专员',
  logo: "https://xbimg.xiaobaishixi.com/95/ED/953660D693D2784702D6997FB2A796ED.png",
  site: '广州-荔湾区',
);

const JobList joblist2 = JobList(
  name:'欧瑞诺',
  job:'海外购物网站编辑',
  logo: "https://xbimg.xiaobaishixi.com/85/5D/85569F0EE5355B2108F1E5A027D4115D.png",
  site: '北京朝阳区',
);

final List<JobList> lists = [
  joblist1,
  joblist2,
  joblist1,
  joblist2,
  joblist1,
  joblist2,
  joblist1,
  joblist2,
  joblist1,
  joblist2,
];
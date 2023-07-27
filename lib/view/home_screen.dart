import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:publisher_test/config/app_color.dart';
import 'package:publisher_test/config/text_style.dart';
import 'package:publisher_test/controller/homeController.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              backgroundColor: AppColor.transparentColor,
              elevation: 0,
              centerTitle: true,
              leading: const Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 24,
                color: AppColor.black,
              ),
              title: Text(
                "자유톡",
                style: AppTextStyle.regular700.copyWith(
                  fontSize: 16,
                ),
              ),
              actions: const [
                Padding(
                  padding: EdgeInsets.only(
                    right: 16,
                  ),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 24,
                    color: AppColor.black,
                  ),
                )
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 16),
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/chat_person.png",
                                height: 37,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 8,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "안녕 나 응애",
                                          style:
                                              AppTextStyle.regular700.copyWith(
                                            fontSize: 14,
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.all(4),
                                          height: 14,
                                          width: 14,
                                          decoration: BoxDecoration(
                                            color: AppColor.pops,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          alignment: Alignment.center,
                                          child: Image.asset(
                                            "assets/image/check_small.png",
                                            height: 6,
                                          ),
                                        ),
                                        Text(
                                          "1일전",
                                          style:
                                              AppTextStyle.regular500.copyWith(
                                            fontSize: 10,
                                            color: AppColor.textColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      "165cm • 53kg",
                                      style: AppTextStyle.regular400.copyWith(
                                        fontSize: 12,
                                        color: AppColor.textColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 24,
                                width: 58,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(70),
                                  color: AppColor.pops,
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "팔로우",
                                  style: AppTextStyle.regular500.copyWith(
                                    fontSize: 12,
                                    color: AppColor.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
                            style: AppTextStyle.regular700.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(
                            "지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어?\n\n후기 올라오는거 보면 로우라이즈?그게 제일 반응 좋고 그 테이블이제일 재밌었다던데 맞아???\n\n올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
                            style: AppTextStyle.regular500.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: homeController.hashTagList
                                .map(
                                  (e) => Container(
                                    margin: const EdgeInsets.only(
                                      bottom: 12,
                                      left: 4,
                                      right: 4,
                                    ),
                                    padding: const EdgeInsets.only(
                                      top: 8,
                                      bottom: 8,
                                      right: 10,
                                      left: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color:
                                          AppColor.textColor.withOpacity(0.15),
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                    child: Text(
                                      "$e",
                                      textAlign: TextAlign.center,
                                      style: AppTextStyle.regular500.copyWith(
                                        fontSize: 12,
                                        color: AppColor.containerTextColor,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                          const SizedBox(height: 4),
                        ],
                      ),
                    ),
                    Image.network(
                      "https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg",
                      height: 450,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/heart.png",
                            height: 17,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5",
                            style: AppTextStyle.regular400.copyWith(
                              fontSize: 12,
                              color: AppColor.textColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/image/chat.png",
                            height: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5",
                            style: AppTextStyle.regular400.copyWith(
                              fontSize: 12,
                              color: AppColor.textColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/image/copy.png",
                            height: 22,
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Image.asset(
                            "assets/image/dot.png",
                            height: 3,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Divider(
                      height: 2,
                      color: AppColor.textColor.withOpacity(0.3),
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 16,
                        right: 16,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/chat_person.png",
                            height: 37,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "안녕 나 응애",
                            style: AppTextStyle.regular700.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              color: AppColor.pops,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/image/check_small.png",
                              height: 6,
                            ),
                          ),
                          Text("1일전",
                              style: AppTextStyle.regular500.copyWith(
                                fontSize: 10,
                                color: AppColor.textColor,
                              )),
                          const Spacer(),
                          const Icon(
                            Icons.more_horiz,
                            color: AppColor.textColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 58,
                        right: 16,
                        top: 8,
                      ),
                      child: Text(
                        "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!",
                        style: AppTextStyle.regular400.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 58,
                        right: 16,
                        top: 4,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/heart.png",
                            height: 17,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5",
                            style: AppTextStyle.regular400.copyWith(
                              fontSize: 12,
                              color: AppColor.textColor,
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset(
                            "assets/image/chat.png",
                            height: 18,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "5",
                            style: AppTextStyle.regular400.copyWith(
                              fontSize: 12,
                              color: AppColor.textColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 58,
                        right: 16,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/image/replychat.png",
                            height: 37,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "ㅇㅅㅇ",
                            style: AppTextStyle.regular700.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(4),
                            height: 14,
                            width: 14,
                            decoration: BoxDecoration(
                              color: AppColor.pops,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            alignment: Alignment.center,
                            child: Image.asset(
                              "assets/image/check_small.png",
                              height: 6,
                            ),
                          ),
                          Text(
                            "1일전",
                            style: AppTextStyle.regular500.copyWith(
                              fontSize: 10,
                              color: AppColor.textColor,
                            ),
                          ),
                          const Spacer(),
                          const Icon(
                            Icons.more_horiz,
                            color: AppColor.textColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 100,
                        right: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "오 대박! 라이브 리뷰 오늘 올라온대요? 챙겨봐야겠다",
                            style: AppTextStyle.regular400.copyWith(
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Image.asset(
                                "assets/image/heart.png",
                                height: 17,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "5",
                                style: AppTextStyle.regular400.copyWith(
                                  fontSize: 12,
                                  color: AppColor.textColor,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
        ),
        height: 42,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.textColor.withOpacity(0.4),
          ),
        ),
        alignment: Alignment.center,
        child: Row(
          children: [
            Image.asset(
              "assets/image/imagesmode.png",
              height: 24,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              "댓글을 남겨주세요.",
              style: AppTextStyle.regular400.copyWith(
                fontSize: 12,
                color: AppColor.textColor,
              ),
            ),
            const Spacer(),
            Text(
              "등록",
              style: AppTextStyle.regular500.copyWith(
                fontSize: 12,
                color: AppColor.textColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

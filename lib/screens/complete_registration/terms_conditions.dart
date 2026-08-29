import 'package:avril/widgets/back_arrow.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/Group 1171277592.png'),

                      BackArrow(),
                    ],
                  ),
                  const Text(
                    'الشروط والأحكام',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'ExpoArabic',
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 180,
                          width: 180,
                          child: Image.asset(
                            'assets/Asset.png',
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8.0,
                            right: 10,
                            left: 10,
                          ),
                          child: Text(
                            '''باستخدامك لهذا التطبيق، فإنك توافق على الالتزام بالشروط والأحكام الموضحة أدناه. يرجى قراءة هذه الشروط بعناية قبل استخدام التطبيق.
استخدام التطبيق: يجب استخدام التطبيق للأغراض المشروعة فقط، وعدم استخدامه بأي طريقة قد تؤثر على عمل التطبيق أو تضر بالمستخدمين الآخرين.
الحساب والمعلومات: يتحمل المستخدم مسؤولية صحة البيانات والمعلومات التي يقوم بإدخالها، كما يجب المحافظة على سرية بيانات تسجيل الدخول وعدم مشاركتها مع الآخرين.
المحتوى: يلتزم المستخدم بعدم نشر أو إرسال أي محتوى مخالف للقوانين أو يحتوي على إساءة أو تشهير أو انتهاك لحقوق الآخرين.
الخصوصية: نحرص على حماية بيانات المستخدمين وعدم استخدامها إلا في الحدود اللازمة لتقديم خدمات التطبيق وتحسين تجربة الاستخدام.
التحديثات: قد نقوم بتحديث أو تعديل بعض الخدمات أو الشروط من وقت لآخر، وسيتم تطبيق التحديثات الجديدة عند نشرها داخل التطبيق.
إيقاف الحساب: يحق لإدارة التطبيق اتخاذ الإجراءات المناسبة، بما في ذلك إيقاف أو حذف الحساب، في حالة مخالفة المستخدم للشروط والأحكام.
المسؤولية: يتم تقديم التطبيق والخدمات المتاحة من خلاله كما هي، ولا نضمن خلو الخدمة بشكل دائم من الأخطاء أو الأعطال التقنية.
باستمرارك في استخدام التطبيق، فإنك تقر بأنك قرأت هذه الشروط والأحكام وفهمتها ووافقت عليها.''',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'ExpoArabic',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

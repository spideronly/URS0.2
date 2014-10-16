<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutRanking.aspx.cs" Inherits="_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:Button ID="ButtonAR" runat="server" Text="عربي" 
        onclick="ButtonAR_Click" BackColor="#6085CB" Font-Bold="True" 
    Font-Size="Medium" ForeColor="White" />
    <asp:Button ID="ButtonEN" runat="server" Text="English" 
        onclick="ButtonEN_Click" BackColor="#6085CB" Font-Bold="True" 
    Font-Size="Medium" ForeColor="White" />
        <div runat="server" id=Div1 dir="rtl">
       
        <asp:Panel ID="PanelAR" runat="server" Direction="RightToLeft" Visible="False">
            <p align="center" class="MsoNormal" dir="RTL">
                <span lang="AR-SA" style="font-size:22.0pt;font-family:AL-Mateen">تقرير بشأن 
                تصنيف موقع الجامعة<o:p></o:p></span></p>
            <p align="center" class="MsoNormal" dir="RTL">
                <span lang="AR-SA" style="font-size:22.0pt;font-family:AL-Mateen">ضمن تصنيف 
                ويبومتريكس لجامعات العالم<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" style="font-size:18.0pt;font-family:AL-Mateen">مقدمة:<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                قامت مجموعة سايبرميتريكس للأبحاث<span style="mso-spacerun:yes">&nbsp; </span></span>
                <span dir="LTR" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham">
                Cybermetrics Research Group</span><span lang="AR-SA" style="font-size:
16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham"> بإجراء دراسة كمية للإنترنت فيما يتعلق 
                بالاتصالات التعليمية عبر الإنترنت. وقامت هذه المجموعة بتطوير بوابة </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham">Portal</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham"> 
                إلكترونية وإصدار مجلة علمية إلكترونية تدعى<span style="mso-spacerun:yes">&nbsp;
                </span></span>
                <span dir="LTR" style="mso-bidi-font-size:
16.0pt;mso-bidi-font-family:AL-Hotham">CYBERMETRICS</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham"> 
                عام 1997. وكان من أهم أعمال هذه المجموعة إصدار تقييم لمواقع الجامعات العالمية 
                وتصنيفها حسب معايير محددة. وتتبع مجموعة سايبرميتريكس للأبحاث لمركز المعلومات 
                العلمية (</span><span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham">CINDOC</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">)
                </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham">Center for Scientific Research</span><span lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:
12.0pt;font-family:AL-Hotham"> وهو إحدى الهيئات التابعة للمجلس الوطني للأبحاث </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham">National Research Council</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham"> 
                أكبر الهيئات البحثية في إسبانيا.<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" style="font-size:18.0pt;font-family:AL-Mateen">معايير التقييم 
                والتصنيف:<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                يرتكز التقييم المعتمد للتصنيف على دمج سلسلة من المؤشرات </span><span dir="LTR" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham">Indicators</span><span 
                    lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:
12.0pt;font-family:AL-Hotham"> التي تقيس الأوجه المختلفة لموقع الجامعة. وقد اتبعت المجموعة في 
                البداية &quot;عامل تأثير الويب&quot; </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
AL-Hotham">(WIF)</span><span 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham">Web Impact Factor</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham"> 
                وهو النسبة بين عدد الروابط الخارجية </span><span dir="LTR" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham">External 
                Inlinks</span><span lang="AR-SA" style="font-size:16.0pt;
mso-ansi-font-size:12.0pt;font-family:AL-Hotham"> إلى عدد صفحات الموقع حيث أن النسبة المثالية هي 
                (</span><span dir="LTR" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham">1:1</span><span 
                    lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">)، 
                وهذه النسبة تمثل النسبة بين الوضوح والحجم. ولكن المجموعة أضافت مؤشرات أخرى من 
                شأنها إثراء قيمة المحتويات الأكاديمية للموقع، حيث تم الأخذ في الاعتبار وجود 
                مجموعة معينة من الملفات في الموقع أطلق عليها إسم الملفات الغنية </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
AL-Hotham">Rich files</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham"> 
                وهي أربعة أنواع من الملفات هي<span style="mso-spacerun:yes">&nbsp; </span>(</span><span 
                    dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
AL-Hotham">pdf, doc, ppt, ps</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">). 
                وقد تم اختيار هذه الأنواع الأربعة بالتحديد لأن معظم أنشطة النشر البحثي تتم من 
                خلال هذه الملفات، ولهذا الغرض تمت الاستعانة بمحرك البحث &quot;جوجل سكولار&quot;<span 
                    style="mso-spacerun:yes">&nbsp; </span></span><span dir="LTR" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham">Google 
                Scholar</span><span lang="AR-SA" style="font-size:16.0pt;
mso-ansi-font-size:12.0pt;font-family:AL-Hotham">.<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                بمجمل الأمر، تم اعتماد أربعة مؤشرات لتقييم والتصنيف نلخصها فيما يلي:<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:
12.0pt;font-family:AL-Hotham">1<span style="mso-spacerun:yes">&nbsp; </span>-<span 
                    style="mso-tab-count:1">&nbsp;&nbsp; </span></span>
                <span lang="AR-SA" style="font-size:
16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Mateen">الحجم </span><span dir="LTR" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Mateen">Size</span><span 
                    lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:
12.0pt;font-family:AL-Mateen">:</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham"> 
                ويتم حساب حجم الموقع بحساب عدد صفحات الموقع بالاستعانة بأربع محركات بحث هي:
                <o:p></o:p>
                </span>
            </p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                جوجل </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
AL-Hotham">Google</span><span lang="AR-SA" style="font-size:
16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">، ياهو </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
AL-Hotham">Yahoo</span><span lang="AR-SA" style="font-size:
16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">، لايف سيرش </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
AL-Hotham">Live Search</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">، 
                إكساليد </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham">Exalead</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">. 
                والنتيجة التي يعطيها كل محرك لعدد صفحات الموقع يتم تطبيعها لوغاريثمياً للرقم (1) 
                لأعلى قيمة، ثم بعد ذلك يتم حذف أعلى وأدنى قيمة، ويتم جمع القيمتين المتبقيتين.<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">2<span 
                    style="mso-spacerun:yes">&nbsp; </span>-</span><span lang="AR-SA" style="font-size:
16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Mateen"><span style="mso-tab-count:
1">&nbsp;&nbsp; </span>الوضوح </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Mateen">Visibility</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Mateen">:</span><span 
                    lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:
12.0pt;font-family:AL-Hotham"><o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                <span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>يتم الحصول على العدد الكلي للروابط 
                الخارجية الفريدة للموقع بواسطة محركين من محركات البحث هما ياهو </span>
                <span dir="LTR" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham">Yahoo</span><span 
                    lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:
12.0pt;font-family:AL-Hotham"> و إم.إس.إن. </span>
                <st1:stockticker w:st="on">
    <span dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
 AL-Hotham">MSN</span></st1:stockticker>
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                فقط. ويتم تطبيع العدد الناتج من كل محرك بحث للرقم (1) وتؤخذ النتيجة الأكبر بين 
                القيمتين الناتجتين.<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                3<span style="mso-spacerun:yes">&nbsp; </span>-</span><span lang="AR-SA" style="font-size:
16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Mateen"><span style="mso-tab-count:
1">&nbsp;&nbsp; </span>الملفات الغنية </span>
                <span dir="LTR" style="mso-bidi-font-size:
16.0pt;mso-bidi-font-family:AL-Mateen">Rich Files</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham"><o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                <span 
                    style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>بعد تقييم وثاقة الصلة (الأكاديمية) 
                وحجم الأشكال المختلفة للملفات، تم الأخذ في الاعتبار أربعة أنوع من الملفات الغنية 
                (</span><span 
                    style="mso-bidi-font-size: 16.0pt; mso-bidi-font-family: AL-Hotham;" dir="LTR">pdf, 
                doc, ppt, ps</span><span 
                    style="font-size: 16.0pt; mso-ansi-font-size: 12.0pt; font-family: AL-Hotham;" 
                    lang="AR-SA">). ويتم حساب عدد هذه الملفات باستخدام محرك جوجل فقط، ويتم دمج 
                النتائج لكل الملفات وتطبيعها لوغاريثمياً بنفس الطريقة السابقة.<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                4<span style="mso-spacerun:yes">&nbsp; </span>-</span><span lang="AR-SA" style="font-size:
16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Mateen"><span style="mso-tab-count:
1">&nbsp;&nbsp; </span>العالم </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Mateen">Scholar</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Mateen">:</span><span 
                    lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:
12.0pt;font-family:AL-Hotham"><o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                <span 
                    style="mso-tab-count: 1;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>يتم حساب عدد الأوراق العلمية 
                والاستشهاد العلمية للموقع الأكاديمي بواسطة محرك بحث جوجل سكولار </span>
                <span style="mso-bidi-font-size: 16.0pt; mso-bidi-font-family: AL-Hotham;" 
                    dir="LTR">Google Scholar</span><span 
                    style="font-size: 16.0pt; mso-ansi-font-size: 12.0pt; font-family: AL-Hotham;" 
                    lang="AR-SA"> وتمثل هذه النتائج من محرك البحث الأوراق العلمية، والتقارير 
                والمواضيع الأكاديمية الأخرى. و</span><span lang="AR-SA" 
                    style="mso-bidi-font-size: 16.0pt; mso-bidi-font-family: AL-Hotham;" 
                    dir="LTR"> </span><span 
                    lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:
12.0pt;font-family:AL-Hotham">رغم أن هناك بعض التشويش المتوقع على هذه النتائج (أي نسبة من 
                الخطأ)، لم يتم أي نوع من تنقية النتائج من هذا التشويش. ومن الجدير بالذكر أن جوجل 
                سكولار مازال قيد التجربة </span>
                <span dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
AL-Hotham">beta Version</span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">، 
                ولكن إدراج نتائجه يحسن مساهمة التوصيل الرسمي للتصنيف.<o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                <span style="mso-tab-count:1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>في النهاية، يتم دمج نتائج التقويم 
                باستخدام العوامل الأربعة السابقة حيث يتم إعطاء كل عامل من هذه العوامل وزناً 
                مختلفاً. ويتم الحساب النهائي حسب المعادلة التالية:</span><span dir="LTR" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham"><o:p></o:p></span></p>
            <p class="MsoNormal" dir="RTL">
                <b><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                رتبة ويبوميتريكس (التصنيف)=</span><span dir="LTR" lang="AR-SA" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham"> </span>
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">4*</span><span 
                    dir="LTR" lang="AR-SA" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham">
                <span style="mso-spacerun:yes">&nbsp;</span></span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">رتبة 
                الوضوح</span><span dir="LTR" lang="AR-SA" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham"> </span>
                <span lang="AR-SA" style="font-size:16.0pt;
mso-ansi-font-size:12.0pt;font-family:AL-Hotham">+</span><span dir="LTR" lang="AR-SA" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham"> </span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">2*</span><span 
                    dir="LTR" lang="AR-SA" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham"> </span>
                <span lang="AR-SA" style="font-size:16.0pt;mso-ansi-font-size:12.0pt;
font-family:AL-Hotham">رتبة الحجم</span><span dir="LTR" lang="AR-SA" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham"> </span>
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">+1</span><span 
                    dir="LTR" lang="AR-SA" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham"> </span>
                <span lang="AR-SA" style="font-size:16.0pt;
mso-ansi-font-size:12.0pt;font-family:AL-Hotham">*</span><span dir="LTR" lang="AR-SA" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham"> </span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                رتبة جوجل سكولار</span><span dir="LTR" lang="AR-SA" 
                    style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:AL-Hotham"> </span>
                <span lang="AR-SA" style="font-size:16.0pt;
mso-ansi-font-size:12.0pt;font-family:AL-Hotham">+1*</span><span dir="LTR" style="mso-bidi-font-size:16.0pt;mso-bidi-font-family:
AL-Hotham"><span style="mso-spacerun:yes">&nbsp; </span></span><span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                رتبة الملفات الغنية.</span><span dir="LTR" style="mso-bidi-font-size:16.0pt;
mso-bidi-font-family:AL-Hotham"><o:p></o:p></span></b></p>
            <p class="MsoNormal" dir="RTL" align="center">
                <b><span dir="LTR" style="font-size:14.0pt;mso-bidi-font-family:AL-Hotham">
                Webmetrics Rank (WR)=4*V+2*S+1*R+1*SC<o:p></o:p></span></b></p>
            <p class="MsoNormal" dir="RTL">
                <span lang="AR-SA" 
                    style="font-size:16.0pt;mso-ansi-font-size:12.0pt;font-family:AL-Hotham">
                <o:p>&#160;</o:p>
                </span></p>


</asp:Panel>
 </div>
<asp:Panel ID="PanelEN" runat="server">
    <p dir="ltr" 
    style="mso-line-height-alt: 9.75pt">
        &nbsp;</p>
    <p dir="ltr" style="mso-line-height-alt: 9.75pt">
        &nbsp;</p>
    <p dir="ltr" style="line-height: 9.75pt">
        <span style="font-size: 7.5pt; color: darkslategray; font-family: Verdana; background-color: #ffffff;">University activity
            is multi-dimensional and this is reflected in its web presence. So the best way
            to build the </span>
    </p>
    <p dir="ltr" style="line-height: 9.75pt; height: 84px; width: 698px;">
        <span style="font-size: 7.5pt; color: black; font-family: Verdana; background-color: #ffffff;">ranking is combining
            a group of indicators that measures these different aspects. Almind &amp; Ingwersen
            proposed the first Web&nbsp; ndicator, Web Impact Factor (WIF), based on link analysis
            that combines the number of external inlinks and the number of pages of the website,
            a ratio of 1:1 between visibility and size. This ratio is used for the ranking but
            adding two new indicators to the size component: Number of documents, measured from
            the number of rich files in a web domain, and number of publications being collected
            by Google Scholar database. As it has been already commented, the four indicators
            were obtained from the quantitative results provided by the main search engines
            as follows:<o:p></o:p></span></p>
    <p dir="ltr" style="line-height: 9.75pt">
        <o:p></o:p>
    </p>
    <p dir="ltr" style="line-height: 9.75pt; width: 651px;">
        <strong><span style="font-size: 7.5pt; color: black; font-family: Verdana">Size (S)</span></strong><span
            style="font-size: 7.5pt; color: black; font-family: Verdana">. Number of pages recovered
            from four engines: Google, Yahoo, Live Search and Exalead. For each engine, results
            are log-normalised to 1 for the highest value. Then for each domain, maximum and
            minimum results are excluded and every institution is assigned a rank according
            to the combined sum.<br />
        <strong><span style="font-family: Verdana">Visibility (V).</span></strong> The total
            number of unique external links received (inlinks) by a site can be only confidently
            obtained from Yahoo Search, Live Search and Exalead. For each engine, results are
            log-normalised to 1 for the highest value and then combined to generate the rank.<br />
        <strong><span style="font-family: Verdana">Rich Files (R)</span></strong>. After
            evaluation of their relevance to academic and publication activities and considering
            the volume of the different file formats, the following were selected: Adobe Acrobat
            (<em><span style="font-family: Verdana">.pdf</span></em>), Adobe PostScript (<em><span
                style="font-family: Verdana">.ps</span></em>), Microsoft Word (<em><span 
            style="font-family: Verdana">.doc</span></em>)
            and Microsoft Powerpoint (<em><span 
            style="font-family: Verdana">.ppt</span></em>).
            These data were extracted using Google and merging the results for each filetype
            after log-normalising in the same way as described before.<br />
        <strong><span style="font-family: Verdana">Scholar (Sc)</span></strong>. Google
            Scholar provides the number of papers and citations for each academic domain. These
            results from the Scholar database represent papers, reports and other academic items.<o:p></o:p></span></p>
    <p dir="ltr" style="line-height: 9.75pt">
        <span style="font-size: 7.5pt; color: black; font-family: Verdana">The four ranks were
            combined according to a formula where each one has a different weight:
        <o:p></o:p>
        </span>
    </p>
    <p align="center" class="estilo2" dir="ltr" style="margin: auto 0in; text-align: center;
        mso-line-height-alt: 9.75pt">
        <span style="font-family: Verdana"><strong><span style="font-size: 10pt">
        <span style="color: #ff0000">Rank (position)=<br />
        4*RankV+2*RankS+1*RankR+1*RankSc
        <o:p></o:p>
        </span></span></strong></span>
    </p>
    <p dir="ltr" style="line-height: 9.75pt; width: 656px;">
        <span style="font-size: 7.5pt; color: black; font-family: Verdana">7. <em>
        <span style="font-family: Verdana">Relevance and validity of the indicators.
        </span></em>The choice of the indicators
            was done according to several criteria (see
        <a href="http://www.webometrics.info/methodology.html#nota">note</a>), some of them trying to catch quality and academic and institutional
            strengths but others intending to promote web publication and Open Access initiatives.
            The inclusion of the total number of pages is based on the recognition of a new
            global market for academic information, so the web is the adequate platform for
            the internationalization of the institutions. A strong and detailed web presence
            providing exact descriptions of the structure and activities of the university can
            attract new students and scholars worldwide . The number of external inlinks received
            by a domain is a measure that represents visibility and impact of the published
            material, and although there is a great diversity of motivations for linking, a
            significant fraction works in a similar way as bibliographic citation. The success
            of self-archiving and other repositories related initiatives can be roughly represented
            from rich file and Scholar data. The huge numbers involved with the pdf and doc
            formats means that not only administrative reports and bureaucratic forms are involved.
            PostScript and Powerpoint files are clearly related to academic activities.<o:p></o:p></span></p>
    <p dir="ltr" style="line-height: 9.75pt; width: 652px;">
        <span style="font-size: 7.5pt; color: black; font-family: Verdana">8. <em>
        <span style="font-family: Verdana">Measure outcomes in preference to inputs whenever possible</span></em>. Data on
            inputs are relevant as they reflect the general condition of a given establishment
            and are more frequently available. Measures of outcomes provide a more accurate
            assessment of the standing and/or quality of a given institution or program. We
            expect to offer a better balance in the future, but current edition intend to call
            the attention to incomplete strategies, inadequate policies and bad practices in
            web publication before attempting a more complete scenario.<o:p></o:p></span></p>
    <p dir="ltr" style="line-height: 9.75pt; width: 662px;">
        <span style="font-size: 7.5pt; color: black; font-family: Verdana">9. <em>
        <span style="font-family: Verdana">Weighting the different indicators: Current and future evolution.</span></em> The
            current rules for ranking indicators including the described weighting model has
            been tested and published in scientific papers. More research is still done on this
            topic, but the final aim is to develop a model that includes additional quantitative
            data, especially bibliometric and scientometric indicators.<o:p></o:p></span></p>
    <p dir="ltr" style="line-height: 9.75pt">
        <span style="font-size: 7.5pt; color: black; font-family: Verdana">C) Collection and
            Processing of Data<o:p></o:p></span></p>
    <p dir="ltr" style="line-height: 9.75pt; width: 640px;">
        <span style="font-size: 7.5pt; color: black; font-family: Verdana">10. E<em><span
            style="font-family: Verdana">thical standards. </span></em>We identified some relevant
            biases in the search engines data including under-representation of some countries
            and languages. As the behaviour is different for each engine, a good practice consists
            of combining results from several sources. Any other mistake or error is unintentional
            and it should not affect the credibility of the ranking. Please contact us if you
            think the ranking is not objective and impartial in any way.<br />
        11. A<em><span style="font-family: Verdana">udited and verifiable data. </span>
        </em>The only source for the data of the Webometrics Ranking is a small set of globally
            available, free access search engines. All the results can be duplicated according
            to the describing methodologies taking into account the explosive growth of the
            web contents, their volatility and the irregular behaviour of the commercial engines.<br />
        12. <em><span style="font-family: Verdana">Data collection.</span></em> Data are
            collected during the same week, in two consecutive rounds for each strategy, being
            selected the higher value. Every website under common institutional domain is explored,
            but no attempt has been done to combine contents or links from different domains.<br />
        13. Q<em><span style="font-family: Verdana">uality of the ranking processes</span></em>.
            After automatic collection of data, positions are checked manually and compared
            with previous editions. Some of the processes are duplicated and new expertise is
            added from a variety of sources. Pages that linked to the Webometrics Ranking are
            explored and comments from blogs and other fora are taken into account. Finally,
            our mailbox receives a lot of requests and suggestions that are acknowledged individually.<br />
        14. O<em><span style="font-family: Verdana">rganizational measures to enhance credibility.
        </span></em>The ranking results and methodologies are discussed in scientific journals,
            and presented in international conferences. We expect international advisory or
            even supervisory bodies to take part in future developments of the ranking.<o:p></o:p></span></p>
    <p class="MsoNormal" dir="ltr" style="margin: 0in 0in 0pt; direction: ltr; unicode-bidi: embed;
        text-align: left">
        <span dir="rtl" lang="AR-SA">
        <o:p>&nbsp;</o:p>
        </span>
    </p>


</asp:Panel>
</asp:Content>


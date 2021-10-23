import 'package:flutter/material.dart';
import 'package:quiz_app/Answer.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var indexValue=0;
  var finalScore=0;


  var questionList=[

    {
      'questionText':'1. Which input device cannot be used to work in MS-Office?',
      'answer': [{'text':'A)joy stick','score':1}, {'text':'B)scanner','score':0}, {'text':'C)light pen','score':0},{'text':'D)mouse','score':0},],
    },
    {
      'questionText': '2. Which of the following methods cannot be used to enter data in a cell?',
      'answer': [{'text':'A) clicking the enter button on the formula bar','score':0}, {'text':'B) pressing an arrow key','score':0}, {'text':'C) Pressing the TAB key','score':0},{'text':'D) pressing the ESC key','score':1},],
    },
    {
      'questionText': '3. Thesaurus is used for:',
'answer': [{'text':'A) Opposite word','score':0}, {'text':'B) spelling options','score':0}, {'text':'C) grammer options','score':0},{'text':'D) Synonyms and antonyms','score':1}],
    },
       {
      'questionText': '4. Which is the shortcut key to check spelling of a document?',
'answer': [{'text':'A) F9','score':0}, {'text':'B) F1','score':0}, {'text':'C) F2','score':0},{'text':'D) F7','score':1}],
    },
           {
      'questionText': '5. What tool can the user use to set indents or tabs?',
'answer': [{'text':'A) ruler','score':1}, {'text':'B) title bar','score':0}, {'text':'C) insert point','score':0},{'text':'D) auto correct','score':0}],
    },
       {
      'questionText': '6. Which of the following keystrokes lets you recalculate the formula?',
'answer': [{'text':'A) F9','score':1}, {'text':'B) F2','score':0}, {'text':'C)  F7','score':0},{'text':'D)F3','score':0}],
    },
       {
      'questionText': '7. An excel workbook is a collection of ………………',
'answer': [{'text':'A) Worksheets and charts','score':1}, {'text':'B)  workbooks','score':0}, {'text':'C)  worksheets','score':0},{'text':'D) charts','score':0}],
    },
       {
      'questionText': '8. To return the remainder after a number is divided by a divisor in excel we use the function:',
'answer': [{'text':'A) DIV()','score':0}, {'text':'B) ROUND()','score':0}, {'text':'C) FACT()','score':0},{'text':'D)  MOD()','score':1}],
    },
       {
      'questionText': '9. What will be the output if you format the cell containing 5436.8 as ‘#,##0.00’?',
'answer': [{'text':'A) 6.8','score':0}, {'text':'B)  5,430.00','score':0}, {'text':'C)   5,436.80','score':1},{'text':'D)  5,436.8','score':0}],
    },
     {
      'questionText': '10. Excel displays the current cell address in the …………..',
'answer': [{'text':'A)  title bar','score':0}, {'text':'B) formula bar','score':0}, {'text':'C)  status bar','score':0},{'text':'D)  name box','score':1}],
    },
     {
      'questionText': '11. Which language is used to create macros in excel?',
'answer': [{'text':'A) java','score':0}, {'text':'B)  visual basic','score':1}, {'text':'C)  access','score':0},{'text':'D)  visual C++','score':0}],
    },
     {
      'questionText': '12. You can delete text by:',
'answer': [{'text':'A) selecting the text and pressing the Ext key','score':0}, {'text':'B)  selecting the text and pressing the Ctrl key','score':0}, {'text':'C)  selecting the text and pressing the delete key','score':1},{'text':'D)  selecting the text and pressing the Alt+pageup key','score':0}],
    },
     {
      'questionText': '13. Getting data from a cell located in a different sheet is called ……….',
'answer': [{'text':'A) functioning','score':0}, {'text':'B)  accessing','score':0}, {'text':'C)  referencing','score':1},{'text':'D)   updating','score':0}],
    },
     {
      'questionText': '14. A numeric value can be treated as a label value if it precedes with:',
'answer': [{'text':'A) ampersand (&)','score':0}, {'text':'B) apostrophe (‘)','score':1}, {'text':'C)  exclamation (!)','score':0},{'text':'D)   hash (#)','score':0}],
    },
     {
      'questionText': '15. ……… means: that the data contained in a database is accurate and reliable:',
'answer': [{'text':'A) data consistency','score':0}, {'text':'B) data redundancy','score':0}, {'text':'C)  data integrity','score':1},{'text':'D)  data reliability','score':0}],
    },
     {
      'questionText': '16. Any request for data from a database is known as:',
'answer': [{'text':'A)  formula','score':0}, {'text':'B) result','score':0}, {'text':'C)  query','score':1},{'text':'D)  record','score':0}],
    },
     {
      'questionText': '17. Database management systems are intended to :',
'answer': [{'text':'A) establish relationship among records in different files','score':0}, {'text':'B) eliminate data redundancy','score':0}, {'text':'C)  manage file access','score':0},{'text':'D)  all of the above','score':1}],
    },
     {
      'questionText': '18. The relational model uses some unfamiliar terminology. A tuple is equivalent to a:',
'answer': [{'text':'A) data base','score':0}, {'text':'B)  record','score':1}, {'text':'C)   field','score':0},{'text':'D)   file','score':0}],
    },
     {
      'questionText': '19. The sorting and indexing must be performed according to a:',
'answer': [{'text':'A) tuple','score':0}, {'text':'B) record','score':0}, {'text':'C)  row','score':0},{'text':'D)  key field','score':1}],
    },
     {
      'questionText': '20. Which category is found in custom animation?20. Which category is found in custom animation?',
'answer': [{'text':'A)  transition','score':0}, {'text':'B)  master slide','score':0}, {'text':'C)  design templates','score':0},{'text':'D)  entrance','score':1}],
    },
     {
      'questionText': '21. Which key on the keyboard can be used to view slide show?',
'answer': [{'text':'A)  F10','score':0}, {'text':'B) F1','score':0}, {'text':'C)  F2','score':0},{'text':'D)  F5','score':1}],
    },
     {
      'questionText': '22. In Ms-powerpoint, to insert new slide in the current presentation. We can choose',
'answer': [{'text':'A) Ctrl+F','score':0}, {'text':'B) Ctrl+M','score':1}, {'text':'C)   Ctrl+N','score':0},{'text':'D)  Ctrl+O','score':0}],
    },
     {
      'questionText': '23. CMS in web page stand for:',
'answer': [{'text':'A) Content mapping system','score':0}, {'text':'B) Content management system','score':1}, {'text':'C)  Customer management system','score':0},{'text':'D)  Content management sources','score':0}],
    },
     {
      'questionText': '24. Which one is not used in web page designing?',
'answer': [{'text':'A) oracle','score':1}, {'text':'B) DHTML','score':0}, {'text':'C)  PHP','score':0},{'text':'D)  HTML','score':0}],
    },
     {
      'questionText': '25. Which one is not skeleton and flesh of HTML documents?',
'answer': [{'text':'A) video and sentences','score':1}, {'text':'B) text and hyperlink','score':0}, {'text':'C)  list and forms','score':0},{'text':'D)  tables and frames','score':0}],
    },
     {
      'questionText': '26. A hard copy would be prepared on a:',
'answer': [{'text':'A) typewriter terminal','score':0}, {'text':'B)line printer','score':0}, {'text':'C) dot matrix printer','score':0},{'text':'D)  all of the above','score':1}],
    },
     {
      'questionText': '27. Fifth generation computer is also known as:',
'answer': [{'text':'A) knowledge information processing system','score':1}, {'text':'B) very large scale integratioin (VLSI)','score':0}, {'text':'C)  both of above','score':0},{'text':'D)  none of above','score':0}],
    },
     {
      'questionText': '28. A compiler is …….',
'answer': [{'text':'A) a program which translates from one high-level to a machine level','score':1}, {'text':'B) a combination of computer hardware','score':0}, {'text':'C)a program which translates from one high-level language to another','score':0},{'text':'D)none of above','score':0}],
    },
     
  
     {
      'questionText': '29. A pixel is :',
'answer': [{'text':'A) the smallest resolvable part of picture','score':1}, {'text':'B) a computer program that draws picture','score':0}, {'text':'C)a picture stored in secondary memory','score':0},{'text':'D)none of the above','score':0}],
    },
     

     {
      'questionText': '30. Memory is made up of',
'answer': [{'text':'A) large number of cells','score':1}, {'text':'B)  set of wires','score':0}, {'text':'C) set of circuits','score':0},{'text':'D)all of the above','score':0}],
    },
     {
      'questionText': '31. A disadvantage of the laser printer is:',
'answer': [{'text':'A) the output is of a lower quality','score':0}, {'text':'B) it is quiter than an impact printer','score':0}, {'text':'C) it is very slow','score':0},{'text':'D)  none of the above','score':1}],
    },
     {
      'questionText': '32. Which of the following devices can be used to direclty input printed text?',
'answer': [{'text':'A) MICR','score':0}, {'text':'B) OCR','score':1}, {'text':'C)OMR','score':0},{'text':'D)all of above','score':0}],
    },
     {
      'questionText': '33. Which one is volatile memory?',
'answer': [{'text':'A) pendrive','score':0}, {'text':'B) ROM','score':0}, {'text':'C)RAM','score':1},{'text':'D)none of these','score':0}],
    },
     {
      'questionText': '34. Which one is output device?',
'answer': [{'text':'A) printer','score':1}, {'text':'B)  keyboard','score':0}, {'text':'C)mouse','score':0},{'text':'D)scanner','score':0}],
    },
     {
      'questionText': '35. The ………. shows all the websites and pages that you have visited over a period of time.',
'answer': [{'text':'A) tool bar','score':0}, {'text':'B) status bar','score':0}, {'text':'C)task bar','score':0},{'text':'D)history bar','score':1}],
    },
     {
      'questionText': '36. A proxy server is used for the which of the following:',
'answer': [{'text':'A) to provide TCP/IP','score':0}, {'text':'B) to provide security against unauthorized users','score':1}, {'text':'C)   to process client request for web pages','score':0},{'text':'D)  to process client request for database access','score':0}],
    },
     {
      'questionText': '37. Which of the following bit patterns represents the decimal value 5?',
'answer': [{'text':'A) 11111001','score':0}, {'text':'B) 00011010','score':0}, {'text':'C)11111011','score':0},{'text':'D)00000101','score':1}],
    },
     {
      'questionText': '38. Which of the following connects existing networks to form an internet?',
'answer': [{'text':'A) repeater','score':0}, {'text':'B) bridge','score':0}, {'text':'C)router','score':1},{'text':'D)switch','score':0}],
    },
   
     {
      'questionText': '39. the difference between people with access to computer and the internet; and those without this access is known as the:',
'answer': [{'text':'A) broadband devide','score':0}, {'text':'B) internet divide','score':0}, {'text':'C)digital divide','score':1},{'text':'D)web divide','score':0}],
    },
     {
      'questionText': '40. Which of the following capabilities is required for a system program to execute more than one program at a time?',
'answer': [{'text':'A)  multitasking','score':1}, {'text':'B) under processing','score':0}, {'text':'C)compiling','score':0},{'text':'D)virtual memory','score':0}],
    },
     {
      'questionText': '41. Which of the following is true about the recyclin bin?',
'answer': [{'text':'A) windows stores items in the recycle bin until they are permanently deleted','score':1}, {'text':'B)files sent to the recycle bin can not be restored','score':0}, {'text':'C)the recycle bin automatically empties its contents every 24 hours','score':0},{'text':'D)the recycle bin is a special section of the computer’s memory','score':0}],
    },
     {
      'questionText': '42. Which of the following would be best tool to diagnose and troubleshoot when hard drive seems to have higher than normal activity?',
'answer': [{'text':'A) Disk degragmenter','score':1}, {'text':'B) task manager','score':0}, {'text':'C)NTBACK UP','score':0},{'text':'D)FDISK','score':0}],
    },
     {
      'questionText': '43. Operating system is:',
'answer': [{'text':'A)a collection of input-output devices','score':0}, {'text':'B) a collection of hardware components','score':0}, {'text':'C)a collection of system software','score':1},{'text':'D)none of the above','score':0}],
    },
     {
      'questionText': '44. Which of the following are loaded into main memory when the computer is booted?',
'answer': [{'text':'A)word processing instructions','score':0}, {'text':'B) internal command instructions','score':1}, {'text':'C)external command instructions','score':0},{'text':'D)utility programs','score':0}],
    },
     {
      'questionText': '45. Headers and footers are:',
'answer': [{'text':'A) text that appears on a separate page in the document','score':0}, {'text':'B) text that appears only in print preview','score':0}, {'text':'C)text that appears on every page above or below the body text','score':1},{'text':'D)text that appears only in outline layout view','score':0}],
    },
     {
      'questionText': '46. Word processing software can be used to create:',
'answer': [{'text':'A) presentation','score':0}, {'text':'B) letters','score':1}, {'text':'C)spreadsheets','score':0},{'text':'D)database files','score':0}],
    },
     {
      'questionText': '47. What is the short cut key to open the thesaurus window?',
'answer': [{'text':'A) Shift+F7','score':1}, {'text':'B)  Ctrl+F7','score':0}, {'text':'C)F7','score':0},{'text':'D)Alt+F7','score':0}],
    },
     {
      'questionText': '48. Which shortcut key do you use to double space a paragraph?',
'answer': [{'text':'A) Ctrl+F2','score':0}, {'text':'B) Ctrl+1','score':0}, {'text':'C)Ctrl+2','score':1},{'text':'D)Alt+F2','score':0}],
    },
    {
      'questionText': '49. Which feature do you use to create newspaper?',
'answer': [{'text':'A)tables','score':0}, {'text':'B)tabs','score':0}, {'text':'C)columns','score':1},{'text':'D)bullets and numbering','score':0}],
    },
    {
      'questionText': '50. MS word allows creatiion of ……… type of documents by default.',
'answer': [{'text':'A).dot','score':0}, {'text':'B).doc','score':1}, {'text':'C).wpf','score':0},{'text':'D).txt','score':0}],
    },
    
    
    
  ];

  void restartFunction(){
    setState(() {
          indexValue=0;
        });
  }
  
  void myFunction(int score){
    setState(() {
          indexValue=indexValue+1;
          finalScore=finalScore+score;
        });
    print("answer choose gareko xu");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Quiz_App"),
      ),

      body:indexValue<questionList.length?Column(children: [
Question(questionList[indexValue]['questionText']),
     ...(questionList[indexValue]['answer'] as List<Map<String, Object>>).map((answer){

       return Answer(answer['text'],()=>myFunction(answer['score']));
     }).toList()

      ],):Result(restartFunction,finalScore),
    ));
  }
}

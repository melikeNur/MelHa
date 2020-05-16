# MelHa
**Group Members: Melike Nur Korkmaz , Hatice Akıntı <br>
      Syntax** <br>
* &lt;type&gt;                  ::= &lt;derslik&gt;|&lt;saat&gt;|&lt;hoca&gt;                               
* &lt;derslik&gt;               ::= &lt;letter&gt; &lt;classrooomnumber&gt;
* &lt;classroomnumber&gt;       ::= &lt;digit&gt; &lt;digit&gt; &lt;digit&gt;
* &lt;digit&gt;                 ::= 0|1|2|3|4|5|6|7|8|9 
* &lt;saat&gt;                  ::= &lt;minutes&gt &lt;:&gt; &lt;seconds&gt; 
* &lt;minutes&gt;               ::= &lt;digit&gt; &lt;digit&gt; 
* &lt;seconds&gt;               ::= &lt;digit&gt; &lt;digit&gt;
* &lt;digit&gt;                 ::= 0|1|2|3|4|5|6|7|8|9
* &lt;char&gt;                  ::= &lt;letter&gt;  |  &lt;digit&gt;
* &lt;empty statement&gt;       ::= ;
* &lt;eger&gt;                  ::=eger ( &lt;expression&gt; ) &lt;statement&gt;
* &lt;iken statement&gt;        ::=iken ( &lt;expression&gt; ) &lt;statement&gt;
* &lt;expression&gt;            ::=&lt;assignment expression&gt; | &lt;relational expression&gt;
* &lt;relational expression&gt; ::= &lt;expression&gt; + [== | < | <= | > | >= | <=> | =>] + + &lt;expression&gt; 
* &lt;assignment expression&gt; ::= &lt;conditional expression&gt; | &lt;assignment&gt;
* &lt;conditional expression&gt; ::= EGER + ( + &lt;expression&gt + ) + ISE + &lt;statement&gt; +  
                             [ VEYA + ( + &lt;expression&gt; + ) + ISE + &lt;statement&gt;]* + YOKSA + &lt;statement&gt; + . 
* &lt;yap  statement&gt;        ::= yap &lt;statement&gt; iken (&lt;expression&gt; )
* &lt;boolean literal&gt;       ::= dolu | boş
* &lt;escape character&gt;      ::= \
* &lt;equality expression&gt;   ::= &lt;relational expression&gt; | &lt;equality expression&gt; == &lt;relational expression&gt; | &lt;equality expression&gt; != &lt;relational expression&gt; <br>
   Explanations about the language <br>
  -This programming languaage contain our names:Mel was Melike and Ha was Hatice.<br>
  -Takes a file with extension .mh.Infact if extension .MH,it confuse for Graphic File extension son only use .mh.<br>
  -Has if(eger), while(iken) , do(while) ,boolean literal<br>
  -This programming language specializes in preparing curricula and is very easy to learn<br>
  -It need only hour,classrooms,teachers and days.<br>

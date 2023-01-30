REM echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>pip 을 인식 못함 error 발생>환경변수 영구추가
REM set PATH_THAT_I_WANT_TO_ADD=C:\Users\WIN10PROPC3\AppData\Local\Programs\Python\Python311\Scripts
REM setx path "%path%;%PATH_THAT_I_WANT_TO_ADD%;"
REM echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>project_py 이동
REM cd C:\Users\WIN10PROPC3
REM mkdir prjs
REM cd C:\Users\WIN10PROPC3\prjs
REM echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>project_TTS_STT 이동
REM mkdir project_TTS_STT
REM cd project_TTS_STT
REM echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>pyVirtualEnvironment1 활성화
REM python -m venv pyVirtualEnvironment1
REM .\pyVirtualEnvironment1\Scripts\activate
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>library 설치
pip install gTTS
pip install playsound
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>python 실행
py
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>jung hoon park library for TTS 
def startRecordCommand(file_address):
    import sys
    from datetime import datetime 
    # sys.stdout = open('py cmd recording.txt', 'a', encoding='utf-8')  #>>
    # sys.stdout = open('py cmd recording.txt', 'w', encoding='utf-8')    #>
    # sys.stdout = open('py cmd recording.txt', 'r', encoding='utf-8')  #explorer "py cmd recording.txt"
    sys.stdout = open(file_address, 'w', encoding='utf-8')    #>

def endRecordCommand():
    import sys
    sys.stdout.close()

def speakViagTTS(text):
    from gtts import gTTS
    import os
    text=text
    lang='ko'
    gTTS_Mgr = gTTS(text=text, lang=lang )
    file_name = text+'.mp3'
    gTTS_Mgr.save(file_name)
    os.startfile(file_name) 

#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>gTTS style2 s")
import time
now = time
yyyyMMddHHmmss=now.strftime('%Y %m %d %H %M %S')
startRecordCommand('tmp' + yyyyMMddHHmmss + '.txt')
print(yyyyMMddHHmmss)
print("이것은 TTS 기능의 초석이 될 테스트 샘플입니다.")
print("이것은 파이썬 베이스로 구글의 gTTS 를 활용한 TTS 입니다.")
print("구글의 AI 음성인식 기술을 활용한 TTS 기능 연습입니다.")
print("한국인여성목소리는 설정할 수 없다고 합니다.")
endRecordCommand()

from gtts import gTTS
import os
file_name='tmp' + yyyyMMddHHmmss
with open(file_name + '.txt','r',encoding='utf-8') as f:
    text = f.read()

lang='ko'
gTTS_Mgr = gTTS(text=text, lang=lang )
file_name = file_name + '.mp3'
gTTS_Mgr.save(file_name)
os.startfile(file_name) 
#>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>gTTS style2 e")
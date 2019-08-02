[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
while($true){

if ((Get-Random -Maximum 10000) -lt 1875) {
   Add-Type -AssemblyName System.Speech
   $speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
   $CatFact = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://catfact.ninja/fact')).fact
   $speak.Speak("did you know?")
   $speak.Speak($CatFact)
}
}

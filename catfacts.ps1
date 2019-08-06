[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Add-Type -AssemblyName System.Speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
$CatFact = (ConvertFrom-Json (Invoke-WebRequest -Uri 'https://catfact.ninja/fact')).fact
$speak.Speak("did you know?")
$speak.Speak($CatFact)

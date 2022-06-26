@echo off
SET args=%*
powershell Set-ExecutionPolicy Unrestricted -Force
powershell "%~dp0wget.ps1" %args:--no-check-certificate=-NoCheckCertificate%
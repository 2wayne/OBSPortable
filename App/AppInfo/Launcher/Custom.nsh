${SegmentFile}

${SegmentInit}
	ReadRegStr $0 HKLM "Software\Microsoft\Windows NT\CurrentVersion" "CurrentBuild"
	
	${If} $0 < 10000
		;Windows 7/8/8.1
		StrCpy $Bits 32
	${EndIf}

	${If} $Bits == 64
			${SetEnvironmentVariablesPath} FullAppDir $EXEDIR\App\obs-studio\bin\64bit
			${SetEnvironmentVariablesPath} CustomBaseAppDir $EXEDIR\App\obs-studio
	${Else}
			${SetEnvironmentVariablesPath} FullAppDir $EXEDIR\App\obs-studio32\bin\32bit
			${SetEnvironmentVariablesPath} CustomBaseAppDir $EXEDIR\App\obs-studio32
	${EndIf}
!macroend
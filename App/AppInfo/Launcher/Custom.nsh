${SegmentFile}

${SegmentInit}
	${If} $Bits == 64
			${SetEnvironmentVariablesPath} FullAppDir $EXEDIR\App\obs-studio\bin\64bit
	${Else}
			${SetEnvironmentVariablesPath} FullAppDir $EXEDIR\App\obs-studio\bin\32bit
	${EndIf}
!macroend
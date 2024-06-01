syn match modelfileIdentifier "^\cFROM"
syn match modelfileIdentifier "^\cPARAMETER"
syn match modelfileIdentifier "^\cTEMPLATE"
syn match modelfileIdentifier "^\cSYSTEM"
syn match modelfileIdentifier "^\cADAPTER"
syn match modelfileIdentifier "^\cLICENSE"
syn match modelfileIdentifier "^\cMESSAGE"

syn region modelfileFromRegion start="FROM" end="$" contains=modelfileIdentifier

syn region modelfileParamaterRegion start="PARAMETER" end="$" contains=modelfileParameterInt, modelfileParameterFloat, modelfileParameterString, modelfileIdentifier,modelfileInteger

" TODO: match PARAMETER <paramater> <paramatervalue> only
syn keyword modelfileParameterInt mirostat num_gpu num_ctx repeat_last_n num_keep seed num_predict top_k 
syn keyword modelfileParameterFloat repeat_penalty mirostat_tau mirostat_eta temperature tfs_z top_p 
syn keyword modelfileParameterString stop

syn region modelfileComment start="#" end="\n"

syn region modelfileString start=+"+ end=+"+
syn region modelfileString start=+"""+ skip=+\\"+ end=+"""+

syn match modelfileInteger " \<\d\+\>"
syn match modelfileFloat "\<[0-9][0-9_]*\%(\.[0-9][0-9_]*\)" display

syn region modelfileTemplateVariable containedin=modelfileString start="{{ " end=" }}"

hi link modelfileIdentifier Identifier
hi link modelfileComment Comment
hi link modelfileString String
hi link modelfileTemplateVariable PreProc
hi link modelfileParameterInt Type
hi link modelfileParameterFloat Type
hi link modelfileParameterString Type
hi link modelfileInteger Number
hi link modelfileFloat Float
hi link modelfileFromRegion Constant

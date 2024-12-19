mov ecx, [some_valid_address] ;Get a valid address first
mov eax, [ecx + 0x10] ; Access memory relative to the valid address

;Check for valid address before accessing
mov eax, [ebx + ecx*4 + 0x10]
cmp eax, 0x100000 ;Example, replace with your upper memory limit
jg memory_access_error ;Jump to error handling if address is too large
jle memory_access_ok ;Jump to memory access if address is valid

memory_access_error:
;Handle the error appropriately

memory_access_ok:
;Proceed with memory access
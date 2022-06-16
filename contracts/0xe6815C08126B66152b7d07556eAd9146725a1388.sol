contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getToken(uint8 arg1) {
    idx = 0
    while uint8(idx) < arg1:
        mem[96 len 554] = code.data[273 len 554]
        mem[650] = 0xefd6f39f2bfcca783c9b3b925cb8a2b408a26fef
        mem[682] = msg.sender
        mem[714] = 0x853f93ede7f5414b28b8b9c0dec55b501c913f0f
        create contract with 0 wei
                        code: code.data[273 len 554], 0xefd6f39f2bfcca783c9b3b925cb8a2b408a26fef, msg.sender, 0x853f93ede7f5414b28b8b9c0dec55b501c913f0f
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


address stor0;

function destroy() {
    require stor0 != msg.sender
    selfdestruct(0x808284ad89f21c512f9a5d43ad24aaf79780849a)
}

function _fallback() payable {
    idx = 0
    while idx < 40:
        mem[96 len 382] = code.data[225 len 382]
        create contract with 0 wei
                        code: code.data[225 len 382]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

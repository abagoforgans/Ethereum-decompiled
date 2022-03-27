contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 5748]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert 
}

function sub_c0ebbdf1(?) {
    create contract with 0 wei
                    code: code.data[466 len 5282], arg1, Array(len=address(arg4), data=arg2.length, call.data[arg2 + 36 len 32 * arg2.length], arg3.length, call.data[arg3 + 36 len 32 * arg3.length]), (32 * arg2.length) + 160
    require create.new_address
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x4fb2e45d with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    return address(create.new_address)
}



}

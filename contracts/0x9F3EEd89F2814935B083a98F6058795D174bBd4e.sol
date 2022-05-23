contract main {




// =====================  Runtime code  =====================


function byebye() {
    selfdestruct(0x6acbded8c0f48c88d72f2bcda42618fee4b)
}

function _fallback() payable {
    revert
}

function sub_016ef8a7(?) payable {
    require ext_code.size(0xd60d353610d9a5ca478769d371b53cefaa7b6e4c)
    call 0xd60d353610d9a5ca478769d371b53cefaa7b6e4c.registerNameXnameFromDapp(address arg1, bytes32 arg2, bytes32 arg3, bool arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 0, 'dontmissout2', 'nofomohd', 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
}



}

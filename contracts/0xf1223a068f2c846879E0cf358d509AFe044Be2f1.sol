contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = code.data[1131 len 20]
    return code.data[124 len 995]
}



// =====================  Runtime code  =====================


address stor0;
mapping of address senderToProxy;

function senderToProxy(address arg1) {
    return senderToProxy[arg1]
}

function _fallback() payable {
    revert
}

function sub_4418f30f(?) {
    require ext_code.size(stor0)
    call stor0.0x46941e53 with:
         gas gas_remaining - 50 wei
        args address(arg1), address(arg1), arg3, arg2
    require ext_call.success
    emit 0xa6ceeed0: address(arg1), arg1, arg1
    senderToProxy[address(msg.sender)] = arg1
}



}

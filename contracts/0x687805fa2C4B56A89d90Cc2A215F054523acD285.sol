contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1024 len 20]
    stor2 = 50000
    return code.data[110 len 902]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;

function sub_6fce483c(?) {
    require stor0 == msg.sender
    require arg1 > 28999
    stor2 = arg1
}

function changeOwner(address arg1) {
    require stor0 == msg.sender
    require arg1
    stor0 = arg1
    emit OwnerChanged(arg1);
    return 1
}

function changeProxyAddress(address arg1) {
    require stor0 == msg.sender
    require arg1
    stor1 = arg1
    emit 0x13242483: arg1
    return 1
}

function _fallback() payable {
    if msg.value > 0:
        if uint32(ext_code.size(stor1)) <= 0:
            call stor1 with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
        else:
            call stor1 with:
               value msg.value wei
                 gas stor2 wei
        if not ext_call.success:
            emit 0xf0ebb512: msg.sender, msg.value, stor1
        else:
            emit 0x45f2f25e: msg.sender, msg.value, stor1
}



}

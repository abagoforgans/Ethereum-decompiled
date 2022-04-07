contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = 10^17
    return code.data[69 len 1486]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct stor1;
mapping of uint256 pendingReturns;
uint256 stor3;

function pendingReturns(address arg1) {
    return pendingReturns[arg1]
}

function _fallback() payable {
    pendingReturns[stor0] += msg.value
}

function setBasePrice(uint256 arg1) {
    require stor0 == msg.sender
    stor3 = arg1
}

function sub_c7c2d979(?) {
    require stor1[arg1].field_0 == msg.sender
    require arg1 < 10240
    stor1[arg1].field_160 = Mask(96, 0, arg2)
    stor1[arg1].field_256 = arg3
    emit 0xffcc0457: arg1, arg2, arg3, msg.sender
}

function sub_b60d51c6(?) {
    if stor1[arg1].field_0 != msg.sender:
        require stor0 == msg.sender
        require not stor1[arg1].field_512
    require arg1 < 10240
    emit 0x7eae4b8f: arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8
}

function withdraw() {
    if pendingReturns[address(msg.sender)] <= 0:
        return 1
    pendingReturns[address(msg.sender)] = 0
    call msg.sender with:
       value pendingReturns[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function sub_5eb70977(?) payable {
    require arg1 < 10240
    if not stor1[arg1].field_512:
        require msg.value >= stor3
        stor1[arg1].field_512 = 1
        stor1[arg1].field_0 = msg.sender
        stor1[arg1].field_160 = 0
        pendingReturns[stor0] += msg.value
    else:
        require stor1[arg1].field_160
        require stor1[arg1].field_256 <= msg.value
        stor1[arg1].field_160 = 0
        pendingReturns[stor1[arg1].field_0] += msg.value
        stor1[arg1].field_0 = msg.sender
    emit 0xffcc0457: arg1, 0, 0, msg.sender
}



}

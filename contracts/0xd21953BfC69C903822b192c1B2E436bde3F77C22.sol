contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 10^15
    return code.data[71 len 1411]
}



// =====================  Runtime code  =====================


address sub_433e2be4Address;
mapping of uint256 sub_7f11b12e;
uint256 stor2;

function sub_433e2be4(?) {
    return sub_433e2be4Address
}

function sub_7f11b12e(?) {
    emit 0xcf39cb84: address(arg1), sub_7f11b12e[address(arg1)]
    return sub_7f11b12e[address(arg1)]
}

function sub_87533cfd(?) {
    return sub_7f11b12e[arg1]
}

function destroy() {
    if sub_433e2be4Address != msg.sender:
    selfdestruct(sub_433e2be4Address)
}

function _fallback() payable {
    revert
}

function sub_fdbee0a8(?) payable {
    if sub_433e2be4Address != msg.sender:
        return 0
    emit 0xac2a401a: msg.value
    return 1
}

function sub_529c1b3d(?) payable {
    if msg.value < stor2:
        return 0
    require stor2
    sub_7f11b12e[address(msg.sender)] = msg.value / stor2
    emit 0x2bbc4f9e: msg.sender, msg.value / stor2
    return 1
}

function sub_508258ca(?) {
    if sub_433e2be4Address != msg.sender:
        return 0
    if eth.balance(this.address) < arg1:
        return 0
    call sub_433e2be4Address with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x552592ac: arg1
    return 1
}

function sub_7ed15ab5(?) {
    if sub_433e2be4Address != msg.sender:
        return 0
    if sub_7f11b12e[address(arg1)] >= arg2:
        if arg2 <= 0:
            return 0
        if eth.balance(this.address) < arg2 * stor2:
            return 0
        call arg1 with:
           value arg2 * stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_7f11b12e[address(arg1)] -= arg2
        emit 0xaec18ada: address(arg1), arg2
    else:
        if sub_7f11b12e[address(arg1)] <= 0:
            return 0
        if eth.balance(this.address) < sub_7f11b12e[address(arg1)] * stor2:
            return 0
        call arg1 with:
           value sub_7f11b12e[address(arg1)] * stor2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        sub_7f11b12e[address(arg1)] = 0
        emit 0xaec18ada: address(arg1), sub_7f11b12e[address(arg1)]
    return 1
}



}

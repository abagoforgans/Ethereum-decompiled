contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 1202]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function available(bytes32 arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(msg.sender, msg.value);
}

function sub_e8ffb32f(?) {
    require stor0 == msg.sender
    if stor1[arg1]:
        return 0
    stor1[arg1] = 1
    emit 0x19d544d2: arg1
    return 1
}

function sub_1bc57b90(?) {
    require stor0 == msg.sender
    emit 0xf7e63a19: arg1
    if not stor1[arg1]:
        return 0
    stor1[arg1] = 0
    return 1
}

function sub_d5995c4a(?) {
    require stor0 == msg.sender
    require stor1[arg4]
    require arg2
    require arg3 > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function withdraw(address arg1, uint256 arg2, bytes32 arg3) {
    require stor0 == msg.sender
    require stor1[arg3]
    require arg1
    require arg2 > 0
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(address(arg1), arg2);
}



}

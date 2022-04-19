contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;

function _fallback() {
    require code.data[1719 len 20]
    require code.data[1751 len 20]
    require code.data[1643 len 32] > 0
    require code.data[1675 len 32] > 0
    stor0 = msg.sender
    stor1 = code.data[1643 len 32]
    stor3 = code.data[1719 len 20]
    stor4 = code.data[1751 len 20]
    stor2 = code.data[1675 len 32]
    return code.data[215 len 1428]
}



// =====================  Runtime code  =====================


const VERSION = '0.0.1'


address owner;
uint256 sub_b79c594c;
uint256 sub_2692b8d5;
address sub_ae5fa5fbAddress;
address sub_8a119af9Address;

function sub_2692b8d5(?) {
    return sub_2692b8d5
}

function sub_8a119af9(?) {
    return sub_8a119af9Address
}

function owner() {
    return owner
}

function sub_ae5fa5fb(?) {
    return sub_ae5fa5fbAddress
}

function sub_b79c594c(?) {
    return sub_b79c594c
}

function _fallback() payable {
    revert
}

function sub_474a59f2(?) {
    require owner == msg.sender
    sub_2692b8d5 = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setMinBalance(uint256 arg1) {
    require owner == msg.sender
    sub_b79c594c = arg1
}

function sub_2f04fa25(?) {
    if eth.balance(arg1) >= sub_b79c594c:
        return 0
    require eth.balance(arg1) <= sub_b79c594c
    return (sub_b79c594c - eth.balance(arg1))
}

function sub_078bc758(?) {
    if eth.balance(arg1) >= sub_b79c594c:
        if sub_2692b8d5:
            return (0 / sub_2692b8d5)
    else:
        if eth.balance(arg1) <= sub_b79c594c:
            if sub_2692b8d5:
                return (sub_b79c594c - eth.balance(arg1) / sub_2692b8d5)
    revert
}

function sub_3e10bddd(?) {
    require eth.balance(arg1) < sub_b79c594c
    require eth.balance(arg1) <= sub_b79c594c
    if eth.balance(arg1) >= sub_b79c594c:
        require sub_2692b8d5
        require ext_code.size(sub_ae5fa5fbAddress)
        call sub_ae5fa5fbAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(arg1), sub_8a119af9Address, 0 / sub_2692b8d5
        require ext_call.success
        require ext_call.return_data[0]
        call address(arg1) with:
           value sub_b79c594c - eth.balance(arg1) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x6a9b8952: sub_b79c594c - eth.balance(arg1), 0 / sub_2692b8d5, address(arg1)
    else:
        require eth.balance(arg1) <= sub_b79c594c
        require sub_2692b8d5
        require ext_code.size(sub_ae5fa5fbAddress)
        call sub_ae5fa5fbAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args address(arg1), sub_8a119af9Address, sub_b79c594c - eth.balance(arg1) / sub_2692b8d5
        require ext_call.success
        require ext_call.return_data[0]
        call address(arg1) with:
           value sub_b79c594c - eth.balance(arg1) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x6a9b8952: sub_b79c594c - eth.balance(arg1), sub_b79c594c - eth.balance(arg1) / sub_2692b8d5, address(arg1)
}



}

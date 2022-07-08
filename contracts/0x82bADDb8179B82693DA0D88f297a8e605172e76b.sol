contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address eRC20TokenAddress;
uint256 sub_826aeec1;

function ERC20Token() {
    return eRC20TokenAddress
}

function sub_826aeec1(?) {
    return sub_826aeec1
}

function owner() {
    return owner
}

function sub_e56a7c5d(?) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setAmount(uint256 arg1) {
    require msg.sender == owner
    sub_826aeec1 = arg1
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit LogOwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a8e1fba3(?) {
    require msg.sender == owner
    require arg1
    stor1[address(arg1)] = uint8(arg2)
    emit 0x9b3b880c: arg2, arg1
    return 1
}

function tokenAmount() {
    require ext_code.size(eRC20TokenAddress)
    call eRC20TokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_d677d677(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require bool(stor1[msg.sender]) == 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = sub_826aeec1
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], sub_826aeec1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function mulTransfer(uint256 arg1, address[] arg2) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(stor1[msg.sender]) == 1
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg1
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], arg1
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function mulPay(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require bool(stor1[msg.sender]) == 1
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _22 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _22
        require ext_code.size(eRC20TokenAddress)
        call eRC20TokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _22
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}



}

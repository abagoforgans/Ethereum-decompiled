contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address newOwner;

function stopped() {
    return bool(uint8(stor1.field_160))
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
}

function start() {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function withdrawTo(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg1 != this.address
    require arg2 <= eth.balance(this.address)
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawERC20TokenTo(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function batchTransfer(address arg1, address[] arg2, uint256 arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require not uint8(stor1.field_160)
    require arg1
    require arg2.length > 0
    require arg3 > 0
    mem[(32 * arg2.length) + 132] = this.address
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length * arg3 <= ext_call.return_data[0]
    require arg2.length < 10000
    idx = 0
    while uint16(idx) < arg2.length:
        require uint16(idx) < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * uint16(idx)) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg3
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + 132], arg3
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}

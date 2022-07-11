contract main {




// =====================  Runtime code  =====================


uint256 decimals;
address owner;
mapping of uint8 stor2;
address sub_2a30bad5Address;
address sub_4e56d88fAddress;

function sub_2a30bad5(?) {
    return sub_2a30bad5Address
}

function decimals() {
    return decimals
}

function sub_4e56d88f(?) {
    return sub_4e56d88fAddress
}

function accessAllowed(address arg1) {
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function addAccess(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
}

function denyAccess(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
}

function tokenTransfer(address arg1, uint256 arg2) {
    require 1 == bool(stor2[msg.sender])
    require arg1
    require arg2 > 0
    require ext_code.size(sub_2a30bad5Address)
    call sub_2a30bad5Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(sub_4e56d88fAddress)
    call sub_4e56d88fAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require 1 == bool(stor2[msg.sender])
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = this.address
    require ext_code.size(sub_2a30bad5Address)
    call sub_2a30bad5Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _46 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _48 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[0] = msg.sender
        mem[32] = 2
        require 1 == bool(stor2[msg.sender])
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require ext_code.size(sub_2a30bad5Address)
        call sub_2a30bad5Address.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = address(_46)
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _48
        require ext_code.size(sub_4e56d88fAddress)
        call sub_4e56d88fAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(_46), _48
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}

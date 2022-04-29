contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1[stor0] = 1
    stor2 = code.data[3111 len 20]
    return code.data[308 len 2791]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address stor2;

function owner() {
    return owner
}

function managers(address arg1) {
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setManager(address arg1, bool arg2) {
    require msg.sender == owner
    stor1[address(arg1)] = uint8(arg2)
    emit ManagerSet(address(arg1), arg2);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    owner = arg1
    stor1[address(arg1)] = 1
    stor1[address(msg.sender)] = 0
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require stor1[address(msg.sender)]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_3562e080(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + 164] = arg1
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg2.length) + 132], arg1
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}

function transfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _17 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _17
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _17
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}

contract main {




// =====================  Runtime code  =====================


address stor1;
address stor2;
address stor3;
mapping of uint8 stor4;

function isManager(address arg1) {
    return bool(stor4[address(arg1)])
}

function _fallback() payable {
    revert
}

function addManager(address arg1) {
    if stor3 != msg.sender:
        require msg.sender == stor2
    stor4[address(arg1)] = 1
}

function sub_a7a2173f(?) {
    if stor3 != msg.sender:
        require msg.sender == stor2
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require stor4[msg.sender]
    require arg1.length == arg2.length
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _22 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _22
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
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

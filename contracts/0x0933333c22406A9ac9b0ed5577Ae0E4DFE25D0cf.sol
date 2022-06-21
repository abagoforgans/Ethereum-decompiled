contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddr;
uint256 decimals;
uint256 day;
uint256 firstTime;
mapping of uint8 stor5;
array of struct stor6;

function decimals() {
    return decimals
}

function firstTime() {
    return firstTime
}

function tokenAddr() {
    return tokenAddr
}

function sub_6f62c3a6(?) {
    return bool(stor5[arg1])
}

function day() {
    return day
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require msg.sender == owner
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}

function sub_690756f7(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddr)
    call tokenAddr.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddr)
    call tokenAddr.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddr)
    call tokenAddr.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function distribute() payable {
    mem[64] = 96
    require not msg.value
    require block.timestamp > firstTime
    require day
    require not stor5[block.timestamp - stor4 / stor3]
    stor5[block.timestamp - stor4 / stor3] = 1
    idx = 0
    while idx < stor6.length:
        require ext_code.size(tokenAddr)
        call tokenAddr.0xa9059cbb with:
             gas gas_remaining wei
            args stor6[idx].field_0, stor6[idx].field_256 * 10^decimals
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < stor6.length
        mem[0] = 6
        mem[mem[64]] = block.timestamp - firstTime / day
        mem[mem[64] + 32] = stor6[idx].field_0
        mem[mem[64] + 64] = stor6[idx].field_256 * 10^decimals
        emit 0x18811bcb: block.timestamp - firstTime / day, stor6[idx].field_0, stor6[idx].field_256 * 10^decimals
        idx = idx + 1
        continue 
}



}

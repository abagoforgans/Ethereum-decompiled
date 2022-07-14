contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address sub_a66e4e5fAddress; offset 8
uint32 stor3;
uint256 index;
address stor4;

function name() {
    return name[0 len name.length]
}

function index() {
    return uint256(index)
}

function decimals() {
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a66e4e5f(?) {
    return sub_a66e4e5fAddress
}

function _fallback() payable {
    revert
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == sub_a66e4e5fAddress
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function totalSupply() {
    require ext_code.size(stor4)
    call stor4.0x6c67b21e with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor4)
    call stor4.0x3656eec2 with:
         gas gas_remaining wei
        args uint256(index), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor4)
    call stor4.0xf20f76ba with:
         gas gas_remaining wei
        args 0, uint32(stor3), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor4)
    call stor4.0x36cd52a6 with:
         gas gas_remaining wei
        args 0, uint32(stor3), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor4)
    call stor4.allowance(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args uint256(index), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(stor4)
    call stor4.transferFrom(uint256 arg1, address arg2, address arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(stor3), msg.sender, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

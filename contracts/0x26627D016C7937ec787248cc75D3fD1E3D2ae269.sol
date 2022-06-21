contract main {




// =====================  Runtime code  =====================


const gracePeriod = (24 * 3600)


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenContractAddress;
mapping of bool sub_331c7de3;
mapping of uint256 sub_c79ce19a;

function sub_331c7de3(?) {
    return uint256(sub_331c7de3[arg1][0 len sub_331c7de3[arg1].length])
}

function tokenContract() {
    return tokenContractAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function sub_c79ce19a(?) {
    return sub_c79ce19a[arg1]
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reject() {
    require not uint8(stor0.field_160)
    require sub_331c7de3[address(msg.sender)].length > 0
    require sub_c79ce19a[address(msg.sender)] + (24 * 3600) > block.timestamp
    uint256(sub_331c7de3[address(msg.sender)]) = 0
    if 31 < sub_331c7de3[address(msg.sender)].length:
        idx = 0
        while sub_331c7de3[address(msg.sender)].length + 31 / 32 > idx:
            uint256(sub_331c7de3[address(msg.sender)][idx]) = 0
            idx = idx + 1
            continue 
    sub_c79ce19a[address(msg.sender)] = 0
    emit Reject(msg.sender);
}

function register(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require not uint8(stor0.field_160)
    mem[ceil32(arg1.length) + 132] = msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require arg1.length == 53
    require 0 < arg1.length
    require Mask(8, 248, mem[128]) == 'E'
    require 1 < arg1.length
    require Mask(8, 248, mem[129]) == 'O'
    require 2 < arg1.length
    require Mask(8, 248, mem[130]) == 'S'
    require not Mask(255, 1, (256 * not bool(sub_331c7de3[address(msg.sender)])) - 1 and uint256(sub_331c7de3[address(msg.sender)]))
    uint256(sub_331c7de3[address(msg.sender)][]) = Array(len=arg1.length, data=arg1[all])
    sub_c79ce19a[address(msg.sender)] = block.timestamp
    emit Register(msg.sender);
}



}

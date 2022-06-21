contract main {




// =====================  Runtime code  =====================


const gracePeriod = (24 * 3600)


uint8 stor0; offset 160
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
    return bool(stor0)
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

function unpause() {
    require msg.sender == owner
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not stor0
    stor0 = 1
    emit Pause()
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reject() {
    require not stor0
    require sub_331c7de3[msg.sender].length > 0
    require sub_c79ce19a[msg.sender] + (24 * 3600) > block.timestamp
    uint256(sub_331c7de3[msg.sender]) = 0
    if 31 < sub_331c7de3[msg.sender].length:
        idx = 0
        while sub_331c7de3[msg.sender].length + 31 / 32 > idx:
            uint256(sub_331c7de3[msg.sender][idx]) = 0
            idx = idx + 1
            continue 
    sub_c79ce19a[msg.sender] = 0
    emit Reject(msg.sender);
}

function register(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require not stor0
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
    require 53 == arg1.length
    require 0 < arg1.length
    require 'E' == Mask(8, 248, mem[128])
    require 1 < arg1.length
    require 'O' == Mask(8, 248, mem[129])
    require 2 < arg1.length
    require 'S' == Mask(8, 248, mem[130])
    require not Mask(255, 1, (256 * not bool(sub_331c7de3[msg.sender])) - 1 and uint256(sub_331c7de3[msg.sender]))
    uint256(sub_331c7de3[msg.sender][]) = Array(len=arg1.length, data=arg1[all])
    sub_c79ce19a[msg.sender] = block.timestamp
    emit Register(msg.sender);
}



}

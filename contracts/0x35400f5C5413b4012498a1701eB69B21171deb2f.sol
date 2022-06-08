contract main {




// =====================  Runtime code  =====================


const DECIMALS = 18


address owner;
address newOwner;
address allocatorAddress;
address crowdsaleAddress;
uint256 totalSupply;
uint8 stor5;
uint8 stor5; offset 8
mapping of uint8 stor6;
mapping of uint256 claimedBalances;

function totalSupply() {
    return totalSupply
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function allocator() {
    return allocatorAddress
}

function sub_b29c5d8c(?) {
    return bool(uint8(stor5.field_8))
}

function claimed(address arg1) {
    return bool(stor6[arg1])
}

function sub_cae46837(?) {
    return bool(uint8(stor5.field_0))
}

function claimedBalances(address arg1) {
    return claimedBalances[arg1]
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function setCrowdsale(address arg1) {
    require msg.sender == owner
    require arg1
    crowdsaleAddress = arg1
}

function setAllocator(address arg1) {
    require msg.sender == owner
    if arg1:
        allocatorAddress = arg1
}

function verify(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function multivestMint(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x1d8557d7 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0xc24a0f8b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require block.timestamp > ext_call.return_data[0]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(arg1, arg2)), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x736c0d5b with:
         gas gas_remaining wei
        args address(signer)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 == bool(ext_call.return_data[0])
    if 1 == bool(uint8(stor5.field_8)):
        require not stor6[address(arg1)]
        stor6[address(arg1)] = 1
    require msg.sender == arg1
    require arg2 > 0
    if bool(uint8(stor5.field_0)) != 1:
        require arg2 <= totalSupply
    require arg2 + claimedBalances[address(arg1)] >= claimedBalances[address(arg1)]
    claimedBalances[address(arg1)] += arg2
    if not uint8(stor5.field_0):
        require arg2 <= totalSupply
        totalSupply -= arg2
    require ext_code.size(allocatorAddress)
    call allocatorAddress.0xb78b52df with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

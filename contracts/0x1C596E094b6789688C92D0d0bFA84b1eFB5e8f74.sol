contract main {




// =====================  Runtime code  =====================


#
#  - sub_2cd2e930(?)
#  - sub_3ef32986(?)
#  - sub_90b616c8(?)
#  - sub_c7e7f6f6(?)
#  - sub_c899a86b(?)
#
address owner;
mapping of uint8 stor1;
mapping of uint256 nonces;
mapping of uint8 stor3;
uint256 numValidators;
uint256 nonce;
mapping of uint8 sub_a928584b;

function numValidators() {
    return numValidators
}

function nonces(address arg1) {
    return nonces[arg1]
}

function owner() {
    return owner
}

function sub_9594058a(?) {
    return bool(uint8(sub_a928584b[address(arg1)][2][address(arg3)][arg2]))
}

function sub_a928584b(?) {
    return uint256(sub_a928584b[address(arg1)])
}

function nonce() {
    return nonce
}

function sub_b3e51f87(?) {
    return uint256(sub_a928584b[address(arg1)][1][address(arg2)])
}

function allowedTokens(address arg1) {
    return bool(uint8(stor1[arg1]))
}

function sub_797327ae(?) {
    if owner != arg1:
        return bool(stor3[address(arg1)])
    return 1
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

function _fallback() payable {
    require msg.value + uint256(sub_a928584b[msg.sender]) >= uint256(sub_a928584b[msg.sender])
    uint256(sub_a928584b[msg.sender]) += msg.value
    emit ETHReceived(msg.sender, msg.value);
}

function toggleToken(address arg1) {
    if owner != msg.sender:
        require stor3[address(msg.sender)]
    uint256(stor1[address(arg1)]) = not uint8(stor1[address(arg1)]) or Mask(248, 8, uint256(stor1[address(arg1)]))
}

function onERC721Received(address arg1, uint256 arg2, bytes arg3) {
    if not uint8(stor1[msg.sender]):
        revert with 0, 'Not a valid token'
    uint8(sub_a928584b[address(arg1)][2][msg.sender][arg2]) = 1
    emit 0x53f9fb1a: address(arg1), arg2, msg.sender
    return 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function onERC20Received(address arg1, uint256 arg2) {
    if not uint8(stor1[msg.sender]):
        revert with 0, 'Not a valid token'
    require arg2 + uint256(sub_a928584b[address(arg1)][1][msg.sender]) >= uint256(sub_a928584b[address(arg1)][1][msg.sender])
    uint256(sub_a928584b[address(arg1)][1][msg.sender]) += arg2
    emit 0xa13cf347: address(arg1), arg2, msg.sender
    return 0xbc04f0af00000000000000000000000000000000000000000000000000000000
}

function depositERC20(uint256 arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 + uint256(sub_a928584b[msg.sender][1][address(arg2)]) >= uint256(sub_a928584b[msg.sender][1][address(arg2)])
    uint256(sub_a928584b[msg.sender][1][address(arg2)]) += arg1
    emit 0xa13cf347: msg.sender, arg1, arg2
}



}

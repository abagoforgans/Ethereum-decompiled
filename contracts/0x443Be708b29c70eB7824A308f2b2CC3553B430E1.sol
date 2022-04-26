contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2; offset 160
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor2 = 4
    stor3 = 10^stor2
    stor4 = 10 * stor3
    stor0 = msg.sender
    return code.data[145 len 2032]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address ownerAddress;
uint256 stor3;
uint256 AIRDROP_AMOUNT;

function AIRDROP_AMOUNT() {
    return AIRDROP_AMOUNT
}

function owner() {
    return owner
}

function ownerAddress() {
    return ownerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function resetAirdropAmount() {
    require msg.sender == owner
    AIRDROP_AMOUNT = 10 * stor3
}

function setAirdropAmount(uint256 arg1) {
    require msg.sender == owner
    if arg1 > 0:
        AIRDROP_AMOUNT = arg1 * stor3
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function multisend(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    ownerAddress = 0x3efae2e152f62f5cc12cc0794b816d22d416a721
    tokenAddress = 0x80e7a4d750ade616da896c49049b7ede9e04c191
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = ownerAddress
        mem[(32 * arg1.length) + 164] = address(_16)
        mem[(32 * arg1.length) + 196] = AIRDROP_AMOUNT
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args ownerAddress, address(_16), AIRDROP_AMOUNT
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    return arg1.length
}



}

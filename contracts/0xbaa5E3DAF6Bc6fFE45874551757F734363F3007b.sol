contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor2 = 2 * 10^11
    stor3 = 0x24cc07362acc08fd97cb39f158cf372d44650c99
    require not msg.value
    stor0 = msg.sender
    stor1 = stor3
    return code.data[287 len 1253]
}



// =====================  Runtime code  =====================


address stor0;
address tokenRewardAddress;
uint256 sendCount;
address myTokenAddress;

function tokenReward() {
    return tokenRewardAddress
}

function sendCount() {
    return sendCount
}

function myToken() {
    return myTokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    require arg1
    stor0 = arg1
}

function multisend(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _9 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = 0xf93ef1412bcfb78189227851b0c9bab9e92943c2
        mem[(32 * arg1.length) + 164] = address(_9)
        mem[(32 * arg1.length) + 196] = sendCount
        require ext_code.size(tokenRewardAddress)
        call tokenRewardAddress.0x23b872dd with:
             gas gas_remaining - 710 wei
            args 0xf93ef1412bcfb78189227851b0c9bab9e92943c2, address(_9), sendCount
        require ext_call.success
        idx = idx + 1
        continue 
}



}

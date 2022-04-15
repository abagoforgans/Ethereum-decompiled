contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0xa5f80ffd6496ddd9ab390c74adb34aee66f08f56
    stor4 = 10^10
    stor2 = 418216 * 3600
    stor3 = 44
    stor5 = 0xc2eaf62d3db7c960d8bb5d2d6a800dd817c8e596
    return code.data[300 len 1617]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address tokenRewardAddress;

function tokenReward() {
    return tokenRewardAddress
}

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function getBack(uint256 arg1) {
    require msg.sender == owner
    require block.timestamp > stor2
    require block.timestamp > stor2 + (24 * 3600 * stor3)
    require arg1 > 0
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
}

function _fallback() payable {
    require block.timestamp > stor2
    require block.timestamp < stor2 + (24 * 3600 * stor3)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor4:
        require stor4
        require stor4 * msg.value / stor4 == msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor4 * msg.value / 10^18
    require ext_call.success
}

function createTokens() payable {
    require block.timestamp > stor2
    require block.timestamp < stor2 + (24 * 3600 * stor3)
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    if stor4:
        require stor4
        require stor4 * msg.value / stor4 == msg.value
    require ext_code.size(tokenRewardAddress)
    call tokenRewardAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, stor4 * msg.value / 10^18
    require ext_call.success
}



}

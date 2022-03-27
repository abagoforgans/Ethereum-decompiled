contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
bool stor5; offset 256
uint8 stor5; offset 160
address stor5;
uint256 stor8;

function _fallback() {
    uint8(stor0.length) = 6
    Mask(248, 0, stor0.length.field_8) = 'RES' / 256
    idx = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    uint8(stor1.length) = 6
    Mask(248, 0, stor1.length.field_8) = 'RES' / 256
    if (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6:
        uint256(stor1.field_0) = 0
        idx = 0xb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf7
        while (stor1.length + 31 / 32) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor2 = 18
    stor8 = 20
    address(stor5.field_0) = 0x948176cb42b65d835ee4324914b104b66fb93b52
    uint8(stor5.field_160) = 1
    stor5.field_256 % 1 = 0
    return code.data[588 len 4453]
}



// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
uint8 campaignOpen; offset 160
uint64 stor5;
address johanNygrenAddress;
array of struct dividendPathways;
mapping of uint256 totalBasicIncome;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function dividendPathways(address arg1, uint256 arg2) {
    require arg2 < dividendPathways[arg1].field_0
    return dividendPathways[arg1][arg2].field_0, dividendPathways[arg1][arg2].field_256, dividendPathways[arg1][arg2].field_512
}

function decimals() {
    return decimals
}

function campaignOpen() {
    return bool(campaignOpen)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalBasicIncome(address arg1) {
    return totalBasicIncome[arg1]
}

function JohanNygren() {
    return johanNygrenAddress
}

function _fallback() payable {
    revert 
}

function closeCampaign() {
    require johanNygrenAddress == msg.sender
}

function changeJohanNygrensAddress(address arg1) {
    require johanNygrenAddress == msg.sender
    johanNygrenAddress = arg1
}

function buy() payable {
    require 1 == bool(campaignOpen)
    balanceOf[address(msg.sender)] = msg.value
    totalSupply += msg.value
    emit Bought(msg.sender, msg.value);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalSupply -= arg1
    emit Sold(msg.sender, arg1);
}

function buyViaJohan() payable {
    require 1 == bool(campaignOpen)
    balanceOf[address(msg.sender)] = msg.value
    totalSupply += msg.value
    dividendPathways[address(msg.sender)].field_0++
    if not dividendPathways[address(msg.sender)].field_0 <= dividendPathways[address(msg.sender)].field_0 + 1:
        idx = (3 * dividendPathways[address(msg.sender)].field_0) + 3
        while 3 * dividendPathways[address(msg.sender)].field_0 > idx:
            dividendPathways[address(msg.sender)][idx].field_0 = 0
            dividendPathways[address(msg.sender)][idx].field_256 = 0
            dividendPathways[address(msg.sender)][idx].field_512 = 0
            idx = idx + 3
            continue 
    dividendPathways[address(msg.sender)][dividendPathways[address(msg.sender)].field_0].field_0 = stor5
    dividendPathways[address(msg.sender)][dividendPathways[address(msg.sender)].field_0].field_64 = 0
    dividendPathways[address(msg.sender)][dividendPathways[address(msg.sender)].field_0].field_256 = msg.value
    dividendPathways[address(msg.sender)][dividendPathways[address(msg.sender)].field_0].field_512 = block.timestamp
    emit BoughtViaJohan(msg.sender, msg.value);
}



}

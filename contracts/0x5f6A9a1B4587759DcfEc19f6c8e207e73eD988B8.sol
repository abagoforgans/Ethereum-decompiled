contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor5;
uint8 stor6; offset 152
address stor6;
address stor6;
uint128 stor7; offset 160
address stor7;
uint256 stor8;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    stor2 = 417276 * 3600
    stor3 = 417996 * 3600
    stor5 = 0x26967201d4d1e1aa97554838defa4fc4d010ff6f
    Mask(152, 0, stor6.field_0) = 0x53b91e38b207c97cbff06f48a0f7ab2dd81449
    uint8(stor6.field_152) = 0
    address(stor7.field_0) = 0xf8e386eda857484f5a12e4b5daa9984e06e73705
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = address(stor7.field_0)
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args address(stor6.field_0)
    require ext_call.success
    stor8 = ext_call.return_data[0]
    Mask(96, 0, stor7.field_160) = 0
    return code.data[778 len 3997]
}



// =====================  Runtime code  =====================


const decimals = 18

const tokenExchangeRate = 1000

const minContribution = 5 * 10^16

const maxTokens = 1000000 * 10^18

const MAX_GAS_PRICE = 5 * 10^10


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address stor1;
uint256 fundingStartTime;
uint256 fundingEndTime;
uint256 totalSupply;
address ethFundDepositAddress;
address indFundDepositAddress;
uint8 isFinalized; offset 160
uint128 stor7; offset 160
address indAddress;
uint256 tokenCreationCap;

function totalSupply() {
    return totalSupply
}

function fundingStartTime() {
    return fundingStartTime
}

function indFundDeposit() {
    return indFundDepositAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function tokenCreationCap() {
    return tokenCreationCap
}

function indAddress() {
    return indAddress
}

function fundingEndTime() {
    return fundingEndTime
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
    return 1
}

function finalize() {
    require msg.sender == owner
    require not isFinalized
    stor7 = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require tokenCreationCap > totalSupply
    require block.timestamp >= fundingStartTime
    require block.timestamp <= fundingEndTime
    require msg.value >= 5 * 10^16
    require not isFinalized
    require block.gasprice <= 5 * 10^10
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    require totalSupply + (1000 * msg.value) >= totalSupply
    require totalSupply + (1000 * msg.value) >= 1000 * msg.value
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] + (1000 * msg.value) <= 1000000 * 10^18
    if tokenCreationCap >= totalSupply + (1000 * msg.value):
        totalSupply += 1000 * msg.value
        emit MintIND(indFundDepositAddress, msg.sender, 1000 * msg.value);
        require ext_code.size(stor1)
        call stor1.0x23b872dd with:
             gas gas_remaining - 710 wei
            args indFundDepositAddress, msg.sender, 1000 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        call ethFundDepositAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require tokenCreationCap >= totalSupply
    require 1000 * msg.value >= tokenCreationCap - totalSupply
    totalSupply = tokenCreationCap
    emit MintIND(indFundDepositAddress, msg.sender, tokenCreationCap - totalSupply);
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args indFundDepositAddress, msg.sender, tokenCreationCap - totalSupply
    require ext_call.success
    require ext_call.return_data[0]
    call msg.sender with:
       value (1000 * msg.value) - tokenCreationCap + totalSupply / 1000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefund(((1000 * msg.value) - tokenCreationCap + totalSupply / 1000), msg.sender);
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}

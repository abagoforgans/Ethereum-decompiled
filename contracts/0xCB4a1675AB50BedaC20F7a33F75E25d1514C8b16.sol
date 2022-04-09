contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
uint128 stor5; offset 160
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    Mask(96, 0, stor5.field_160) = 0
    stor4 = code.data[5668 len 20]
    address(stor5.field_0) = code.data[5700 len 20]
    stor6 = code.data[5720 len 32]
    stor7 = code.data[5752 len 32]
    stor0 = 375 * 10^6 * 24 * 3600
    stor1[address(stor5.field_0)] = 375 * 10^6 * 24 * 3600
    emit CreateCredo((375 * 10^6 * 24 * 3600), address(stor5.field_0));
    return code.data[723 len 4933]
}



// =====================  Runtime code  =====================


const name = 'SiriusCoin'

const decimals = 3

const credosReserveAllocation = (375 * 10^6 * 24 * 3600)

const credoEthExchangeRate = 100000

const tokenCreationCap = 15 * 10^11

const symbol = 'SRS'

const tokenCreationMin = 1355 * 10^9


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address etherProceedsAccount;
uint8 stor5; offset 160
uint128 stor5; offset 160
address credosReserveAccount;
uint256 fundingStartBlock;
uint256 fundingEndBlock;

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function credosReserveAccount() {
    return credosReserveAccount
}

function isFinalized() {
    return bool(uint8(stor5.field_160))
}

function fundingEndBlock() {
    return fundingEndBlock
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function etherProceedsAccount() {
    return etherProceedsAccount
}

function _fallback() payable {
    revert 
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require not uint8(stor5.field_160)
    require block.number > fundingEndBlock
    require totalSupply < 1355 * 10^9
    require credosReserveAccount != msg.sender
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require totalSupply >= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit LogRefund((balanceOf[address(msg.sender)] / 100000), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 100000 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require not uint8(stor5.field_160)
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require msg.value
    require 100000 * msg.value / msg.value == 100000
    require totalSupply + (100000 * msg.value) >= totalSupply
    require totalSupply + (100000 * msg.value) >= 100000 * msg.value
    require 15 * 10^11 >= totalSupply + (100000 * msg.value)
    totalSupply += 100000 * msg.value
    balanceOf[address(msg.sender)] += 100000 * msg.value
    emit CreateCredo((100000 * msg.value), msg.sender);
}

function finalize() {
    require not uint8(stor5.field_160)
    require msg.sender == etherProceedsAccount
    require totalSupply >= 1355 * 10^9
    if block.number > fundingEndBlock:
        Mask(96, 0, stor5.field_160) = 1
        call etherProceedsAccount with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if totalSupply == 15 * 10^11:
            Mask(96, 0, stor5.field_160) = 1
            call etherProceedsAccount with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
    revert 
}



}

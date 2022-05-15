contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;
uint8 stor4; offset 160
address stor4;
uint256 stor5;
uint256 stor6;

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
    address(stor4.field_0) = code.data[3037 len 20]
    uint8(stor4.field_160) = 0
    stor5 = code.data[3057 len 32]
    stor6 = code.data[3089 len 32]
    stor0 = 0
    return code.data[339 len 2686]
}



// =====================  Runtime code  =====================


const name = 'Redev ICO Token'

const decimals = 18

const sub_54786f74(?) = 70007

const tokenCreationCap = 700073400 * 10^18

const symbol = 'REDEVICO'

const tokenCreationMin = 938000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
uint8 stor4; offset 160
address etherProceedsAccount;
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

function isFinalized() {
    return bool(stor4)
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
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function finalize() {
    require not stor4
    require etherProceedsAccount == msg.sender
    require totalSupply >= 938000 * 10^18
    if block.number <= fundingEndBlock:
        require 700073400 * 10^18 == totalSupply
    stor4 = 1
    call 0 or etherProceedsAccount with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require not stor4
    require block.number > fundingEndBlock
    require totalSupply < 938000 * 10^18
    require balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = 0
    require totalSupply >= balanceOf[address(msg.sender)]
    totalSupply -= balanceOf[address(msg.sender)]
    emit LogRefund((balanceOf[address(msg.sender)] / 70007), msg.sender);
    call msg.sender with:
       value balanceOf[address(msg.sender)] / 70007 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function createTokens() payable {
    require not stor4
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    require msg.value
    require 70007 * msg.value / msg.value == 70007
    require (70007 * msg.value) + totalSupply >= totalSupply
    require (70007 * msg.value) + totalSupply >= 70007 * msg.value
    require 700073400 * 10^18 >= (70007 * msg.value) + totalSupply
    totalSupply += 70007 * msg.value
    balanceOf[address(msg.sender)] += 70007 * msg.value
    emit 0x59d0b6eb: (70007 * msg.value), msg.sender
}



}

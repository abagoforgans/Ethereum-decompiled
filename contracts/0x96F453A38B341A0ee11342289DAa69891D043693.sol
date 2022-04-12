contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
array of uint256 stor3;
mapping of uint256 stor4;
uint256 stor7624;
uint256 stor1A3D;
uint256 stor21D6;
uint256 stor2E1B;
uint256 stor3569;
uint256 stor544B;
uint256 stor5FA9;
uint256 stor61AE;
uint256 stor70B8;
uint256 stor7886;
uint256 stor79EA;
uint256 stor7AAD;
uint256 stor7CC7;
uint256 stor7E59;
uint256 stor9D05;
uint256 storB597;
uint256 storDF10;
uint256 storEC88;
uint256 storEF73;
uint256 storF39D;

function _fallback() payable {
    stor1 = 100 * 10^18
    bool(stor3.length) = 0
    stor3.length.field_1 = 0
    stor3.length.field_8 = mem[128 len 31]
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor0 = msg.sender
    stor4[address(msg.sender)] = 10^18
    storEC88 = 10^18
    stor79EA = 10^18
    stor70B8 = 10^18
    stor9D05 = 10^18
    stor544B = 10^18
    stor7AAD = 10^18
    stor2E1B = 10^18
    stor61AE = 10^18
    stor7886 = 10^18
    stor21D6 = 10^18
    stor7CC7 = 10^18
    stor1A3D = 10^18
    stor5FA9 = 10^18
    storDF10 = 10^18
    stor7E59 = 10^18
    storB597 = 10^18
    stor7624 = 10^18
    storF39D = 10^18
    storEF73 = 10^18
    stor3569 = 10^18
    stor2 = block.timestamp
    return code.data[1078 len 3022]
}



// =====================  Runtime code  =====================


const name = '1488 Coin'

const decimals = 18

const symbol = 'NAZI'

const FREEZE_PERIOD = (8760 * 24 * 3600)


address owner;
uint256 totalSupply;
uint256 crowdSaleStartTimestamp;
array of uint256 lastLoveLetter;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function lastLoveLetter() {
    return lastLoveLetter[0 len lastLoveLetter.length].field_0
}

function crowdSaleStartTimestamp() {
    return crowdSaleStartTimestamp
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require owner == msg.sender
    require not totalSupply
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyMNC(string arg1) payable {
    require block.timestamp > crowdSaleStartTimestamp
    require totalSupply >= msg.value
    balanceOf[address(msg.sender)] += msg.value
    totalSupply -= msg.value
    lastLoveLetter[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function sellMNC(uint256 arg1) {
    require block.timestamp > crowdSaleStartTimestamp + (8760 * 24 * 3600)
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require block.timestamp > crowdSaleStartTimestamp
    require totalSupply >= msg.value
    balanceOf[address(msg.sender)] += msg.value
    totalSupply -= msg.value
    bool(lastLoveLetter.length) = 0
    lastLoveLetter.length.field_1 = 25
    lastLoveLetter.length.field_8 = 'Hi! I am anonymous holder' / 256
    idx = 0
    while lastLoveLetter.length + 31 / 32 > idx:
        lastLoveLetter[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

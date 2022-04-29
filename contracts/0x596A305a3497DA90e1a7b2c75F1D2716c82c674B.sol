contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
uint8 stor2; offset 160
address stor2;
mapping of uint8 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = '1.0' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor2.field_160) = 0
    require not msg.value
    address(stor2.field_0) = msg.sender
    stor0 = 80000000 * 10^18
    stor4[code.data[2509 len 20]] = 80000000 * 10^18
    stor3[code.data[2509 len 20]] = 1
    return code.data[389 len 2108]
}



// =====================  Runtime code  =====================


const name = 'NOTES'

const decimals = 18

const symbol = 'NTS'

const nFund = 80000000 * 10^18


uint256 totalSupply;
array of uint256 version;
uint8 stor2; offset 160
address stor2;
mapping of uint8 stor3;
mapping of uint256 balances;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function activated() {
    return bool(uint8(stor2.field_160))
}

function balances(address arg1) {
    return balances[arg1]
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function activeGroup(address arg1) {
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function activate() {
    require address(stor2.field_0) == msg.sender
    uint8(stor2.field_160) = 1
}

function addToActiveGroup(address arg1) {
    require address(stor2.field_0) == msg.sender
    stor3[address(arg1)] = 1
}

function approve(address arg1, uint256 arg2) {
    if not uint8(stor2.field_160):
        require stor3[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor2.field_160):
        require stor3[address(msg.sender)]
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor2.field_160):
        require stor3[address(msg.sender)]
    if balances[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balances[address(arg2)] += arg3
    balances[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

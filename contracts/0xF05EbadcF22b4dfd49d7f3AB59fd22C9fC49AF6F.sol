contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'APX' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 8
    stor2.length.field_8 = 'APEXCOIN' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor3[address(msg.sender)] = 28000000 * 10^18
    return code.data[516 len 4332]
}



// =====================  Runtime code  =====================


const totalSupply = 28000000 * 10^18

const decimals = 18

const _totalSupply = 28000000 * 10^18


address owner;
array of uint256 symbol;
array of uint256 name;
mapping of uint256 balances;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function balances(address arg1) {
    return balances[arg1]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function rebrand(string arg1, string arg2) {
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
    name[] = Array(len=arg2.length, data=arg2[all])
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balances[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

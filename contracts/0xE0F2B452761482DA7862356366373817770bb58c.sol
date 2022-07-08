contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
address stor3;
mapping of uint256 stor4;
uint256 stor6;
uint8 stor7;
uint256 stor8;
address stor9;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = 'AIT' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'AIT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    stor6 = 0
    stor7 = 0
    stor8 = 14 * 10^15
    stor9 = 0
    require not msg.value
    stor9 = msg.sender
    stor3 = stor9
    stor6 = 2 * 10^16
    stor4[stor9] = 2 * 10^16
    emit Transfer(2 * 10^16, 0, stor9);
    return code.data[891 len 5051]
}



// =====================  Runtime code  =====================


const PRICE_PRESALE = '$0.1'

const TOKEN_SUPPLY_TOTAL = 2 * 10^16


array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address adminWalletAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 stor7;
uint256 tokensIssuedIco;
address stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function adminWallet() {
    return adminWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function stopped() {
    return bool(stor7)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokensIssuedIco() {
    return tokensIssuedIco
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function stop() {
    require stor9 == msg.sender
    stor7 = 1
}

function start() {
    require stor9 == msg.sender
    stor7 = 0
}

function setName(string arg1) {
    require stor9 == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require stor9 == msg.sender
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[0] += arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) {
    require not stor7
    require msg.sender != 0
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor7
    require msg.sender != 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor7
    require msg.sender != 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

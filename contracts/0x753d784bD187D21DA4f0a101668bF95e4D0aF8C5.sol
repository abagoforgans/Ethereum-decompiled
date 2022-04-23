contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 9
    stor3.length.field_8 = 'RilleCoin' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 'RCN'
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = 'RCN' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 3
    stor6 = 25000 * 3600
    require not msg.value
    mem[224 len -1618] = code.data[2100 len -1618]
    stor3[].field_0 = Array(len=mem[mem[224] + 224], data=mem[mem[224] + 256 len mem[mem[224] + 224]])
    stor4[].field_0 = Array(len=mem[mem[256] + 224], data=mem[mem[256] + 256 len mem[mem[256] + 224]])
    stor5 = mem[288]
    stor6 = mem[320]
    stor1 = mem[320]
    stor0[address(msg.sender)] = mem[320]
    return code.data[482 len 1618]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 INITIAL_SUPPLY;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}

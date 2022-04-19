contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
array of uint256 stor4;
array of uint256 stor5;
uint256 stor6;
uint256 stor8652;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 15
    stor2.length.field_8 = 'PAXCHANGE TOKEN' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 18
    bool(stor4.length) = 0
    stor4.length.field_1 = 9
    stor4.length.field_8 = 'PAXCHANGE' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor5.length) = 0
    stor5.length.field_1 = 3
    stor5.length.field_8 = '0.1' / 256
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 50 * 10^6 * 10^stor3
    require not msg.value
    stor8652 = 50000 * 10^stor3
    stor0[this.address] = 13875 * 3600 * 10^stor3
    stor1[address(this.address)][address(msg.sender)] = 13875 * 3600 * 10^stor3
    emit code.data[2693 len 32]: stor6, 0, this.address
    emit code.data[2693 len 32]: (50000 * 10^stor3), this.address, 0xfab6368b0f7be60c573a6562d82469b5ed9e7ee6
    emit Approval((13875 * 3600 * 10^stor3), this.address, msg.sender);
    return code.data[758 len 1935]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
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

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
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

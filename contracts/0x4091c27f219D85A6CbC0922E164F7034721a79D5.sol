contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;
uint256 stor3;
array of uint256 stor4;
uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;

function _fallback() payable {
    stor5 = 18
    mem[128] = '1'
    bool(stor7.length) = 0
    uint255(stor7.length.field_1) = 1
    Mask(248, 0, stor7.length.field_8) = '1' / 256
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -3133] = code.data[4028 len -3133]
    stor0 = msg.sender
    emit Admined(msg.sender);
    stor4[] = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor6[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor3 = 100 * 10^6 * 10^stor5
    stor1[address(this.address)] = 80 * 10^6 * 10^stor5
    stor1[mem[236 len 20]] = 19 * 10^6 * 10^stor5
    stor[code.data[3964 len 32]] = 10^6 * 10^stor5
    stor2[address(this.address)][address(msg.sender)] = stor1[address(this.address)]
    emit code.data[3996 len 32]: stor1[address(this.address)], 0, this.address
    emit code.data[3996 len 32]: stor1[address(mem[224])], this.address, mem[236 len 20]
    emit code.data[3996 len 32]: stor[code.data[3964 len 32]], this.address, 0xfab6368b0f7be60c573a6562d82469b5ed9e7ee6
    emit Approval(stor1[address(this.address)], this.address, msg.sender);
    return code.data[895 len 3069]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
uint256 decimals;
array of uint256 symbol;
array of uint256 version;

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

function admin() {
    return adminAddress
}

function _fallback() {
    revert
}

function transferAdminship(address arg1) {
    require adminAddress == msg.sender
    adminAddress = arg1
    emit TransferAdminship(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burnToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burned(arg2, arg1);
}

function mintToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
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

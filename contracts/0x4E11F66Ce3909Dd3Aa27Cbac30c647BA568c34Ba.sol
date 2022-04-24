contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    mem[96 len -2581] = code.data[3407 len -2581]
    mem[64] = -2485
    stor0 = msg.sender
    stor5 = 0
    stor1[address(msg.sender)] = stor5
    stor4 = mem[223 len 1]
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5 = 10^18 * mem[96]
    stor6 = stor5
    if not mem[236 len 20]:
        stor0 = msg.sender
    else:
        stor0 = mem[236 len 20]
    stor5 = 10^18 * mem[96]
    stor1[stor0] = stor5
    stor6 = stor5
    return code.data[826 len 2581]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_b5dfb396;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b5dfb396(?) {
    require msg.sender == adminAddress
    return sub_b5dfb396
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferAdminship(address arg1) {
    require msg.sender == adminAddress
    adminAddress = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == adminAddress
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    sub_b5dfb396 -= arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}

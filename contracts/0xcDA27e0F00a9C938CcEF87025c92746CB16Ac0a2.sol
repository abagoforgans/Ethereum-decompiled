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
    mem[96 len -3451] = code.data[4236 len -3451]
    mem[64] = -3355
    stor0 = msg.sender
    stor1[address(msg.sender)] = 0
    stor5 = 0
    stor4 = mem[223 len 1]
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5 = mem[96]
    stor6 = 0
    if not mem[236 len 20]:
        stor0 = msg.sender
    else:
        stor0 = mem[236 len 20]
    stor1[stor0] = mem[96]
    stor5 = mem[96]
    return code.data[785 len 3451]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimal;
uint256 totalSupply;
uint256 soldToken;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function soldToken() {
    return soldToken
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function decimal() {
    return decimal
}

function symbol() {
    return symbol[0 len symbol.length]
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

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
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
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_364f4864(?) {
    require balanceOf[address(msg.sender)] > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    soldToken += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}

contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;

function _fallback() {
    mem[96 len -1537] = code.data[2030 len -1537]
    mem[64] = -1441
    stor0 = msg.sender
    stor1[address(msg.sender)] = 0
    stor5 = 0
    stor4 = mem[223 len 1]
    stor3[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor5 = mem[96]
    if not mem[236 len 20]:
        stor0 = msg.sender
    else:
        stor0 = mem[236 len 20]
    stor1[stor0] = mem[96]
    stor5 = mem[96]
    return code.data[493 len 1537]
}



// =====================  Runtime code  =====================


address adminAddress;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimal;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
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
    require adminAddress == msg.sender
    adminAddress = arg1
}

function mintToken(address arg1, uint256 arg2) {
    require adminAddress == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}

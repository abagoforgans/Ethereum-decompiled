contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
mapping of uint256 stor3;
array of uint256 stor5;
uint8 stor6;
array of uint256 stor7;
array of uint256 stor8;
uint256 stor9;

function _fallback() payable {
    stor6 = 18
    mem[128] = '1.0'
    bool(stor8.length) = 0
    stor8.length.field_1 = 3
    stor8.length.field_8 = '1.0' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor9 = 147500 * 10^18 * 3600
    require not msg.value
    mem[160 len -6481] = code.data[7158 len -6481]
    stor0 = msg.sender
    stor1 = msg.sender
    stor3[address(msg.sender)] = mem[160]
    stor2 = mem[160]
    stor5[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor6 = mem[255 len 1]
    stor7[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    return code.data[677 len 6481]
}



// =====================  Runtime code  =====================


address adminAddress;
address coAdminAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;
uint256 totalMaxSupply;

function coAdmin() {
    return coAdminAddress
}

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

function totalMaxSupply() {
    return totalMaxSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function transferAdminship(address arg1) {
    if adminAddress != msg.sender:
        require msg.sender == coAdminAddress
    adminAddress = arg1
}

function transferCoadminship(address arg1) {
    if adminAddress != msg.sender:
        require msg.sender == coAdminAddress
    coAdminAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseSupply(uint256 arg1, address arg2) {
    if adminAddress != msg.sender:
        require msg.sender == coAdminAddress
    require arg1 > 0
    require arg1 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, arg2, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(msg.sender)] < -1:
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    if adminAddress != msg.sender:
        require msg.sender == coAdminAddress
    if totalMaxSupply:
        require totalSupply + arg2 >= totalSupply
        require totalSupply + arg2 <= totalMaxSupply
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg2 > 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
    mem[ceil32(arg3.length) + 228 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 228] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 260 len arg3.length % 32]
        call arg1 with:
           funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
             gas gas_remaining - 25710 wei
            args msg.sender, arg2, address(this.address), Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 228 len floor32(arg3.length) + -ceil32(arg3.length) + 32]
    require ext_call.success
    return 1
}



}

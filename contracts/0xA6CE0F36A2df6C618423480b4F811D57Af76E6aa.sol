contract main {


// =======================  Init code  ======================


address stor3;
array of uint256 stor4;
array of uint256 stor5;
uint8 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 0
    stor4.length.field_8 = mem[128 len 31]
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[128] = 0
    bool(stor5.length) = 0
    stor5.length.field_1 = 0
    stor5.length.field_8 = mem[160 len 31]
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0
    stor7 = 0
    require not msg.value
    mem[160 len -2860] = code.data[3269 len -2860]
    stor3 = msg.sender
    stor4[].field_0 = Array(len=mem[mem[160] + 160], data=mem[mem[160] + 192 len mem[mem[160] + 160]])
    stor5[].field_0 = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor6 = mem[255 len 1]
    return code.data[409 len 2860]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
address stor3;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 maxMintBlock;

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
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function maxMintBlock() {
    return maxMintBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require stor3 == msg.sender
    require arg1
    stor3 = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require stor3 == msg.sender
    require not maxMintBlock
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    maxMintBlock = 1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require 0 < arg2
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require arg1.length < 128
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] > 0
        require uint8(idx) < arg2.length
        s = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] + s
        idx = idx + 1
        continue 
    require balanceOf[address(msg.sender)] > _38 * None
    require _38 * None <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -1 * _38 * None
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < arg1.length
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 2
        balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require uint8(idx) < arg1.length
        _69 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_69));
        idx = idx + 1
        continue 
    return 1
}



}

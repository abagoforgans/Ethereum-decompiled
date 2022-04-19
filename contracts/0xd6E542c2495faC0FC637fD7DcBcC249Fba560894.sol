contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 0
    stor3.length.field_8 = mem[192 len 31]
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[192] = 0
    bool(stor4.length) = 0
    stor4.length.field_1 = 0
    stor4.length.field_8 = mem[224 len 31]
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 0
    require not msg.value
    mem[224 len -3367] = code.data[4006 len -3367]
    stor0 = msg.sender
    require mem[mem[224] + 224] > 0
    require mem[mem[256] + 224] > 0
    stor3[].field_0 = Array(len=mem[mem[224] + 224], data=mem[mem[224] + 256 len mem[mem[224] + 224]])
    stor4[].field_0 = Array(len=mem[mem[256] + 224], data=mem[mem[256] + 256 len mem[mem[256] + 224]])
    stor5 = mem[319 len 1]
    stor6 = 10^18 * mem[320]
    stor7[address(msg.sender)] = 10^18 * mem[320]
    return code.data[639 len 3367]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    require arg1
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function deliverPresaleTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require balanceOf[address(msg.sender)] >= mem[(32 * idx) + (32 * arg1.length) + 160]
        balanceOf[address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        balanceOf[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_18));
        idx = idx + 1
        continue 
    return 1
}



}

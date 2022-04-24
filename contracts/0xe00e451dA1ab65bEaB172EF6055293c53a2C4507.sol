contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
array of address stor1;
array of uint256 stor6;
uint8 stor7;
array of uint256 stor8;
array of uint256 stor10;

function _fallback() payable {
    mem[128] = 'F0.1'
    bool(stor10.length) = 0
    stor10.length.field_1 = 4
    stor10.length.field_8 = 'F0.1' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -7451] = code.data[8510 len -7451]
    require mem[mem[192] + 160]
    require mem[mem[256] + 160]
    idx = 0
    while idx < mem[mem[160] + 160]:
        require idx < mem[mem[160] + 160]
        require mem[(32 * idx) + mem[160] + 204 len 20]
        require idx < mem[mem[160] + 160]
        mem[0] = mem[(32 * idx) + mem[160] + 204 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + mem[160] + 204 len 20]] = 1
        require idx < mem[mem[160] + 160]
        emit OwnerAddition(mem[(32 * idx) + mem[160] + 204 len 20]);
        idx = idx + 1
        continue 
    stor1.length = mem[mem[160] + 160]
    if not mem[mem[160] + 160]:
        idx = 0
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 192
        while mem[160] + (32 * mem[mem[160] + 160]) + 192 > idx:
            stor1[s] = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 160]) + 31) >> 5
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor6[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor7 = mem[255 len 1]
    stor8[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    return code.data[1059 len 7451]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct owners;
address operatorAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 feeInCirculation;
array of uint256 version;
address minterAddress;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function totalSupply() {
    return totalSupply
}

function isOwner(address arg1) {
    return bool(stor0[arg1])
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function operator() {
    return operatorAddress
}

function feeInCirculation() {
    return feeInCirculation
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

function setMinter(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    minterAddress = arg1
}

function setOperator(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    operatorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
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

function burnTokens(uint256 arg1) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= feeInCirculation
    feeInCirculation -= arg1
    emit Burn(arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sendTokens(address arg1, uint256 arg2) {
    require msg.sender == minterAddress
    require arg1
    require arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require feeInCirculation + arg2 >= feeInCirculation
    feeInCirculation += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function addOwner(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    if not stor0[address(arg1)]:
        stor0[address(arg1)] = 1
        owners.length++
        if not owners.length <= owners.length + 1:
            idx = owners.length + 1
            while owners.length > idx:
                owners[idx].field_0 = 0
                idx = idx + 1
                continue 
        address(owners[owners.length].field_0) = arg1
        emit OwnerAddition(arg1);
}

function getOwners() {
    if not owners.length:
        mem[(32 * owners.length) + 160] = 32
        mem[(32 * owners.length) + 192] = owners.length
        mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 160
           len (96 * owners.length) + 64
    mem[160] = address(owners.field_0)
    idx = 160
    s = 0
    while (32 * owners.length) + 128 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 224 len floor32(owners.length)] = mem[160 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[160 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 224 len (32 * owners.length) - floor32(owners.length)]), 
}

function removeOwner(address arg1) {
    require stor0[address(msg.sender)]
    require owners.length > 1
    stor0[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        mem[0] = 1
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require 1 <= owners.length
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        require 1 <= owners.length
        owners.length--
        if not owners.length <= owners.length - 1:
            idx = sha3(1) + owners.length - 1
            while sha3(1) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        emit OwnerRemoval(arg1);
    require 1 <= owners.length
    owners.length--
    if not owners.length <= owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    emit OwnerRemoval(arg1);
}



}

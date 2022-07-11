contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor7;
uint256 stor8;
uint8 stor10;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor7 = 0
    stor8 = 0
    stor10 = 0
    require not msg.value
    mem[96 len -4284] = code.data[4704 len -4284]
    mem[64] = -4188
    address(stor0.field_0) = msg.sender
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3 = mem[191 len 1]
    stor4 = 10^mem[191 len 1] * mem[192]
    stor5[address(stor0.field_0)] = 10^mem[191 len 1] * mem[192]
    return code.data[420 len 4284]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 feeRate;
uint256 maxFee;
mapping of uint8 stor9;
uint8 sub_4638a12a;
uint128 stor10; offset 168
address newTokenAddress; offset 8

function maxFee() {
    return maxFee
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

function sub_4638a12a(?) {
    return bool(sub_4638a12a)
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_740377f2(?) {
    return bool(stor9[arg1])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function feeRate() {
    return feeRate
}

function newToken() {
    return newTokenAddress
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function sub_84b3d3e5(?) {
    require owner == msg.sender
    Mask(96, 0, stor0.field_160) = Mask(96, 0, arg1)
}

function setFee(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    feeRate = arg1
    maxFee = arg2
}

function sub_abf130d0(?) {
    require owner == msg.sender
    sub_4638a12a = uint8(arg1)
    newTokenAddress = arg2
    stor10 = Mask(88, 168, arg1) >> 168
}

function withdrawEther(uint256 arg1) {
    require owner == msg.sender
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    require ext_call.success
}

function redeem(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= balanceOf[address(stor0.field_0)]
    balanceOf[address(stor0.field_0)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Redeem(arg1);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_395426fe(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        stor9[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function issue(uint256 arg1) {
    require owner == msg.sender
    require arg1 + balanceOf[address(stor0.field_0)] >= balanceOf[address(stor0.field_0)]
    require arg1 + balanceOf[address(stor0.field_0)] >= arg1
    balanceOf[address(stor0.field_0)] += arg1
    require arg1 + totalSupply >= totalSupply
    require arg1 + totalSupply >= arg1
    totalSupply += arg1
    emit Issue(arg1);
}

function sub_4e839ccd(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require stor9[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        _22 = sha3(mem[(32 * idx) + 140 len 20], 5)
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        balanceOf[mem[(32 * idx) + 140 len 20]] = 0
        require balanceOf[mem[(32 * idx) + 140 len 20]] <= totalSupply
        totalSupply -= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = stor[_22]
        emit DestroyedBlackFunds(mem[(32 * arg1.length) + 128], stor[_22]);
        s = stor[_22]
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require not stor9[address(arg1)]
    require not stor9[address(msg.sender)]
    if arg2:
        require arg2
        require feeRate * arg2 / arg2 == feeRate
    if feeRate * arg2 / 10^6 <= maxFee:
        require feeRate * arg2 / 10^6 <= arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 - (feeRate * arg2 / 10^6) + balanceOf[arg1] >= balanceOf[arg1]
        require balanceOf[arg1] >= 0
        balanceOf[address(arg1)] = arg2 - (feeRate * arg2 / 10^6) + balanceOf[arg1]
        emit Transfer((arg2 - (feeRate * arg2 / 10^6)), msg.sender, arg1);
        if feeRate * arg2 / 10^6 > 0:
            require (feeRate * arg2 / 10^6) + balanceOf[address(stor0.field_0)] >= balanceOf[address(stor0.field_0)]
            require (feeRate * arg2 / 10^6) + balanceOf[address(stor0.field_0)] >= feeRate * arg2 / 10^6
            balanceOf[address(stor0.field_0)] += feeRate * arg2 / 10^6
            emit Transfer((feeRate * arg2 / 10^6), msg.sender, owner);
    else:
        require maxFee <= arg2
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require arg2 - maxFee + balanceOf[arg1] >= balanceOf[arg1]
        require balanceOf[arg1] >= 0
        balanceOf[address(arg1)] = arg2 - maxFee + balanceOf[arg1]
        emit Transfer((arg2 - maxFee), msg.sender, arg1);
        if maxFee > 0:
            require maxFee + balanceOf[address(stor0.field_0)] >= balanceOf[address(stor0.field_0)]
            require maxFee + balanceOf[address(stor0.field_0)] >= maxFee
            balanceOf[address(stor0.field_0)] += maxFee
            emit Transfer(maxFee, msg.sender, owner);
    if sub_4638a12a:
        if newTokenAddress == arg1:
            require ext_code.size(newTokenAddress)
            call newTokenAddress.0xeb64b90d with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg2
            require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require not uint8(stor0.field_160)
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require not stor9[address(arg2)]
    require not stor9[address(arg1)]
    if arg3:
        require arg3
        require feeRate * arg3 / arg3 == feeRate
    if feeRate * arg3 / 10^6 <= maxFee:
        require feeRate * arg3 / 10^6 <= arg3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 - (feeRate * arg3 / 10^6) + balanceOf[arg2] >= balanceOf[arg2]
        require balanceOf[arg2] >= 0
        balanceOf[address(arg2)] = arg3 - (feeRate * arg3 / 10^6) + balanceOf[arg2]
        emit Transfer((arg3 - (feeRate * arg3 / 10^6)), arg1, arg2);
        if feeRate * arg3 / 10^6 > 0:
            require (feeRate * arg3 / 10^6) + balanceOf[address(stor0.field_0)] >= balanceOf[address(stor0.field_0)]
            require (feeRate * arg3 / 10^6) + balanceOf[address(stor0.field_0)] >= feeRate * arg3 / 10^6
            balanceOf[address(stor0.field_0)] += feeRate * arg3 / 10^6
            emit Transfer((feeRate * arg3 / 10^6), arg1, owner);
    else:
        require maxFee <= arg3
        require arg3 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= arg3
        require arg3 - maxFee + balanceOf[arg2] >= balanceOf[arg2]
        require balanceOf[arg2] >= 0
        balanceOf[address(arg2)] = arg3 - maxFee + balanceOf[arg2]
        emit Transfer((arg3 - maxFee), arg1, arg2);
        if maxFee > 0:
            require maxFee + balanceOf[address(stor0.field_0)] >= balanceOf[address(stor0.field_0)]
            require maxFee + balanceOf[address(stor0.field_0)] >= maxFee
            balanceOf[address(stor0.field_0)] += maxFee
            emit Transfer(maxFee, arg1, owner);
    if sub_4638a12a:
        if newTokenAddress == arg2:
            require ext_code.size(newTokenAddress)
            call newTokenAddress.0xeb64b90d with:
                 gas gas_remaining wei
                args address(arg1), address(arg2), arg3
            require ext_call.success
    return 1
}



}

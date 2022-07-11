contract main {




// =====================  Runtime code  =====================


const name = 'TrustVerse'

const decimals = 18

const symbol = 'TRV'

const INITIAL_SUPPLY = 1000000000 * 10^18


address owner;
mapping of uint256 stor1;
mapping of uint256 checkBonusTokenAmount;
mapping of uint256 stor3;
mapping of uint8 stor4;
array of struct stor5;
uint8 stor6;
address stor6; offset 8
uint256 totalSupply;
mapping of uint256 allowance;
mapping of uint256 allowanceEffectiveDate;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function totalSupply() {
    return totalSupply
}

function allowanceEffectiveDate(address arg1, address arg2) {
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require not stor4[msg.sender]
    return allowanceEffectiveDate[address(arg1)][address(arg2)]
}

function sub_6b8ea451(?) {
    return bool(uint8(stor6.field_0))
}

function owner() {
    return owner
}

function checkBonusTokenAmount(address arg1) {
    return checkBonusTokenAmount[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require not stor4[msg.sender]
    return allowance[address(arg1)][address(arg2)]
}

function checkBlacklist(address arg1) {
    require msg.sender == owner
    return bool(stor4[address(arg1)])
}

function _fallback() payable {
    revert
}

function setBonusSetter(address arg1) {
    require msg.sender == owner
    address(stor6.field_8) = arg1
}

function getBonusSetter() {
    if address(stor6.field_8) != msg.sender:
        require msg.sender == owner
    return address(stor6.field_8)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    if owner != msg.sender:
        require not stor4[address(arg1)]
    require not stor4[msg.sender]
    return stor1[address(arg1)]
}

function releaseToken() {
    require msg.sender == owner
    if not uint8(stor6.field_0):
        uint8(stor6.field_0) = 1
    emit TokenReleased(msg.sender, bool(uint8(stor6.field_0)));
}

function withholdToken() {
    require msg.sender == owner
    if 1 == bool(uint8(stor6.field_0)):
        uint8(stor6.field_0) = 0
    emit TokenReleased(msg.sender, bool(uint8(stor6.field_0)));
}

function unregisterFromBlacklist(address arg1) {
    require msg.sender == owner
    if 1 == bool(stor4[address(arg1)]):
        stor4[address(arg1)] = 0
    emit BlacklistUpdated(address(arg1), bool(stor4[address(arg1)]));
}

function setBonusToken(address arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require msg.sender == address(stor6.field_8)
    checkBonusTokenAmount[address(arg1)] = arg2
    stor3[address(arg1)] = arg3
}

function checkBonusTokenHoldingPeriodRemained(address arg1) {
    if block.timestamp >= stor3[address(arg1)]:
        return 0
    require block.timestamp <= stor3[address(arg1)]
    return (stor3[address(arg1)] - block.timestamp)
}

function approve(address arg1, uint256 arg2) {
    require uint8(stor6.field_0)
    require not stor4[address(arg1)]
    require not stor4[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function registerToBlacklist(address arg1) {
    require msg.sender == owner
    if bool(stor4[address(arg1)]) != 1:
        stor4[address(arg1)] = 1
        stor5.length++
        stor36B6[stor5.length] = arg1
    emit BlacklistUpdated(address(arg1), bool(stor4[address(arg1)]));
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= stor1[address(msg.sender)]
    require arg1 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function setBonusTokenInDays(address arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        require msg.sender == address(stor6.field_8)
    checkBonusTokenAmount[address(arg1)] = arg2
    require (24 * 3600 * arg3) + block.timestamp >= block.timestamp
    stor3[address(arg1)] = (24 * 3600 * arg3) + block.timestamp
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor4[address(arg1)]
    require not stor4[msg.sender]
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor4[address(arg1)]
    require not stor4[msg.sender]
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function sub_43f0901c(?) {
    require uint8(stor6.field_0)
    require not stor4[address(arg1)]
    require not stor4[msg.sender]
    allowanceEffectiveDate[msg.sender][address(arg1)] = arg3
    require uint8(stor6.field_0)
    require not stor4[address(arg1)]
    require not stor4[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_c7ed0461(?) {
    require uint8(stor6.field_0)
    require not stor4[address(arg1)]
    require not stor4[msg.sender]
    require (24 * 3600 * arg3) + block.timestamp >= block.timestamp
    allowanceEffectiveDate[msg.sender][address(arg1)] = (24 * 3600 * arg3) + block.timestamp
    require uint8(stor6.field_0)
    require not stor4[address(arg1)]
    require not stor4[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= stor1[msg.sender]
    require uint8(stor6.field_0)
    require not stor4[address(arg1)]
    require not stor4[msg.sender]
    if block.timestamp < stor3[msg.sender]:
        require checkBonusTokenAmount[msg.sender] <= stor1[msg.sender]
        require arg2 <= stor1[msg.sender] - checkBonusTokenAmount[msg.sender]
    require arg2 <= stor1[msg.sender]
    stor1[msg.sender] -= arg2
    require arg2 + stor1[arg1] >= stor1[arg1]
    stor1[address(arg1)] = arg2 + stor1[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp >= allowanceEffectiveDate[address(arg1)][msg.sender]
    require arg2
    require arg3 <= stor1[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require not stor4[msg.sender]
    require uint8(stor6.field_0)
    require arg3 <= stor1[address(arg1)]
    stor1[address(arg1)] -= arg3
    require arg3 + stor1[arg2] >= stor1[arg2]
    stor1[address(arg2)] = arg3 + stor1[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setBonusTokens(address[] arg1, uint256[] arg2, uint256 arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        require msg.sender == address(stor6.field_8)
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        checkBonusTokenAmount[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = arg3
        idx = idx + 1
        continue 
}

function getblacklistHistory() {
    require msg.sender == owner
    if not stor5.length:
        mem[(32 * stor5.length) + 128] = 32
        mem[(32 * stor5.length) + 160] = stor5.length
        mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
        return memory
          from (32 * stor5.length) + 128
           len (96 * stor5.length) + 64
    mem[128] = address(stor5.field_0)
    idx = 128
    s = 0
    while (32 * stor5.length) + 96 > idx:
        mem[idx + 32] = stor5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor5.length) + 192 len floor32(stor5.length)] = mem[128 len floor32(stor5.length)]
    return Array(len=stor5.length, data=mem[128 len floor32(stor5.length)], mem[(32 * stor5.length) + floor32(stor5.length) + 192 len (32 * stor5.length) - floor32(stor5.length)]), 
}

function setBonusTokensInDays(address[] arg1, uint256[] arg2, uint256 arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner != msg.sender:
        require msg.sender == address(stor6.field_8)
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        checkBonusTokenAmount[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require (24 * 3600 * arg3) + block.timestamp >= block.timestamp
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * idx) + 140 len 20]] = (24 * 3600 * arg3) + block.timestamp
        idx = idx + 1
        continue 
}

function sub_49851430(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length == arg2.length
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        idx = idx + 1
        s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
        continue 
    require mem[(64 * arg1.length) + 160] * arg1.length <= stor1[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _61 = mem[(32 * idx) + 128]
        require idx < arg2.length
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor1[msg.sender]
        require uint8(stor6.field_0)
        require not stor4[address(mem[(32 * idx) + 128])]
        require not stor4[msg.sender]
        if block.timestamp < stor3[msg.sender]:
            require checkBonusTokenAmount[msg.sender] <= stor1[msg.sender]
            require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor1[msg.sender] - checkBonusTokenAmount[msg.sender]
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= stor1[msg.sender]
        stor1[msg.sender] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require mem[(32 * idx) + (32 * arg1.length) + 160] + stor1[mem[(32 * idx) + 140 len 20]] >= stor1[mem[(32 * idx) + 140 len 20]]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + stor1[mem[(32 * idx) + 140 len 20]]
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_61));
        idx = idx + 1
        continue 
}



}

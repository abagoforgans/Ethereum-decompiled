contract main {




// =====================  Runtime code  =====================


#
#  - autoDistribute()
#  - _fallback()
#
const name = 'PublicWelfareCoin'

const decimals = 8

const symbol = 'PWC'


address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor3;
mapping of uint8 stor4;
mapping of uint256 unlockUnixTime;
array of address readWelfare;
array of uint256 readWelfareDetails;
address organizationAddress;
uint256 totalSupply;
uint256 stor10;
uint256 organization;
uint256 totalRemaining;
uint256 totalDistributed;
uint256 ethGet;
uint256 send0GiveBase;
uint8 stor17;
uint8 stor17; offset 24
uint256 stor17; offset 32
uint256 stor17; offset 24
uint256 stor17; offset 16
uint256 stor17; offset 8

function Send0GiveBase() {
    return send0GiveBase
}

function totalSupply() {
    return totalSupply
}

function Organization() {
    return organization
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function readWelfareDetails(address arg1) {
    return readWelfareDetails[address(arg1)][0 len readWelfareDetails[address(arg1)].length]
}

function OrganizationAddress() {
    return organizationAddress
}

function frozenAccount(address arg1) {
    return bool(stor4[arg1])
}

function readWelfareAddress(uint256 arg1) {
    require arg1 < readWelfare.length
    return readWelfare[arg1]
}

function unlockUnixTime(address arg1) {
    return unlockUnixTime[arg1]
}

function totalRemaining() {
    return totalRemaining
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalDistributed() {
    return totalDistributed
}

function EthGet() {
    return ethGet
}

function blacklist(address arg1) {
    return bool(stor3[arg1])
}

function changeOwner(address arg1) {
    require msg.sender == stor0
    if arg1:
        stor0 = arg1
}

function startDistribution() {
    require msg.sender == stor0
    uint8(stor17.field_0) = 0
    return 1
}

function stopTransfer() {
    require msg.sender == stor0
    Mask(232, 0, stor17.field_24) = 0
    return 1
}

function startTransfer() {
    require msg.sender == stor0
    Mask(232, 0, stor17.field_24) = 1
    return 1
}

function stopGamGetToken() {
    require msg.sender == stor0
    Mask(224, 0, stor17.field_32) = 1
    return 1
}

function startGamGetToken() {
    require msg.sender == stor0
    Mask(224, 0, stor17.field_32) = 0
    return 1
}

function finishDistribution() {
    require msg.sender == stor0
    require not uint8(stor17.field_0)
    uint8(stor17.field_0) = 1
    return 1
}

function startEthGet() {
    require msg.sender == stor0
    require not uint8(stor17.field_0)
    Mask(240, 0, stor17.field_16) = 0
    return 1
}

function startFreeGet() {
    require msg.sender == stor0
    require not uint8(stor17.field_0)
    Mask(248, 0, stor17.field_8) = 0
    return 1
}

function finishFreeGet() {
    require msg.sender == stor0
    require not uint8(stor17.field_0)
    Mask(248, 0, stor17.field_8) = 1
    return 1
}

function finishEthGet() {
    require msg.sender == stor0
    require not uint8(stor17.field_0)
    Mask(240, 0, stor17.field_16) = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function changeParam(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == stor0
    send0GiveBase = arg1
    ethGet = arg2
    stor10 = arg3
    return 1
}

function withdraw(address arg1) {
    require msg.sender == stor0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function storeWelfare(address arg1, string arg2) {
    require msg.sender == stor0
    readWelfare.length++
    readWelfare[readWelfare.length] = arg1
    readWelfareDetails[address(arg1)][] = Array(len=arg2.length, data=arg2[all])
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == stor0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Burn(arg1, msg.sender);
}

function recycling(uint256 arg1) {
    require msg.sender == stor0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    require totalRemaining + arg1 >= totalRemaining
    totalRemaining += arg1
    require arg1 <= totalDistributed
    totalDistributed -= arg1
    emit Transfer(arg1, msg.sender, this.address);
}

function enableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    require arg1.length <= 255
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * uint8(idx)) + 140 len 20]] = 0
        idx = idx + 1
        continue 
}

function disableWhitelist(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    require arg1.length <= 255
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 3
        stor3[mem[(32 * uint8(idx)) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function withdrawOtherTokens(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function freezeAccounts(address[] arg1, bool arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        require idx < arg1.length
        _20 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit FrozenFunds(arg2, address(_20));
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require bool(uint8(stor17.field_24)) == 1
    require not stor3[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require not stor4[address(msg.sender)]
    require not stor4[address(arg1)]
    require block.timestamp > unlockUnixTime[address(msg.sender)]
    require block.timestamp > unlockUnixTime[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require bool(uint8(stor17.field_24)) == 1
    require not stor3[address(msg.sender)]
    require arg2
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require not stor4[address(arg1)]
    require not stor4[address(arg2)]
    require block.timestamp > unlockUnixTime[address(arg1)]
    require block.timestamp > unlockUnixTime[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function lockupAccounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    require arg1.length > 0
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require unlockUnixTime[mem[(32 * idx) + 140 len 20]] < mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        unlockUnixTime[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _35 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit LockedFunds(mem[(32 * arg1.length) + (32 * arg2.length) + 160], address(_35));
        idx = idx + 1
        continue 
}

function distribution(address[] arg1, uint256 arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == stor0
    require not uint8(stor17.field_0)
    require arg1.length <= 255
    require arg2 <= totalRemaining
    idx = 0
    while uint8(idx) < arg1.length:
        require arg2 <= totalRemaining
        require uint8(idx) < arg1.length
        _12 = mem[(32 * uint8(idx)) + 128]
        require not uint8(stor17.field_0)
        require totalRemaining >= 0
        require arg2 <= totalRemaining
        require totalDistributed + arg2 >= totalDistributed
        totalDistributed += arg2
        require arg2 <= totalRemaining
        totalRemaining -= arg2
        require balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] = balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + arg2
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, 0, address(_12));
        idx = idx + 1
        continue 
    if totalDistributed >= totalSupply:
        uint8(stor17.field_0) = 1
}

function distributeAmounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == stor0
    require not uint8(stor17.field_0)
    require arg1.length <= 255
    require arg1.length == arg2.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg2.length
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        require uint8(idx) < arg1.length
        _21 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        require not uint8(stor17.field_0)
        require totalRemaining >= 0
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        require totalDistributed + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= totalDistributed
        totalDistributed += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= totalRemaining
        totalRemaining -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= balanceOf[mem[(32 * uint8(idx)) + 140 len 20]]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] = balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], 0, address(_21));
        if totalDistributed >= totalSupply:
            uint8(stor17.field_0) = 1
        idx = idx + 1
        continue 
}



}

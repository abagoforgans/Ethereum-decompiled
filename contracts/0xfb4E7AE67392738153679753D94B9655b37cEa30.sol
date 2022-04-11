contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor11;
mapping of uint256 stor12;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 13
    stor1.length.field_8 = 'Unit.Fund 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 9
    stor2.length.field_8 = 'Unit.Fund' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'UFT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 18
    stor5 = 50000000 * 10^18
    stor6 = 205
    require not msg.value
    stor0 = msg.sender
    stor12[address(this.address)] = stor5
    stor7 = code.data[5167 len 32]
    stor8 = code.data[5199 len 32]
    stor9 = code.data[5231 len 32]
    stor11 = 1
    return code.data[589 len 4578]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 buyPrice;
uint256 icoSince;
uint256 icoTill;
uint256 sub_77031f3f;
uint256 collectedEthers;
uint8 locked;
uint8 icoSucceed; offset 8
mapping of uint256 balanceOf;
mapping of uint256 sub_8f700950;
mapping of uint256 allowance;

function collectedEthers() {
    return collectedEthers
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function icoTill() {
    return icoTill
}

function decimals() {
    return decimals
}

function icoSince() {
    return icoSince
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_77031f3f(?) {
    return sub_77031f3f
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function sub_8f700950(?) {
    return sub_8f700950[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function locked() {
    return bool(locked)
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function icoSucceed() {
    return bool(icoSucceed)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setLocked(bool arg1) {
    require owner == msg.sender
    if not icoSucceed:
        return 0
    locked = uint8(arg1)
    return 1
}

function approve(address arg1, uint256 arg2) {
    if locked:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transferEther(address arg1) {
    require owner == msg.sender
    if not icoSucceed:
        return 0
    call arg1 with:
       value collectedEthers wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function goalReached() {
    if block.timestamp <= icoTill:
        return 0
    if collectedEthers < sub_77031f3f:
        return 0
    locked = 0
    icoSucceed = 1
    totalSupply = -balanceOf[address(this.address)] + 50000000 * 10^18
    balanceOf[address(this.address)] = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not locked
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_1877e225(?) {
    if arg1 <= icoTill:
        return 0
    if icoSucceed:
        return 0
    if sub_8f700950[address(arg2)] <= 0:
        return 0
    sub_8f700950[address(arg2)] = 0
    balanceOf[address(arg2)] = 0
    call arg2 with:
       value sub_8f700950[address(arg2)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function refund() {
    if block.timestamp <= icoTill:
        return 0
    if icoSucceed:
        return 0
    if sub_8f700950[address(msg.sender)] <= 0:
        return 0
    sub_8f700950[address(msg.sender)] = 0
    balanceOf[address(msg.sender)] = 0
    call msg.sender with:
       value sub_8f700950[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    if locked:
        return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if locked:
        return 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function getBonus(uint256 arg1, uint256 arg2) {
    if arg1 <= 12500 * 10^18:
        s = 0
        idx = 5
        while uint8(idx) > 0:
            if arg2:
                if 2500 * 10^18 * uint8(-idx + 6) >= arg1:
                    if arg2 <= (2500 * 10^18 * uint8(-idx + 6)) - arg1:
                        s = 2500 * 10^18 * uint8(-idx + 6)
                        idx = idx - 1
                        continue 
                    else:
                        s = 2500 * 10^18 * uint8(-idx + 6)
                        idx = idx - 1
                        continue 
                else:
                    s = 2500 * 10^18 * uint8(-idx + 6)
                    idx = idx - 1
                    continue 
            else:
                return 0
        return 0
    else:
        return 0
}

function sub_e7ee8851(?) payable {
    require arg1 >= icoSince
    require arg1 <= icoTill
    require arg3 > 0
    if collectedEthers <= 12500 * 10^18:
        s = 0
        idx = 5
        while uint8(idx) > 0:
            if arg3:
                if 2500 * 10^18 * uint8(-idx + 6) >= collectedEthers:
                    if arg3 <= (2500 * 10^18 * uint8(-idx + 6)) - collectedEthers:
                        s = 2500 * 10^18 * uint8(-idx + 6)
                        idx = idx - 1
                        continue 
                    else:
                        s = 2500 * 10^18 * uint8(-idx + 6)
                        idx = idx - 1
                        continue 
                else:
                    s = 2500 * 10^18 * uint8(-idx + 6)
                    idx = idx - 1
                    continue 
            else:
                require balanceOf[address(this.address)] >= arg3 * buyPrice
                collectedEthers += arg3
                sub_8f700950[address(arg2)] += arg3
                balanceOf[address(arg2)] += arg3 * buyPrice
                balanceOf[this.address] += -1 * arg3 * buyPrice
                emit Transfer((arg3 * buyPrice), this.address, arg2);
    require balanceOf[address(this.address)] >= arg3 * buyPrice
    collectedEthers += arg3
    sub_8f700950[address(arg2)] += arg3
    balanceOf[address(arg2)] += arg3 * buyPrice
    balanceOf[this.address] += -1 * arg3 * buyPrice
    emit Transfer((arg3 * buyPrice), this.address, arg2);
}

function buy() payable {
    require block.timestamp >= icoSince
    require block.timestamp <= icoTill
    require msg.value > 0
    if collectedEthers <= 12500 * 10^18:
        s = 0
        idx = 5
        while uint8(idx) > 0:
            if msg.value:
                if 2500 * 10^18 * uint8(-idx + 6) >= collectedEthers:
                    if msg.value <= (2500 * 10^18 * uint8(-idx + 6)) - collectedEthers:
                        s = 2500 * 10^18 * uint8(-idx + 6)
                        idx = idx - 1
                        continue 
                    else:
                        s = 2500 * 10^18 * uint8(-idx + 6)
                        idx = idx - 1
                        continue 
                else:
                    s = 2500 * 10^18 * uint8(-idx + 6)
                    idx = idx - 1
                    continue 
            else:
                require balanceOf[address(this.address)] >= msg.value * buyPrice
                collectedEthers += msg.value
                sub_8f700950[address(msg.sender)] += msg.value
                balanceOf[address(msg.sender)] += msg.value * buyPrice
                balanceOf[this.address] += -1 * msg.value * buyPrice
                emit Transfer((msg.value * buyPrice), this.address, msg.sender);
    require balanceOf[address(this.address)] >= msg.value * buyPrice
    collectedEthers += msg.value
    sub_8f700950[address(msg.sender)] += msg.value
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    balanceOf[this.address] += -1 * msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
}

function _fallback() payable {
    require block.timestamp >= icoSince
    require block.timestamp <= icoTill
    require msg.value > 0
    if collectedEthers <= 12500 * 10^18:
        s = 0
        idx = 5
        while uint8(idx) > 0:
            if msg.value:
                if 2500 * 10^18 * uint8(-idx + 6) >= collectedEthers:
                    if msg.value <= (2500 * 10^18 * uint8(-idx + 6)) - collectedEthers:
                        s = 2500 * 10^18 * uint8(-idx + 6)
                        idx = idx - 1
                        continue 
                    else:
                        s = 2500 * 10^18 * uint8(-idx + 6)
                        idx = idx - 1
                        continue 
                else:
                    s = 2500 * 10^18 * uint8(-idx + 6)
                    idx = idx - 1
                    continue 
            else:
                require balanceOf[address(this.address)] >= msg.value * buyPrice
                collectedEthers += msg.value
                sub_8f700950[address(msg.sender)] += msg.value
                balanceOf[address(msg.sender)] += msg.value * buyPrice
                balanceOf[this.address] += -1 * msg.value * buyPrice
                emit Transfer((msg.value * buyPrice), this.address, msg.sender);
    require balanceOf[address(this.address)] >= msg.value * buyPrice
    collectedEthers += msg.value
    sub_8f700950[address(msg.sender)] += msg.value
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    balanceOf[this.address] += -1 * msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), this.address, msg.sender);
}



}

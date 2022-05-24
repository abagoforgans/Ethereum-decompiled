contract main {




// =====================  Runtime code  =====================


const MAX_UINT = -1


uint8 stor0; offset 160
address owner;
uint256 _totalSupply;
mapping of uint256 balances;
uint256 basisPointsRate;
uint256 maximumFee;
mapping of uint256 allowed;
mapping of uint8 stor6;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 stor10; offset 160
uint128 stor10; offset 160
address upgradedAddress;
uint256 sellPrice;
uint256 buyPrice;
mapping of uint256 frozenAccount;

function name() {
    return name[0 len name.length]
}

function deprecated() {
    return bool(uint8(stor10.field_160))
}

function upgradedAddress() {
    return upgradedAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function maximumFee() {
    return maximumFee
}

function _totalSupply() {
    return _totalSupply
}

function sellPrice() {
    return sellPrice
}

function getBlackListStatus(address arg1) {
    return bool(stor6[address(arg1)])
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function buyPrice() {
    return buyPrice
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return frozenAccount[arg1]
}

function basisPointsRate() {
    return basisPointsRate
}

function isBlackListed(address arg1) {
    return bool(stor6[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function addBlackList(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) {
    require msg.sender == owner
    stor6[address(arg1)] = 0
    emit RemovedBlackList(arg1);
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    uint8(stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Pause()
}

function setPrices(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    sellPrice = arg1
    buyPrice = arg2
}

function burn(uint256 arg1) {
    require arg1 <= balances[msg.sender]
    balances[msg.sender] -= arg1
    _totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function deprecate(address arg1) {
    require msg.sender == owner
    upgradedAddress = arg1
    Mask(96, 0, stor10.field_160) = 0
    uint8(stor10.field_160) = 1
    emit Deprecate(arg1);
}

function freezeAccount(address arg1, uint256 arg2) {
    require msg.sender == owner
    frozenAccount[address(arg1)] = arg2 * 10^decimals
    emit FrozenFunds(address(arg1), arg2 * 10^decimals);
}

function redeem(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= _totalSupply
    require arg1 <= balances[address(stor0.field_0)]
    require arg1 <= _totalSupply
    require arg1 <= balances[address(stor0.field_0)]
    emit Redeem(arg1);
}

function sub_4cd64b0d(?) {
    require msg.sender == owner
    require _totalSupply + arg2 > _totalSupply
    require balances[address(stor0.field_0)] + arg2 > balances[address(stor0.field_0)]
    balances[address(arg1)] += arg2
    frozenAccount[address(arg1)] = 0
}

function issue(uint256 arg1) {
    require msg.sender == owner
    require _totalSupply + arg1 > _totalSupply
    require balances[address(stor0.field_0)] + arg1 > balances[address(stor0.field_0)]
    balances[address(stor0.field_0)] += arg1
    _totalSupply += arg1
    emit Issue(arg1);
}

function burnFrom(address arg1, uint256 arg2) {
    require arg2 <= balances[address(arg1)]
    require arg2 <= allowed[address(arg1)][msg.sender]
    balances[address(arg1)] -= arg2
    allowed[address(arg1)][msg.sender] -= arg2
    _totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function totalSupply() {
    if not uint8(stor10.field_160):
        return _totalSupply
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setParams(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < 20
    require arg2 < 50
    basisPointsRate = arg1
    if not arg2:
        maximumFee = 0
        emit Params(basisPointsRate, 0);
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        maximumFee = 10^decimals * arg2
        emit Params(basisPointsRate, 10^decimals * arg2);
}

function balanceOf(address arg1) {
    if not uint8(stor10.field_160):
        return balances[address(arg1)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) {
    if not uint8(stor10.field_160):
        return allowed[address(arg1)][address(arg2)]
    require ext_code.size(upgradedAddress)
    call upgradedAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e1eae712(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit AddedBlackList(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        continue 
}

function sub_000bdcb3(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        stor6[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        emit RemovedBlackList(mem[(32 * arg1.length) + 128]);
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if uint8(stor10.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.approveByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 68
        if arg2:
            require not allowed[msg.sender][address(arg1)]
        allowed[msg.sender][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
}

function destroyBlackFunds(address arg1) {
    require msg.sender == owner
    require stor6[address(arg1)]
    if not uint8(stor10.field_160):
        balances[address(arg1)] = 0
        require balances[address(arg1)] <= _totalSupply
        emit DestroyedBlackFunds(address(arg1), balances[address(arg1)]);
    else:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        balances[address(arg1)] = 0
        require ext_call.return_data[0] <= _totalSupply
        emit DestroyedBlackFunds(address(arg1), ext_call.return_data[0]);
}

function sub_6f5af679(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require calldata.size >= 68
    idx = 0
    while idx < arg1.length:
        if arg2:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = sha3(msg.sender, 5)
            require 0 == allowed[msg.sender][mem[(32 * idx) + 140 len 20]]
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(msg.sender, 5)
        allowed[msg.sender][mem[(32 * idx) + 140 len 20]] = arg2
        require idx < arg1.length
        _24 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Approval(arg2, msg.sender, address(_24));
        idx = idx + 1
        continue 
}

function sub_3bedd59c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg2 >= 1
    require arg2 <= 100
    require arg1.length > 0
    require arg1.length <= 10000
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _15 = sha3(mem[(32 * idx) + 140 len 20], 2)
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        frozenAccount[mem[(32 * idx) + 140 len 20]] = balances[mem[(32 * idx) + 140 len 20]] / 100 * arg2
        require idx < arg1.length
        mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 160] = stor[_15] / 100 * arg2
        emit FrozenFunds(mem[(32 * arg1.length) + 128], stor[_15] / 100 * arg2);
        idx = idx + 1
        s = stor[_15] / 100 * arg2
        continue 
}

function sub_a79cb159(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    require arg1.length > 0
    require arg1.length <= 10000
    if not arg2:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 13
            frozenAccount[mem[(32 * idx) + 140 len 20]] = 0
            require idx < arg1.length
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 160] = 0
            emit FrozenFunds(mem[(32 * arg1.length) + 128], 0);
            idx = idx + 1
            continue 
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 13
            frozenAccount[mem[(32 * idx) + 140 len 20]] = 10^decimals * arg2
            require idx < arg1.length
            mem[(32 * arg1.length) + 128] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 160] = 10^decimals * arg2
            emit FrozenFunds(mem[(32 * arg1.length) + 128], 10^decimals * arg2);
            idx = idx + 1
            continue 
}

function sub_d00221b2(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require not uint8(stor0.field_160)
    require arg1.length > 0
    require arg1.length <= 10000
    require arg2
    require 10^decimals * arg2 / arg2 == 10^decimals
    require 10^decimals * arg2 > 0
    require 10^decimals * arg2 <= 10 * 10^6 * 10^decimals
    idx = 0
    s = 0
    while idx < arg1.length:
        require (10^decimals * arg2) + s >= s
        idx = idx + 1
        s = (10^decimals * arg2) + s
        continue 
    require 10^decimals * arg2 * arg1.length <= balances[msg.sender]
    require 10^decimals * arg2 * arg1.length <= balances[msg.sender]
    balances[msg.sender] += -1 * 10^decimals * arg2 * arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require (10^decimals * arg2) + balances[mem[(32 * idx) + 140 len 20]] >= balances[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 2
        balances[mem[(32 * idx) + 140 len 20]] += 10^decimals * arg2
        require idx < arg1.length
        _46 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 128] = 10^decimals * arg2
        emit Transfer((10^decimals * arg2), msg.sender, address(_46));
        idx = idx + 1
        continue 
    return 0
}

function sell(uint256 arg1) payable {
    require not uint8(stor0.field_160)
    require eth.balance(this.address) >= arg1 * sellPrice
    require not uint8(stor0.field_160)
    require not stor6[msg.sender]
    if not uint8(stor10.field_160):
        require frozenAccount[msg.sender] <= balances[address(msg.sender)]
        require balances[address(msg.sender)] - frozenAccount[msg.sender] >= arg1
    else:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require frozenAccount[msg.sender] <= ext_call.return_data[0]
        require ext_call.return_data[0] - frozenAccount[msg.sender] >= arg1
    require this.address
    require arg1 <= balances[address(msg.sender)]
    require arg1 + balances[address(this.address)] >= balances[address(this.address)]
    require arg1 + balances[address(this.address)] > balances[address(this.address)]
    require balances[address(this.address)] + balances[msg.sender] >= balances[msg.sender]
    require arg1 <= balances[address(msg.sender)]
    require arg1 + balances[address(this.address)] >= balances[address(this.address)]
    emit Transfer(arg1, msg.sender, this.address);
    require balances[address(this.address)] + balances[msg.sender] == balances[msg.sender] + balances[address(this.address)]
    call msg.sender with:
       value arg1 * sellPrice wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function buy() payable {
    require not uint8(stor0.field_160)
    require buyPrice
    require not uint8(stor0.field_160)
    require not stor6[msg.sender]
    if not uint8(stor10.field_160):
        if frozenAccount[msg.sender] <= balances[address(msg.sender)]:
            require balances[address(msg.sender)] - frozenAccount[msg.sender] >= msg.value / buyPrice
            require msg.sender
            require msg.value / buyPrice <= balances[address(this.address)]
            if (msg.value / buyPrice) + balances[address(msg.sender)] >= balances[address(msg.sender)]:
                require (msg.value / buyPrice) + balances[address(msg.sender)] > balances[address(msg.sender)]
                if balances[address(msg.sender)] + balances[this.address] >= balances[this.address]:
                    if msg.value / buyPrice <= balances[address(this.address)]:
                        if (msg.value / buyPrice) + balances[address(msg.sender)] >= balances[address(msg.sender)]:
                            emit Transfer((msg.value / buyPrice), this.address, msg.sender);
                            if balances[address(msg.sender)] + balances[this.address] == balances[this.address] + balances[address(msg.sender)]:
    else:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if frozenAccount[msg.sender] <= ext_call.return_data[0]:
            require ext_call.return_data[0] - frozenAccount[msg.sender] >= msg.value / buyPrice
            require msg.sender
            require msg.value / buyPrice <= balances[address(this.address)]
            if (msg.value / buyPrice) + balances[address(msg.sender)] >= balances[address(msg.sender)]:
                require (msg.value / buyPrice) + balances[address(msg.sender)] > balances[address(msg.sender)]
                if balances[address(msg.sender)] + balances[this.address] >= balances[this.address]:
                    if msg.value / buyPrice <= balances[address(this.address)]:
                        if (msg.value / buyPrice) + balances[address(msg.sender)] >= balances[address(msg.sender)]:
                            emit Transfer((msg.value / buyPrice), this.address, msg.sender);
                            if balances[address(msg.sender)] + balances[this.address] == balances[this.address] + balances[address(msg.sender)]:
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require not stor6[address(arg1)]
    if uint8(stor10.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferFromByLegacy(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 100
        if not arg3:
            if allowed[address(arg1)][msg.sender] < -1:
                require arg3 <= allowed[address(arg1)][msg.sender]
                allowed[address(arg1)][msg.sender] -= arg3
            if 0 <= maximumFee:
                require 0 <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require arg3 + balances[arg2] >= balances[arg2]
                balances[address(arg2)] = arg3 + balances[arg2]
                emit Transfer(arg3, arg1, arg2);
            else:
                require maximumFee <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require arg3 - maximumFee + balances[arg2] >= balances[arg2]
                balances[address(arg2)] = arg3 - maximumFee + balances[arg2]
                if maximumFee > 0:
                    require maximumFee + balances[address(stor0.field_0)] >= balances[address(stor0.field_0)]
                    balances[address(stor0.field_0)] += maximumFee
                    emit Transfer(maximumFee, arg1, owner);
                emit Transfer((arg3 - maximumFee), arg1, arg2);
        else:
            require basisPointsRate * arg3 / arg3 == basisPointsRate
            if allowed[address(arg1)][msg.sender] < -1:
                require arg3 <= allowed[address(arg1)][msg.sender]
                allowed[address(arg1)][msg.sender] -= arg3
            if basisPointsRate * arg3 / 10000 <= maximumFee:
                require basisPointsRate * arg3 / 10000 <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require arg3 - (basisPointsRate * arg3 / 10000) + balances[arg2] >= balances[arg2]
                balances[address(arg2)] = arg3 - (basisPointsRate * arg3 / 10000) + balances[arg2]
                if basisPointsRate * arg3 / 10000 > 0:
                    require (basisPointsRate * arg3 / 10000) + balances[address(stor0.field_0)] >= balances[address(stor0.field_0)]
                    balances[address(stor0.field_0)] += basisPointsRate * arg3 / 10000
                    emit Transfer((basisPointsRate * arg3 / 10000), arg1, owner);
                emit Transfer((arg3 - (basisPointsRate * arg3 / 10000)), arg1, arg2);
            else:
                require maximumFee <= arg3
                require arg3 <= balances[address(arg1)]
                balances[address(arg1)] -= arg3
                require arg3 - maximumFee + balances[arg2] >= balances[arg2]
                balances[address(arg2)] = arg3 - maximumFee + balances[arg2]
                if maximumFee > 0:
                    require maximumFee + balances[address(stor0.field_0)] >= balances[address(stor0.field_0)]
                    balances[address(stor0.field_0)] += maximumFee
                    emit Transfer(maximumFee, arg1, owner);
                emit Transfer((arg3 - maximumFee), arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require not stor6[msg.sender]
    if not uint8(stor10.field_160):
        require frozenAccount[msg.sender] <= balances[address(msg.sender)]
        require balances[address(msg.sender)] - frozenAccount[msg.sender] >= arg2
    else:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require frozenAccount[msg.sender] <= ext_call.return_data[0]
        require ext_call.return_data[0] - frozenAccount[msg.sender] >= arg2
    if uint8(stor10.field_160):
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require calldata.size >= 68
        if not arg2:
            require arg1
            require arg2 <= balances[msg.sender]
            require arg2 + balances[address(arg1)] >= balances[address(arg1)]
            require arg2 + balances[address(arg1)] > balances[address(arg1)]
            if 0 <= maximumFee:
                require 0 <= arg2
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 + balances[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                require maximumFee <= arg2
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 - maximumFee + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 - maximumFee + balances[arg1]
                if maximumFee > 0:
                    require maximumFee + balances[address(stor0.field_0)] >= balances[address(stor0.field_0)]
                    balances[address(stor0.field_0)] += maximumFee
                    emit Transfer(maximumFee, msg.sender, owner);
                emit Transfer((arg2 - maximumFee), msg.sender, arg1);
        else:
            require basisPointsRate * arg2 / arg2 == basisPointsRate
            require arg1
            require arg2 <= balances[msg.sender]
            require arg2 + balances[address(arg1)] >= balances[address(arg1)]
            require arg2 + balances[address(arg1)] > balances[address(arg1)]
            if basisPointsRate * arg2 / 10000 <= maximumFee:
                require basisPointsRate * arg2 / 10000 <= arg2
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 - (basisPointsRate * arg2 / 10000) + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 - (basisPointsRate * arg2 / 10000) + balances[arg1]
                if basisPointsRate * arg2 / 10000 > 0:
                    require (basisPointsRate * arg2 / 10000) + balances[address(stor0.field_0)] >= balances[address(stor0.field_0)]
                    balances[address(stor0.field_0)] += basisPointsRate * arg2 / 10000
                    emit Transfer((basisPointsRate * arg2 / 10000), msg.sender, owner);
                emit Transfer((arg2 - (basisPointsRate * arg2 / 10000)), msg.sender, arg1);
            else:
                require maximumFee <= arg2
                require arg2 <= balances[msg.sender]
                balances[msg.sender] -= arg2
                require arg2 - maximumFee + balances[arg1] >= balances[arg1]
                balances[address(arg1)] = arg2 - maximumFee + balances[arg1]
                if maximumFee > 0:
                    require maximumFee + balances[address(stor0.field_0)] >= balances[address(stor0.field_0)]
                    balances[address(stor0.field_0)] += maximumFee
                    emit Transfer(maximumFee, msg.sender, owner);
                emit Transfer((arg2 - maximumFee), msg.sender, arg1);
}



}

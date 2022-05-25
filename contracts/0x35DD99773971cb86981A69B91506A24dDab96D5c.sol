contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 maxSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
uint8 stor9;
mapping of uint8 stor10;
uint8 stor11;
uint8 stor11; offset 8
uint256 stakedTime;
uint256 sub_30e8321c;
uint8 stor14;
uint8 stor14; offset 8
mapping of struct sub_d6026bf5;
address eventListenerAddress;
array of uint256 sub_287aec5a;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_287aec5a(?) {
    return sub_287aec5a[address(arg1)][0 len sub_287aec5a[address(arg1)].length]
}

function sub_30e8321c(?) {
    return sub_30e8321c
}

function decimals() {
    return decimals
}

function sub_3d1b6886(?) {
    return bool(uint8(stor14.field_8))
}

function sub_4035cd22(?) {
    return bool(uint8(stor14.field_0))
}

function isLocked(address arg1) {
    return bool(stor10[address(arg1)])
}

function version() {
    return version[0 len version.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function paused() {
    return bool(stor9)
}

function sub_64c09d46(?) {
    return bool(uint8(stor11.field_8))
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_97c8680e(?) {
    return sub_287aec5a[msg.sender][0 len sub_287aec5a[msg.sender].length]
}

function sub_9f469c49(?) {
    return bool(uint8(stor11.field_0))
}

function sub_acbc2e8a(?) {
    return bool(sub_30e8321c)
}

function eventListener() {
    return eventListenerAddress
}

function newOwner() {
    return newOwner
}

function maxSupply() {
    return maxSupply
}

function sub_d6026bf5(?) {
    return sub_d6026bf5[address(arg1)].field_0
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function stakedTime() {
    return stakedTime
}

function _fallback() payable {
    revert
}

function sub_7338d422(?) {
    return not bool(stakedTime)
}

function staking() {
    if 0 == stakedTime:
        return stakedTime != 0
    return not bool(sub_30e8321c)
}

function sub_ef6109f9(?) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    eventListenerAddress = 0
}

function approve(address arg1, uint256 arg2) {
    allowed[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxSupply(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    maxSupply = arg1
    emit MaxSupplyChanged(arg1);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not stor9:
        revert with 0, 'not paused!'
    stor9 = 0
    emit Unpaused()
}

function confirmOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'you're not an new owner!'
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if owner == arg1:
        revert with 0, 'already an owner!'
    newOwner = arg1
}

function stakedAmount(address arg1) {
    if not stakedTime:
        return 0
    if not sub_d6026bf5[address(arg1)].field_0:
        return balances[address(arg1)]
    return sub_d6026bf5[address(arg1)].field_256
}

function setListener(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not arg1:
        eventListenerAddress = 0
    else:
        eventListenerAddress = arg1
}

function cancelStake() {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not uint8(stor14.field_0):
        revert with 0, 'stake was not requested!'
    uint8(stor14.field_0) = 0
}

function cancelUnstake() {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not uint8(stor14.field_8):
        revert with 0, 'stake was not requested!'
    uint8(stor14.field_8) = 0
}

function lock(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if stor10[address(arg1)]:
        revert with 0, 'already locked!'
    stor10[address(arg1)] = 1
    emit Locked(arg1);
}

function sub_32d81e69(?) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if uint8(stor11.field_0):
        revert with 0, 'issuing is already allowed!'
    uint8(stor11.field_0) = 1
    emit 0xde90d14d 
}

function sub_95d9bba2(?) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if uint8(stor11.field_8):
        revert with 0, 'burning is already allowed!'
    uint8(stor11.field_8) = 1
    emit 0xb67a3e4a 
}

function sub_2e6457ac(?) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not uint8(stor14.field_0):
        revert with 0, 'stake was not requested!'
    stakedTime = block.timestamp
    emit Staked()
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if stor9:
        revert with 0, 32, 7, 0xef70617573656421000000000000000000000000000000000000000000000000
    stor9 = 1
    emit Paused()
}

function unlock(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not stor10[address(arg1)]:
        revert with 0, 'already unlocked!'
    stor10[address(arg1)] = 0
    emit Unlocked(arg1);
}

function sub_257abb35(?) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not uint8(stor11.field_8):
        revert with 0, 'burning is already blocked!'
    uint8(stor11.field_8) = 0
    emit 0x57880799 
}

function sub_3b76f0f8(?) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not uint8(stor11.field_0):
        revert with 0, 'issuing is already blocked!'
    uint8(stor11.field_0) = 0
    emit 0x54423eee 
}

function sub_e455a2ff(?) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not uint8(stor14.field_8):
        revert with 0, 'stake was not requested!'
    sub_30e8321c = block.timestamp
    emit Unstaked()
}

function unstake() {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if 0 == stakedTime:
        revert with 0, 'not staking!'
    if sub_30e8321c:
        revert with 0, 'not staking!'
    uint8(stor14.field_8) = 1
}

function stake() {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if stakedTime != 0:
        if not sub_30e8321c:
            revert with 0, 'already staked!'
        revert with 0, 'already unstaked!'
    if sub_30e8321c:
        revert with 0, 'already unstaked!'
    uint8(stor14.field_0) = 1
}

function burn(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not uint8(stor11.field_8):
        revert with 0, 'token burning is not allowed!'
    if arg2 > balances[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'balance is smaller than the burning amount!'
    require totalSupply >= arg2
    totalSupply -= arg2
    require balances[address(arg1)] >= arg2
    balances[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    emit Burn(arg2, arg1);
}

function issue(address arg1, uint256 arg2) {
    if owner != msg.sender:
        revert with 0, 'Not an owner of the contract'
    if not uint8(stor11.field_0):
        revert with 0, 'token issuing is not allowed!'
    require arg2 + totalSupply >= totalSupply
    if arg2 + totalSupply > maxSupply:
        revert with 0, 'exceeds maximum supply'
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balances[address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Issue(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
}

function sub_78f75e48(?) {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if stor9:
        revert with 0, 32, 7, 0xef70617573656421000000000000000000000000000000000000000000000000
    mem[0] = msg.sender
    mem[32] = 10
    if stor10[address(msg.sender)]:
        revert with 0, 'account is locked!'
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not Mask(1, 255, mem[idx + 128]) >> 7:
            idx = idx + 1
            s = s + 1
            continue 
        require idx < arg1.length
        if Mask(3, 253, mem[idx + 128]) >> 5 == 0x600000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 2
            s = s + 1
            continue 
        require idx < arg1.length
        if Mask(4, 252, mem[idx + 128]) >> 4 == 0xe00000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 3
            s = s + 1
            continue 
        require idx < arg1.length
        if Mask(5, 251, mem[idx + 128]) >> 3 != 0x1e00000000000000000000000000000000000000000000000000000000000000:
            idx = idx + 1
            s = s + 1
            continue 
        idx = idx + 4
        s = s + 1
        continue 
    if s != 12:
        revert with 0, 'eos account length should be 12 characters!'
    sub_287aec5a[msg.sender][] = Array(len=arg1.length, data=arg1[all])
}

function transfer(address arg1, uint256 arg2) {
    if stor9:
        revert with 0, 32, 7, 0xef70617573656421000000000000000000000000000000000000000000000000
    if stor10[address(msg.sender)]:
        revert with 0, 'account is locked!'
    if not arg1:
        revert with 0, 'invalid address!'
    if arg2 > balances[msg.sender]:
        revert with 0, 'account balance is not enough!'
    require balances[msg.sender] >= arg2
    balances[msg.sender] -= arg2
    require arg2 + balances[arg1] >= balances[arg1]
    balances[address(arg1)] = arg2 + balances[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if 0 == stakedTime:
        if sub_30e8321c:
            if stakedTime:
                if not sub_d6026bf5[address(msg.sender)].field_0:
                    sub_d6026bf5[address(msg.sender)].field_0 = block.timestamp
                    sub_d6026bf5[address(msg.sender)].field_256 = balances[address(msg.sender)]
                    emit StakeUpdated(msg.sender, balances[address(msg.sender)]);
                else:
                    if stakedTime != 0:
                        if not sub_30e8321c:
                            if balances[address(msg.sender)] < sub_d6026bf5[address(msg.sender)].field_256:
                                sub_d6026bf5[address(msg.sender)].field_0 = block.timestamp
                                sub_d6026bf5[address(msg.sender)].field_256 = balances[address(msg.sender)]
                                emit StakeUpdated(msg.sender, balances[address(msg.sender)]);
                if stakedTime:
                    if not sub_d6026bf5[address(arg1)].field_0:
                        sub_d6026bf5[address(arg1)].field_0 = block.timestamp
                        sub_d6026bf5[address(arg1)].field_256 = balances[address(arg1)]
                        emit StakeUpdated(address(arg1), balances[address(arg1)]);
                    else:
                        if stakedTime != 0:
                            if not sub_30e8321c:
                                if balances[address(arg1)] < sub_d6026bf5[address(arg1)].field_256:
                                    sub_d6026bf5[address(arg1)].field_0 = block.timestamp
                                    sub_d6026bf5[address(arg1)].field_256 = balances[address(arg1)]
                                    emit StakeUpdated(address(arg1), balances[address(arg1)]);
    else:
        if stakedTime:
            if not sub_d6026bf5[address(msg.sender)].field_0:
                sub_d6026bf5[address(msg.sender)].field_0 = block.timestamp
                sub_d6026bf5[address(msg.sender)].field_256 = balances[address(msg.sender)]
                emit StakeUpdated(msg.sender, balances[address(msg.sender)]);
            else:
                if stakedTime != 0:
                    if not sub_30e8321c:
                        if balances[address(msg.sender)] < sub_d6026bf5[address(msg.sender)].field_256:
                            sub_d6026bf5[address(msg.sender)].field_0 = block.timestamp
                            sub_d6026bf5[address(msg.sender)].field_256 = balances[address(msg.sender)]
                            emit StakeUpdated(msg.sender, balances[address(msg.sender)]);
            if stakedTime:
                if not sub_d6026bf5[address(arg1)].field_0:
                    sub_d6026bf5[address(arg1)].field_0 = block.timestamp
                    sub_d6026bf5[address(arg1)].field_256 = balances[address(arg1)]
                    emit StakeUpdated(address(arg1), balances[address(arg1)]);
                else:
                    if stakedTime != 0:
                        if not sub_30e8321c:
                            if balances[address(arg1)] < sub_d6026bf5[address(arg1)].field_256:
                                sub_d6026bf5[address(arg1)].field_0 = block.timestamp
                                sub_d6026bf5[address(arg1)].field_256 = balances[address(arg1)]
                                emit StakeUpdated(address(arg1), balances[address(arg1)]);
    if eventListenerAddress:
        require ext_code.size(eventListenerAddress)
        call eventListenerAddress.onTokenTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor9:
        revert with 0, 32, 7, 0xef70617573656421000000000000000000000000000000000000000000000000
    if stor10[address(arg1)]:
        revert with 0, 'account is locked!'
    if not arg2:
        revert with 0, 'invalid address!'
    if arg3 > balances[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'balance or allowed amount problem!'
    if arg3 > allowed[address(arg1)][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'balance or allowed amount problem!'
    require arg3 + balances[address(arg2)] >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require balances[arg1] >= arg3
    balances[address(arg1)] = balances[arg1] - arg3
    require allowed[address(arg1)][msg.sender] >= arg3
    allowed[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if 0 == stakedTime:
        if sub_30e8321c:
            if stakedTime:
                if not sub_d6026bf5[address(arg1)].field_0:
                    sub_d6026bf5[address(arg1)].field_0 = block.timestamp
                    sub_d6026bf5[address(arg1)].field_256 = balances[address(arg1)]
                    emit StakeUpdated(address(arg1), balances[address(arg1)]);
                else:
                    if stakedTime != 0:
                        if not sub_30e8321c:
                            if balances[address(arg1)] < sub_d6026bf5[address(arg1)].field_256:
                                sub_d6026bf5[address(arg1)].field_0 = block.timestamp
                                sub_d6026bf5[address(arg1)].field_256 = balances[address(arg1)]
                                emit StakeUpdated(address(arg1), balances[address(arg1)]);
                if stakedTime:
                    if not sub_d6026bf5[address(arg2)].field_0:
                        sub_d6026bf5[address(arg2)].field_0 = block.timestamp
                        sub_d6026bf5[address(arg2)].field_256 = balances[address(arg2)]
                        emit StakeUpdated(address(arg2), balances[address(arg2)]);
                    else:
                        if stakedTime != 0:
                            if not sub_30e8321c:
                                if balances[address(arg2)] < sub_d6026bf5[address(arg2)].field_256:
                                    sub_d6026bf5[address(arg2)].field_0 = block.timestamp
                                    sub_d6026bf5[address(arg2)].field_256 = balances[address(arg2)]
                                    emit StakeUpdated(address(arg2), balances[address(arg2)]);
    else:
        if stakedTime:
            if not sub_d6026bf5[address(arg1)].field_0:
                sub_d6026bf5[address(arg1)].field_0 = block.timestamp
                sub_d6026bf5[address(arg1)].field_256 = balances[address(arg1)]
                emit StakeUpdated(address(arg1), balances[address(arg1)]);
            else:
                if stakedTime != 0:
                    if not sub_30e8321c:
                        if balances[address(arg1)] < sub_d6026bf5[address(arg1)].field_256:
                            sub_d6026bf5[address(arg1)].field_0 = block.timestamp
                            sub_d6026bf5[address(arg1)].field_256 = balances[address(arg1)]
                            emit StakeUpdated(address(arg1), balances[address(arg1)]);
            if stakedTime:
                if not sub_d6026bf5[address(arg2)].field_0:
                    sub_d6026bf5[address(arg2)].field_0 = block.timestamp
                    sub_d6026bf5[address(arg2)].field_256 = balances[address(arg2)]
                    emit StakeUpdated(address(arg2), balances[address(arg2)]);
                else:
                    if stakedTime != 0:
                        if not sub_30e8321c:
                            if balances[address(arg2)] < sub_d6026bf5[address(arg2)].field_256:
                                sub_d6026bf5[address(arg2)].field_0 = block.timestamp
                                sub_d6026bf5[address(arg2)].field_256 = balances[address(arg2)]
                                emit StakeUpdated(address(arg2), balances[address(arg2)]);
    if eventListenerAddress:
        require ext_code.size(eventListenerAddress)
        call eventListenerAddress.onTokenTransfer(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}

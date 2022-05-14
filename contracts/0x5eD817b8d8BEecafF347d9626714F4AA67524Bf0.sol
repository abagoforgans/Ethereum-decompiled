contract main {




// =====================  Runtime code  =====================


const name = 'WiredToken'

const decimals = 5

const symbol = 'WRD'


address owner;
uint256 totalSupply;
uint256 distributeAmount;
uint8 stor4;
address founderAddress; offset 8
address preSeasonGameAddress;
address activityFundsAddress;
address lockedFundsForthefutureAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 unlockUnixTime;

function mintingFinished() {
    return bool(stor4)
}

function totalSupply() {
    return totalSupply
}

function founder() {
    return founderAddress
}

function distributeAmount() {
    return distributeAmount
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function activityFunds() {
    return activityFundsAddress
}

function owner() {
    return owner
}

function preSeasonGame() {
    return preSeasonGameAddress
}

function lockedFundsForthefuture() {
    return lockedFundsForthefutureAddress
}

function unlockUnixTime(address arg1) {
    return unlockUnixTime[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function finishMinting() {
    require msg.sender == owner
    require not stor4
    stor4 = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, arg1);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor4
    require arg2 > 0
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 > 0
    require block.timestamp > unlockUnixTime[msg.sender]
    require block.timestamp > unlockUnixTime[address(arg1)]
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require block.timestamp > unlockUnixTime[address(arg1)]
    require block.timestamp > unlockUnixTime[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function lockupAccounts(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
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
        mem[32] = 10
        unlockUnixTime[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _35 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit LockedFunds(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_35));
        idx = idx + 1
        continue 
}

function distributeAirdrop(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    require arg1.length == arg2.length
    require block.timestamp > unlockUnixTime[msg.sender]
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] > 0
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20] != 0
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
        require idx < arg2.length
        if not mem[(32 * arg1.length) + (32 * idx) + 160]:
            if idx < arg2.length:
                mem[(32 * arg1.length) + (32 * idx) + 160] = 0
                if idx < arg2.length:
                    if s >= s:
                        idx = idx + 1
                        s = s
                        continue 
        else:
            if 100 * 10^6 * mem[(32 * arg1.length) + (32 * idx) + 160] / mem[(32 * arg1.length) + (32 * idx) + 160] == 100 * 10^6:
                if idx < arg2.length:
                    mem[(32 * arg1.length) + (32 * idx) + 160] = 100 * 10^6 * mem[(32 * arg1.length) + (32 * idx) + 160]
                    if idx < arg2.length:
                        if mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s:
                            idx = idx + 1
                            s = mem[(32 * arg1.length) + (32 * idx) + 160] + s
                            continue 
        revert
    require s <= balanceOf[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 8
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        _97 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], msg.sender, address(_97));
        idx = idx + 1
        continue 
    require s <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= s
    return 1
}

function distributeAirdrop(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 > 0
    require arg1.length > 0
    require block.timestamp > unlockUnixTime[msg.sender]
    if not arg2:
        require 0 <= balanceOf[msg.sender]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20] != 0
            require idx < arg1.length
            require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            require balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[32] = 8
            require idx < arg1.length
            _136 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = 0
            emit Transfer(0, msg.sender, address(_136));
            idx = idx + 1
            continue 
        if 0 <= balanceOf[msg.sender]:
            return 1
        revert
    require 100 * 10^6 * arg2 / arg2 == 100 * 10^6
    if not 100 * 10^6 * arg2:
        require 0 <= balanceOf[msg.sender]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require mem[(32 * idx) + 140 len 20] != 0
            require idx < arg1.length
            require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            require (100 * 10^6 * arg2) + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[32] = 8
            balanceOf[mem[(32 * idx) + 140 len 20]] += 100 * 10^6 * arg2
            require idx < arg1.length
            _131 = mem[(32 * idx) + 128]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + 128] = 100 * 10^6 * arg2
            emit Transfer((100 * 10^6 * arg2), msg.sender, address(_131));
            idx = idx + 1
            continue 
        if 0 <= balanceOf[msg.sender]:
            return 1
        revert
    require 100 * 10^6 * arg1.length * arg2 / 100 * 10^6 * arg2 == arg1.length
    require 100 * 10^6 * arg1.length * arg2 <= balanceOf[msg.sender]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require mem[(32 * idx) + 140 len 20] != 0
        require idx < arg1.length
        require block.timestamp > unlockUnixTime[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        require (100 * 10^6 * arg2) + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 8
        balanceOf[mem[(32 * idx) + 140 len 20]] += 100 * 10^6 * arg2
        require idx < arg1.length
        _126 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 128] = 100 * 10^6 * arg2
        emit Transfer((100 * 10^6 * arg2), msg.sender, address(_126));
        idx = idx + 1
        continue 
    require 100 * 10^6 * arg1.length * arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] += -100 * 10^6 * arg1.length * arg2
    return 1
}



}

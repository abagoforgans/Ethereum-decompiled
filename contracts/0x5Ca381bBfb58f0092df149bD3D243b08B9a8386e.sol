contract main {




// =====================  Runtime code  =====================


const name = 'MXCToken'

const decimals = 18

const symbol = 'MXC'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
mapping of struct vestBalanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function vestBalanceOf(address arg1) {
    require arg1
    return vestBalanceOf[address(arg1)].field_0, 
           vestBalanceOf[address(arg1)].field_256,
           vestBalanceOf[address(arg1)].field_768,
           vestBalanceOf[address(arg1)].field_1024,
           vestBalanceOf[address(arg1)].field_1280
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
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
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function returnGrantedToken(uint256 arg1) {
    require vestBalanceOf[msg.sender].field_1536
    if arg1 <= 0:
        revert with 0, 'Nothing to transfer.'
    if vestBalanceOf[msg.sender].field_0 <= 0:
        revert with 0, 'Nothing to return.'
    require vestBalanceOf[msg.sender].field_256 <= vestBalanceOf[msg.sender].field_0
    if arg1 > vestBalanceOf[msg.sender].field_0 - vestBalanceOf[msg.sender].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough granted token to return.'
    require arg1 <= vestBalanceOf[msg.sender].field_0
    vestBalanceOf[msg.sender].field_0 -= arg1
    require arg1 + balanceOf[stor3[msg.sender].field_1536] >= balanceOf[stor3[msg.sender].field_1536]
    balanceOf[stor3[msg.sender].field_1536] += arg1
    emit GrantedTokenReturned(arg1, msg.sender, vestBalanceOf[msg.sender].field_1536);
    return 1
}

function grantToken(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require arg1
    if arg2 > balanceOf[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough balance to grant token.'
    if arg2 <= 0:
        revert with 0, 'Nothing to transfer.'
    require vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0
    if vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The previous vesting should be completed.'
    if arg4 < arg3:
        revert with 0, '_cliff must be >= _start'
    if arg5 <= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_vesting must be bigger than _start'
    if arg5 <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_vesting must be bigger than _cliff'
    require arg2 <= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
    vestBalanceOf[address(arg1)].field_0 = arg2
    vestBalanceOf[address(arg1)].field_256 = 0
    vestBalanceOf[address(arg1)].field_512 = 0
    vestBalanceOf[address(arg1)].field_768 = 0
    vestBalanceOf[address(arg1)].field_768 = arg3
    vestBalanceOf[address(arg1)].field_1024 = arg4
    vestBalanceOf[address(arg1)].field_1280 = arg5
    vestBalanceOf[address(arg1)].field_1536 = msg.sender
    emit NewTokenGrant(arg2, arg3, arg4, arg5, msg.sender, arg1);
    return 1
}

function grantTokenStartNow(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if not arg3:
        require block.timestamp >= block.timestamp
        if not arg4:
            require block.timestamp >= block.timestamp
            require arg1
            if arg2 > balanceOf[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough balance to grant token.'
            if arg2 <= 0:
                revert with 0, 'Nothing to transfer.'
            require vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0
            if vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The previous vesting should be completed.'
            if block.timestamp < block.timestamp:
                revert with 0, '_cliff must be >= _start'
            if block.timestamp <= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_vesting must be bigger than _start'
            require arg2 <= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
            vestBalanceOf[address(arg1)].field_0 = arg2
            vestBalanceOf[address(arg1)].field_256 = 0
            vestBalanceOf[address(arg1)].field_512 = 0
            vestBalanceOf[address(arg1)].field_768 = 0
            vestBalanceOf[address(arg1)].field_768 = block.timestamp
            vestBalanceOf[address(arg1)].field_1024 = block.timestamp
            vestBalanceOf[address(arg1)].field_1280 = block.timestamp
            vestBalanceOf[address(arg1)].field_1536 = msg.sender
            emit NewTokenGrant(arg2, block.timestamp, block.timestamp, block.timestamp, msg.sender, arg1);
        else:
            require 720 * 24 * 3600 * arg4 / arg4 == 720 * 24 * 3600
            require (720 * 24 * 3600 * arg4) + block.timestamp >= block.timestamp
            require arg1
            if arg2 > balanceOf[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough balance to grant token.'
            if arg2 <= 0:
                revert with 0, 'Nothing to transfer.'
            require vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0
            if vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The previous vesting should be completed.'
            if block.timestamp < block.timestamp:
                revert with 0, '_cliff must be >= _start'
            if (720 * 24 * 3600 * arg4) + block.timestamp <= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_vesting must be bigger than _start'
            require arg2 <= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
            vestBalanceOf[address(arg1)].field_0 = arg2
            vestBalanceOf[address(arg1)].field_256 = 0
            vestBalanceOf[address(arg1)].field_512 = 0
            vestBalanceOf[address(arg1)].field_768 = 0
            vestBalanceOf[address(arg1)].field_768 = block.timestamp
            vestBalanceOf[address(arg1)].field_1024 = block.timestamp
            vestBalanceOf[address(arg1)].field_1280 = (720 * 24 * 3600 * arg4) + block.timestamp
            vestBalanceOf[address(arg1)].field_1536 = msg.sender
            emit NewTokenGrant(arg2, block.timestamp, block.timestamp, (720 * 24 * 3600 * arg4) + block.timestamp, msg.sender, arg1);
    else:
        require 720 * 24 * 3600 * arg3 / arg3 == 720 * 24 * 3600
        require (720 * 24 * 3600 * arg3) + block.timestamp >= block.timestamp
        if not arg4:
            require block.timestamp >= block.timestamp
            require arg1
            if arg2 > balanceOf[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough balance to grant token.'
            if arg2 <= 0:
                revert with 0, 'Nothing to transfer.'
            require vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0
            if vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The previous vesting should be completed.'
            if (720 * 24 * 3600 * arg3) + block.timestamp < block.timestamp:
                revert with 0, '_cliff must be >= _start'
            if block.timestamp <= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_vesting must be bigger than _start'
            if block.timestamp <= (720 * 24 * 3600 * arg3) + block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_vesting must be bigger than _cliff'
            require arg2 <= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
            vestBalanceOf[address(arg1)].field_0 = arg2
            vestBalanceOf[address(arg1)].field_256 = 0
            vestBalanceOf[address(arg1)].field_512 = 0
            vestBalanceOf[address(arg1)].field_768 = 0
            vestBalanceOf[address(arg1)].field_768 = block.timestamp
            vestBalanceOf[address(arg1)].field_1024 = (720 * 24 * 3600 * arg3) + block.timestamp
            vestBalanceOf[address(arg1)].field_1280 = block.timestamp
            vestBalanceOf[address(arg1)].field_1536 = msg.sender
            emit NewTokenGrant(arg2, block.timestamp, (720 * 24 * 3600 * arg3) + block.timestamp, block.timestamp, msg.sender, arg1);
        else:
            require 720 * 24 * 3600 * arg4 / arg4 == 720 * 24 * 3600
            require (720 * 24 * 3600 * arg4) + block.timestamp >= block.timestamp
            require arg1
            if arg2 > balanceOf[msg.sender]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Not enough balance to grant token.'
            if arg2 <= 0:
                revert with 0, 'Nothing to transfer.'
            require vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0
            if vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The previous vesting should be completed.'
            if (720 * 24 * 3600 * arg3) + block.timestamp < block.timestamp:
                revert with 0, '_cliff must be >= _start'
            if (720 * 24 * 3600 * arg4) + block.timestamp <= block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_vesting must be bigger than _start'
            if 720 * 24 * 3600 * arg4 <= 720 * 24 * 3600 * arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_vesting must be bigger than _cliff'
            require arg2 <= balanceOf[msg.sender]
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] - arg2
            vestBalanceOf[address(arg1)].field_0 = arg2
            vestBalanceOf[address(arg1)].field_256 = 0
            vestBalanceOf[address(arg1)].field_512 = 0
            vestBalanceOf[address(arg1)].field_768 = 0
            vestBalanceOf[address(arg1)].field_768 = block.timestamp
            vestBalanceOf[address(arg1)].field_1024 = (720 * 24 * 3600 * arg3) + block.timestamp
            vestBalanceOf[address(arg1)].field_1280 = (720 * 24 * 3600 * arg4) + block.timestamp
            vestBalanceOf[address(arg1)].field_1536 = msg.sender
            emit NewTokenGrant(arg2, block.timestamp, (720 * 24 * 3600 * arg3) + block.timestamp, (720 * 24 * 3600 * arg4) + block.timestamp, msg.sender, arg1);
    return 1
}

function redeemVestableToken(address arg1) {
    require arg1
    if vestBalanceOf[address(arg1)].field_0 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Nothing was granted to this address!'
    if vestBalanceOf[address(arg1)].field_256 >= vestBalanceOf[address(arg1)].field_0:
        revert with 0, 'All tokens were vested!'
    if 0 >= vestBalanceOf[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Nothing was granted to this address.'
    if block.timestamp <= vestBalanceOf[address(arg1)].field_1024:
        revert with 0, 'Nothing to redeem now.'
    require vestBalanceOf[address(arg1)].field_768 <= block.timestamp
    require vestBalanceOf[address(arg1)].field_512 <= block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600
    if block.timestamp >= vestBalanceOf[address(arg1)].field_1280:
        require vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0
        if vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 <= 0:
            revert with 0, 'Nothing to redeem now.'
        require vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 + balanceOf[address(arg1)]
        require vestBalanceOf[address(arg1)].field_0 >= vestBalanceOf[address(arg1)].field_256
        vestBalanceOf[address(arg1)].field_256 = vestBalanceOf[address(arg1)].field_0
        vestBalanceOf[address(arg1)].field_512 = uint16(block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600)
        vestBalanceOf[address(arg1)].field_1024 = block.timestamp
        emit VestedTokenRedeemed(vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256, (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - vestBalanceOf[address(arg1)].field_512, arg1);
    else:
        if (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - vestBalanceOf[address(arg1)].field_512 <= 0:
            revert with 0, 'Nothing to redeem now.'
        require vestBalanceOf[address(arg1)].field_768 <= vestBalanceOf[address(arg1)].field_1280
        require vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600
        if not (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - vestBalanceOf[address(arg1)].field_512:
            require vestBalanceOf[address(arg1)].field_256 >= vestBalanceOf[address(arg1)].field_256
            if vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0:
                revert with 0, 'Nothing to redeem now.'
            require vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0
            if vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 <= 0:
                revert with 0, 'Nothing to redeem now.'
            require vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 + balanceOf[address(arg1)]
            require vestBalanceOf[address(arg1)].field_0 >= vestBalanceOf[address(arg1)].field_256
            vestBalanceOf[address(arg1)].field_256 = vestBalanceOf[address(arg1)].field_0
            vestBalanceOf[address(arg1)].field_512 = uint16(block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600)
            vestBalanceOf[address(arg1)].field_1024 = block.timestamp
            emit VestedTokenRedeemed(vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256, (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - vestBalanceOf[address(arg1)].field_512, arg1);
        else:
            require (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) / (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - vestBalanceOf[address(arg1)].field_512 == vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600
            require (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) + vestBalanceOf[address(arg1)].field_256 >= vestBalanceOf[address(arg1)].field_256
            if (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) + vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0:
                if (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) <= 0:
                    revert with 0, 'Nothing to redeem now.'
                require (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) + balanceOf[address(arg1)]
                require (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) + vestBalanceOf[address(arg1)].field_256 >= vestBalanceOf[address(arg1)].field_256
                vestBalanceOf[address(arg1)].field_256 = (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) + vestBalanceOf[address(arg1)].field_256
                vestBalanceOf[address(arg1)].field_512 = uint16(block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600)
                vestBalanceOf[address(arg1)].field_1024 = block.timestamp
                emit VestedTokenRedeemed((block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - (vestBalanceOf[address(arg1)].field_512 * vestBalanceOf[address(arg1)].field_0 / vestBalanceOf[address(arg1)].field_1280 - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600), (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - vestBalanceOf[address(arg1)].field_512, arg1);
            else:
                require vestBalanceOf[address(arg1)].field_256 <= vestBalanceOf[address(arg1)].field_0
                if vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 <= 0:
                    revert with 0, 'Nothing to redeem now.'
                require vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256 + balanceOf[address(arg1)]
                require vestBalanceOf[address(arg1)].field_0 >= vestBalanceOf[address(arg1)].field_256
                vestBalanceOf[address(arg1)].field_256 = vestBalanceOf[address(arg1)].field_0
                vestBalanceOf[address(arg1)].field_512 = uint16(block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600)
                vestBalanceOf[address(arg1)].field_1024 = block.timestamp
                emit VestedTokenRedeemed(vestBalanceOf[address(arg1)].field_0 - vestBalanceOf[address(arg1)].field_256, (block.timestamp - vestBalanceOf[address(arg1)].field_768 / 720 * 24 * 3600) - vestBalanceOf[address(arg1)].field_512, arg1);
    return 1
}



}

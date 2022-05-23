contract main {




// =====================  Runtime code  =====================


const initialTokens = 10^14


address owner;
address tokenAddress;
address beneficiaryAddress;
uint256 cliff;
uint256 start;
uint256 duration;
uint8 stor6; offset 160
address rollbackAddress;
uint256 currentBalance;
uint8 stor8;
mapping of uint256 released;
mapping of uint8 stor10;
uint256 totalBalance;

function duration() {
    return duration
}

function cliff() {
    return cliff
}

function initialized() {
    return bool(stor8)
}

function beneficiary() {
    return beneficiaryAddress
}

function revocable() {
    return bool(stor6)
}

function owner() {
    return owner
}

function released(address arg1) {
    return released[arg1]
}

function rollback() {
    return rollbackAddress
}

function totalBalance() {
    return totalBalance
}

function start() {
    return start
}

function currentBalance() {
    return currentBalance
}

function revoked(address arg1) {
    return bool(stor10[arg1])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokensAvailable() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function initialize() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == 10^14
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentBalance = ext_call.return_data[0]
    require released[stor1] + ext_call.return_data[0] >= ext_call.return_data[0]
    totalBalance = released[stor1] + ext_call.return_data[0]
    stor8 = 1
}

function vestedAmount() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentBalance = ext_call.return_data[0]
    require released[stor1] + ext_call.return_data[0] >= ext_call.return_data[0]
    totalBalance = released[stor1] + ext_call.return_data[0]
    if block.timestamp < cliff:
        return 0
    require duration + start >= start
    if block.timestamp >= duration + start:
        return totalBalance
    if stor10[stor1]:
        return totalBalance
    require start <= block.timestamp
    if not totalBalance:
        if duration:
            return (0 / duration)
    else:
        if (block.timestamp * totalBalance) - (start * totalBalance) / totalBalance == block.timestamp - start:
            if duration:
                return ((block.timestamp * totalBalance) - (start * totalBalance) / duration)
    revert
}

function releasableAmount() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentBalance = ext_call.return_data[0]
    require released[stor1] + ext_call.return_data[0] >= ext_call.return_data[0]
    totalBalance = released[stor1] + ext_call.return_data[0]
    if block.timestamp < cliff:
        if released[stor1] <= 0:
            return -released[stor1]
    else:
        if duration + start >= start:
            if block.timestamp >= duration + start:
                if released[stor1] <= totalBalance:
                    return (totalBalance - released[stor1])
            else:
                if stor10[stor1]:
                    if released[stor1] <= totalBalance:
                        return (totalBalance - released[stor1])
                else:
                    if start <= block.timestamp:
                        if not totalBalance:
                            if duration:
                                if released[stor1] <= 0 / duration:
                                    return ((0 / duration) - released[stor1])
                        else:
                            if (block.timestamp * totalBalance) - (start * totalBalance) / totalBalance == block.timestamp - start:
                                if duration:
                                    if released[stor1] <= (block.timestamp * totalBalance) - (start * totalBalance) / duration:
                                        return (((block.timestamp * totalBalance) - (start * totalBalance) / duration) - released[stor1])
    revert
}

function revoke() {
    require msg.sender == owner
    require stor6
    require not stor10[stor1]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentBalance = ext_call.return_data[0]
    require released[stor1] + ext_call.return_data[0] >= ext_call.return_data[0]
    totalBalance = released[stor1] + ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[stor1] <= 0
        require -released[stor1] <= ext_call.return_data[0]
        stor10[stor1] = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args rollbackAddress, ext_call.return_data[0] + released[stor1]
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released[stor1] <= totalBalance
            require totalBalance - released[stor1] <= ext_call.return_data[0]
            stor10[stor1] = 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args rollbackAddress, ext_call.return_data[0] - totalBalance + released[stor1]
        else:
            if stor10[stor1]:
                require released[stor1] <= totalBalance
                require totalBalance - released[stor1] <= ext_call.return_data[0]
                stor10[stor1] = 1
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args rollbackAddress, ext_call.return_data[0] - totalBalance + released[stor1]
            else:
                require start <= block.timestamp
                if not totalBalance:
                    require duration
                    require released[stor1] <= 0 / duration
                    require (0 / duration) - released[stor1] <= ext_call.return_data[0]
                    stor10[stor1] = 1
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args rollbackAddress, ext_call.return_data[0] - (0 / duration) + released[stor1]
                else:
                    require (block.timestamp * totalBalance) - (start * totalBalance) / totalBalance == block.timestamp - start
                    require duration
                    require released[stor1] <= (block.timestamp * totalBalance) - (start * totalBalance) / duration
                    require ((block.timestamp * totalBalance) - (start * totalBalance) / duration) - released[stor1] <= ext_call.return_data[0]
                    stor10[stor1] = 1
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args rollbackAddress, ext_call.return_data[0] - ((block.timestamp * totalBalance) - (start * totalBalance) / duration) + released[stor1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Revoked()
}

function release() {
    require stor8
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentBalance = ext_call.return_data[0]
    require released[stor1] + ext_call.return_data[0] >= ext_call.return_data[0]
    totalBalance = released[stor1] + ext_call.return_data[0]
    if block.timestamp < cliff:
        require released[stor1] <= 0
        require -released[stor1] > 0
        require 0 >= released[stor1]
        released[stor1] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args beneficiaryAddress, -released[stor1]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit Released(-released[stor1]);
    else:
        require duration + start >= start
        if block.timestamp >= duration + start:
            require released[stor1] <= totalBalance
            require totalBalance - released[stor1] > 0
            require totalBalance >= released[stor1]
            released[stor1] = totalBalance
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args beneficiaryAddress, totalBalance - released[stor1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit Released((totalBalance - released[stor1]));
        else:
            if stor10[stor1]:
                require released[stor1] <= totalBalance
                require totalBalance - released[stor1] > 0
                require totalBalance >= released[stor1]
                released[stor1] = totalBalance
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args beneficiaryAddress, totalBalance - released[stor1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                emit Released((totalBalance - released[stor1]));
            else:
                require start <= block.timestamp
                if not totalBalance:
                    require duration
                    require released[stor1] <= 0 / duration
                    require (0 / duration) - released[stor1] > 0
                    require 0 / duration >= released[stor1]
                    released[stor1] = 0 / duration
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, (0 / duration) - released[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Released(((0 / duration) - released[stor1]));
                else:
                    require (block.timestamp * totalBalance) - (start * totalBalance) / totalBalance == block.timestamp - start
                    require duration
                    require released[stor1] <= (block.timestamp * totalBalance) - (start * totalBalance) / duration
                    require ((block.timestamp * totalBalance) - (start * totalBalance) / duration) - released[stor1] > 0
                    require (block.timestamp * totalBalance) - (start * totalBalance) / duration >= released[stor1]
                    released[stor1] = (block.timestamp * totalBalance) - (start * totalBalance) / duration
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args beneficiaryAddress, ((block.timestamp * totalBalance) - (start * totalBalance) / duration) - released[stor1]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    emit Released((((block.timestamp * totalBalance) - (start * totalBalance) / duration) - released[stor1]));
}



}

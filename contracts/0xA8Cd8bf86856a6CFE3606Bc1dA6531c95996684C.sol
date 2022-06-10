contract main {




// =====================  Runtime code  =====================


const name = 'TVault'


address owner;
address tokenHolderAddress;
address tokenContractAddress;
uint256 totalAllocated;
uint256 totalClaimed;
mapping of uint256 balance;
mapping of uint256 sub_737be6fc;
mapping of uint256 sub_5e7a019a;
mapping of uint8 stor8;
address tokenAddress;

function tokenHolder() {
    return tokenHolderAddress
}

function totalAllocated() {
    return totalAllocated
}

function tokenContract() {
    return tokenContractAddress
}

function sub_5e7a019a(?) {
    return sub_5e7a019a[arg1]
}

function sub_737be6fc(?) {
    return sub_737be6fc[arg1]
}

function owner() {
    return owner
}

function tokenAddress() {
    return tokenAddress
}

function claimed(address arg1) {
    return bool(stor8[arg1])
}

function totalClaimed() {
    return totalClaimed
}

function balance(address arg1) {
    return balance[arg1]
}

function _fallback() payable {
    revert
}

function sub_fc36b8a9(?) {
    require sub_5e7a019a[address(arg1)]
    require block.timestamp < sub_5e7a019a[address(arg1)]
    return (sub_5e7a019a[address(arg1)] - block.timestamp)
}

function distribute(address arg1) {
    require msg.sender == owner
    require balance[address(arg1)] > 0
    require not stor8[address(arg1)]
    require sub_5e7a019a[address(arg1)]
    sub_5e7a019a[address(arg1)] = block.timestamp - 1
}

function getState(address arg1) {
    if not sub_5e7a019a[address(arg1)]:
        return 'Loading'
    if 1 == bool(stor8[address(arg1)]):
        return 'Distributed'
    if block.timestamp >= sub_5e7a019a[address(arg1)]:
        return 'Distributing'
    return 'Holding'
}

function cancel(address arg1) {
    require msg.sender == owner
    require balance[address(arg1)] > 0
    require not stor8[address(arg1)]
    require balance[address(arg1)] <= totalAllocated
    totalAllocated -= balance[address(arg1)]
    balance[address(arg1)] = 0
    sub_737be6fc[address(arg1)] = 0
    sub_5e7a019a[address(arg1)] = 0
}

function claim() {
    require 0 < balance[msg.sender]
    require not stor8[address(msg.sender)]
    require sub_5e7a019a[address(msg.sender)]
    require block.timestamp >= sub_5e7a019a[address(msg.sender)]
    stor8[address(msg.sender)] = 1
    require balance[address(msg.sender)] <= totalAllocated
    totalAllocated -= balance[address(msg.sender)]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balance[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function withdrawToken() {
    require msg.sender == owner
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args tokenHolderAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalAllocated <= ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0] - totalAllocated
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function allocateToken(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require not balance[address(arg1)]
    require arg3 > 0
    require arg3 < 7 * 10^9
    require arg2 > 0
    if not arg3:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args tokenHolderAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require totalAllocated <= ext_call.return_data[0]
        require 0 <= ext_call.return_data[0] - totalAllocated
        require totalAllocated >= totalAllocated
        balance[address(arg1)] = 0
    else:
        require 10^18 * arg3 / arg3 == 10^18
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x70a08231 with:
             gas gas_remaining wei
            args tokenHolderAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require totalAllocated <= ext_call.return_data[0]
        require 10^18 * arg3 <= ext_call.return_data[0] - totalAllocated
        require (10^18 * arg3) + totalAllocated >= totalAllocated
        totalAllocated += 10^18 * arg3
        balance[address(arg1)] = 10^18 * arg3
    sub_737be6fc[address(arg1)] = arg2
    if not arg2:
        require block.timestamp >= 0
        sub_5e7a019a[address(arg1)] = block.timestamp
    else:
        require 24 * 3600 * arg2 / arg2 == 24 * 3600
        require block.timestamp + (24 * 3600 * arg2) >= 24 * 3600 * arg2
        sub_5e7a019a[address(arg1)] = block.timestamp + (24 * 3600 * arg2)
    stor8[address(arg1)] = 0
}

function sub_dca811f7(?) {
    require sub_5e7a019a[address(arg1)]
    require block.timestamp < sub_5e7a019a[address(arg1)]
    if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
        if not sub_5e7a019a[address(arg1)] - block.timestamp / 3600:
            if not sub_5e7a019a[address(arg1)] - block.timestamp / 60:
                if not sub_5e7a019a[address(arg1)] - block.timestamp / 3600:
                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                        return (sub_5e7a019a[address(arg1)] - block.timestamp)
                    if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                        return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + sub_5e7a019a[address(arg1)] - block.timestamp)
                else:
                    if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 3600 == 10^6:
                        if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                            return ((10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp)
                        if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                            return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp)
            else:
                if 60 * sub_5e7a019a[address(arg1)] - block.timestamp / 60 / sub_5e7a019a[address(arg1)] - block.timestamp / 60 == 60:
                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 60:
                        if not sub_5e7a019a[address(arg1)] - block.timestamp / 3600:
                            if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                return (sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp / 60))
                            if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp / 60))
                        else:
                            if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 3600 == 10^6:
                                if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                    return ((10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp / 60))
                                if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                    return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp / 60))
                    else:
                        if 1000 * sub_5e7a019a[address(arg1)] - block.timestamp / 60 / sub_5e7a019a[address(arg1)] - block.timestamp / 60 == 1000:
                            if not sub_5e7a019a[address(arg1)] - block.timestamp / 3600:
                                if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                    return ((940 * sub_5e7a019a[address(arg1)] - block.timestamp / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
                                if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                    return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
                            else:
                                if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 3600 == 10^6:
                                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                        return ((10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
                                    if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                        return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
        else:
            if 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 3600 == 3600:
                if not sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60:
                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 3600:
                        if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                            return (sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600))
                        if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                            return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600))
                    else:
                        if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 3600 == 10^6:
                            if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                return ((996400 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp)
                            if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (996400 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp)
                else:
                    if 60 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60 / sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60 == 60:
                        if not sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60:
                            if not sub_5e7a019a[address(arg1)] - block.timestamp / 3600:
                                if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                    return (sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60))
                                if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                    return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60))
                            else:
                                if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 3600 == 10^6:
                                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                        return ((996400 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60))
                                    if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                        return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (996400 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60))
                        else:
                            if 1000 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60 / sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60 == 1000:
                                if not sub_5e7a019a[address(arg1)] - block.timestamp / 3600:
                                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                        return ((940 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600))
                                    if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                        return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600))
                                else:
                                    if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 3600 == 10^6:
                                        if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                            return ((996400 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
                                        if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                            return ((10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (996400 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
    else:
        if 24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 24 * 3600:
            if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600:
                if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60:
                    if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600:
                        if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                            return (sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600))
                        if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                            return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + sub_5e7a019a[address(arg1)] - block.timestamp)
                    else:
                        if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 == 10^6:
                            if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                return ((10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600))
                            if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp)
                else:
                    if 60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60 == 60:
                        if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60:
                            if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600:
                                if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                    return (sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60))
                                if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                    return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60))
                            else:
                                if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 == 10^6:
                                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                        return ((10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60))
                                    if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                        return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60))
                        else:
                            if 1000 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60 == 1000:
                                if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600:
                                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                        return ((940 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600))
                                    if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                        return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
                                else:
                                    if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 == 10^6:
                                        if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                            return ((10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600))
                                        if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                            return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
            else:
                if 3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 == 3600:
                    if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60:
                        if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600:
                            if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                return (sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600))
                            if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600))
                        else:
                            if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 == 10^6:
                                if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                    return ((996400 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600))
                                if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                    return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (996400 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp)
                    else:
                        if 60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60 == 60:
                            if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60:
                                if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600:
                                    if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                        return (sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60))
                                    if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                        return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60))
                                else:
                                    if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 == 10^6:
                                        if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                            return ((996400 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60))
                                        if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                            return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (996400 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + sub_5e7a019a[address(arg1)] - block.timestamp - (60 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60))
                            else:
                                if 1000 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60 == 1000:
                                    if not sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600:
                                        if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                            return ((940 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600))
                                        if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                            return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600))
                                    else:
                                        if 10^6 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 / sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600 == 10^6:
                                            if not sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600:
                                                return ((996400 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600))
                                            if 10^9 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 / sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600 == 10^9:
                                                return ((999913600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) + (996400 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) + (940 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) - (3600 * sub_5e7a019a[address(arg1)] - block.timestamp - (24 * 3600 * sub_5e7a019a[address(arg1)] - block.timestamp / 24 * 3600) / 3600) / 60) + sub_5e7a019a[address(arg1)] - block.timestamp)
    revert
}



}

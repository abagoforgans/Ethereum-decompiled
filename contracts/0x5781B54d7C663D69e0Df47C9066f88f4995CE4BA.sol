contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor14;
address stor15;

function _fallback() payable {
    stor4 = 1512970200
    stor5 = stor4 + (360 * 24 * 3600)
    stor6 = stor5 + 3819900
    stor7 = stor4 + (1176 * 24 * 3600)
    stor8 = stor7 + (168 * 24 * 3600)
    stor9 = stor7 + (336 * 24 * 3600)
    stor10 = stor7 + (504 * 24 * 3600)
    stor11 = stor6 + (816 * 24 * 3600)
    require not msg.value
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[11570 len 5326]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = msg.sender
    stor14 = 0
    create contract with 0 wei
                    code: code.data[10743 len 827]
    stor15 = address(create.new_address)
    return code.data[533 len 10210]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor11;
mapping of uint8 stor12;
array of address holders;
uint256 investors;
address profitSharingContractAddress;

function holders(uint256 arg1) {
    require arg1 < holders.length
    return address(holders[arg1])
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function investors() {
    return investors
}

function owner() {
    return owner
}

function profitSharingContract() {
    return profitSharingContractAddress
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setNewWallet(address arg1) {
    require msg.sender == owner
    require arg1
    walletAddress = arg1
}

function hasEnded() {
    if block.timestamp < stor4:
        return (block.timestamp < stor4)
    if block.timestamp > stor6:
        if block.timestamp < stor7:
            return (block.timestamp < stor7)
    return (block.timestamp > stor11)
}

function destroyMyToken(uint256 arg1) {
    require msg.sender == owner
    if not arg1:
        require ext_code.size(tokenAddress)
        call tokenAddress.destroy(uint256 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args 0, msg.sender
    else:
        require arg1
        require 10^18 * arg1 / arg1 == 10^18
        require ext_code.size(tokenAddress)
        call tokenAddress.destroy(uint256 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args 10^18 * arg1, msg.sender
    require ext_call.success
}

function profitSharing() payable {
    idx = 0
    s = 0
    while idx < holders.length:
        mem[0] = 13
        mem[128] = 0
        mem[100] = address(holders[idx])
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(holders[idx])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require idx < holders.length
            mem[0] = 13
            mem[128] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            if not ext_call.return_data[0]:
                call address(holders[idx]) with:
                   value 0 / ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_call.return_data[0] * msg.value / ext_call.return_data[0] == msg.value
                require ext_call.return_data[0]
                call address(holders[idx]) with:
                   value ext_call.return_data[0] * msg.value / ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
            require ext_call.success
        idx = idx + 1
        s = ext_call.return_data[0]
        continue 
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value
    require block.timestamp >= stor4
    if block.timestamp > stor6:
        require block.timestamp >= stor7
    require block.timestamp <= stor11
    if block.timestamp < stor4:
        if block.timestamp < stor7:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            if not stor12[address(arg1)]:
                holders.length++
                if not holders.length <= holders.length + 1:
                    idx = holders.length + 1
                    while holders.length > idx:
                        uint256(holders[idx]) = 0
                        idx = idx + 1
                        continue 
                address(holders[holders.length]) = arg1
                stor12[address(arg1)] = 1
            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp >= stor11:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                if not stor12[address(arg1)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = arg1
                    stor12[address(arg1)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
            else:
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    if not stor12[address(arg1)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                else:
                    require msg.value
                    require 10000 * msg.value / msg.value == 10000
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 10000 * msg.value
                    require ext_call.success
                    if not stor12[address(arg1)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                    emit TokenPurchase(msg.value, 10000 * msg.value, block.timestamp, msg.sender, arg1);
    else:
        if block.timestamp < stor6:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                if not stor12[address(arg1)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = arg1
                    stor12[address(arg1)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
            else:
                require msg.value
                require 11000 * msg.value / msg.value == 11000
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 11000 * msg.value
                require ext_call.success
                if not stor12[address(arg1)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = arg1
                    stor12[address(arg1)] = 1
                emit TokenPurchase(msg.value, 11000 * msg.value, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp < stor7:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                if not stor12[address(arg1)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = arg1
                    stor12[address(arg1)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp >= stor11:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    if not stor12[address(arg1)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                else:
                    if not msg.value:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        if not stor12[address(arg1)]:
                            holders.length++
                            if not holders.length <= holders.length + 1:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                    else:
                        require msg.value
                        require 10000 * msg.value / msg.value == 10000
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10000 * msg.value
                        require ext_call.success
                        if not stor12[address(arg1)]:
                            holders.length++
                            if not holders.length <= holders.length + 1:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                        emit TokenPurchase(msg.value, 10000 * msg.value, block.timestamp, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyObizcoinTokens(address arg1) payable {
    investors++
    require arg1
    require msg.value
    require block.timestamp >= stor4
    if block.timestamp > stor6:
        require block.timestamp >= stor7
    require block.timestamp <= stor11
    if block.timestamp < stor4:
        if block.timestamp < stor7:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            if not stor12[address(arg1)]:
                holders.length++
                if not holders.length <= holders.length + 1:
                    idx = holders.length + 1
                    while holders.length > idx:
                        uint256(holders[idx]) = 0
                        idx = idx + 1
                        continue 
                address(holders[holders.length]) = arg1
                stor12[address(arg1)] = 1
            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp >= stor11:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                if not stor12[address(arg1)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = arg1
                    stor12[address(arg1)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
            else:
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    if not stor12[address(arg1)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                else:
                    require msg.value
                    require 10000 * msg.value / msg.value == 10000
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 10000 * msg.value
                    require ext_call.success
                    if not stor12[address(arg1)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                    emit TokenPurchase(msg.value, 10000 * msg.value, block.timestamp, msg.sender, arg1);
    else:
        if block.timestamp < stor6:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                if not stor12[address(arg1)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = arg1
                    stor12[address(arg1)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
            else:
                require msg.value
                require 11000 * msg.value / msg.value == 11000
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 11000 * msg.value
                require ext_call.success
                if not stor12[address(arg1)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = arg1
                    stor12[address(arg1)] = 1
                emit TokenPurchase(msg.value, 11000 * msg.value, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp < stor7:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                if not stor12[address(arg1)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = arg1
                    stor12[address(arg1)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp >= stor11:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    if not stor12[address(arg1)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                else:
                    if not msg.value:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        if not stor12[address(arg1)]:
                            holders.length++
                            if not holders.length <= holders.length + 1:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, arg1);
                    else:
                        require msg.value
                        require 10000 * msg.value / msg.value == 10000
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10000 * msg.value
                        require ext_call.success
                        if not stor12[address(arg1)]:
                            holders.length++
                            if not holders.length <= holders.length + 1:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                        emit TokenPurchase(msg.value, 10000 * msg.value, block.timestamp, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    investors++
    require msg.sender
    require msg.value
    require block.timestamp >= stor4
    if block.timestamp > stor6:
        require block.timestamp >= stor7
    require block.timestamp <= stor11
    if block.timestamp < stor4:
        if block.timestamp < stor7:
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            if not stor12[address(msg.sender)]:
                holders.length++
                if not holders.length <= holders.length + 1:
                    idx = holders.length + 1
                    while holders.length > idx:
                        uint256(holders[idx]) = 0
                        idx = idx + 1
                        continue 
                address(holders[holders.length]) = msg.sender
                stor12[address(msg.sender)] = 1
            emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
        else:
            if block.timestamp >= stor11:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                if not stor12[address(msg.sender)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = msg.sender
                    stor12[address(msg.sender)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
            else:
                if not msg.value:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    if not stor12[address(msg.sender)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = msg.sender
                        stor12[address(msg.sender)] = 1
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                else:
                    require msg.value
                    require 10000 * msg.value / msg.value == 10000
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10000 * msg.value
                    require ext_call.success
                    if not stor12[address(msg.sender)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = msg.sender
                        stor12[address(msg.sender)] = 1
                    emit TokenPurchase(msg.value, 10000 * msg.value, block.timestamp, msg.sender, msg.sender);
    else:
        if block.timestamp < stor6:
            if not msg.value:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                if not stor12[address(msg.sender)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = msg.sender
                    stor12[address(msg.sender)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
            else:
                require msg.value
                require 11000 * msg.value / msg.value == 11000
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 11000 * msg.value
                require ext_call.success
                if not stor12[address(msg.sender)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = msg.sender
                    stor12[address(msg.sender)] = 1
                emit TokenPurchase(msg.value, 11000 * msg.value, block.timestamp, msg.sender, msg.sender);
        else:
            if block.timestamp < stor7:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                if not stor12[address(msg.sender)]:
                    holders.length++
                    if not holders.length <= holders.length + 1:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                    address(holders[holders.length]) = msg.sender
                    stor12[address(msg.sender)] = 1
                emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
            else:
                if block.timestamp >= stor11:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    if not stor12[address(msg.sender)]:
                        holders.length++
                        if not holders.length <= holders.length + 1:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                        address(holders[holders.length]) = msg.sender
                        stor12[address(msg.sender)] = 1
                    emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                else:
                    if not msg.value:
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        if not stor12[address(msg.sender)]:
                            holders.length++
                            if not holders.length <= holders.length + 1:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(holders[holders.length]) = msg.sender
                            stor12[address(msg.sender)] = 1
                        emit TokenPurchase(msg.value, 0, block.timestamp, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require 10000 * msg.value / msg.value == 10000
                        require weiRaised + msg.value >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10000 * msg.value
                        require ext_call.success
                        if not stor12[address(msg.sender)]:
                            holders.length++
                            if not holders.length <= holders.length + 1:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            address(holders[holders.length]) = msg.sender
                            stor12[address(msg.sender)] = 1
                        emit TokenPurchase(msg.value, 10000 * msg.value, block.timestamp, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mintObizcoinTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    investors++
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
        if block.timestamp < stor4:
            if block.timestamp < stor7:
                require weiRaised >= weiRaised
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^18 * arg2
                require ext_call.success
                if stor12[address(arg1)]:
                    emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                else:
                    holders.length++
                    if not holders.length > holders.length + 1:
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                        emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                    else:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                        emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp >= stor11:
                    require weiRaised >= weiRaised
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 10^18 * arg2
                    require ext_call.success
                    if stor12[address(arg1)]:
                        emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                    else:
                        holders.length++
                        if not holders.length > holders.length + 1:
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                        else:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                else:
                    require weiRaised + (10^18 * arg2 / 10000) >= weiRaised
                    weiRaised += 10^18 * arg2 / 10000
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 10^18 * arg2
                    require ext_call.success
                    if stor12[address(arg1)]:
                        emit TokenPurchase(10^18 * arg2 / 10000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                    else:
                        holders.length++
                        if not holders.length > holders.length + 1:
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(10^18 * arg2 / 10000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                        else:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(10^18 * arg2 / 10000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp >= stor6:
                if block.timestamp < stor7:
                    require weiRaised >= weiRaised
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 10^18 * arg2
                    require ext_call.success
                    if stor12[address(arg1)]:
                        emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                    else:
                        holders.length++
                        if not holders.length > holders.length + 1:
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                        else:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp >= stor11:
                        require weiRaised >= weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^18 * arg2
                        require ext_call.success
                        if stor12[address(arg1)]:
                            emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                        else:
                            holders.length++
                            if not holders.length > holders.length + 1:
                                address(holders[holders.length]) = arg1
                                stor12[address(arg1)] = 1
                                emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                            else:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                address(holders[holders.length]) = arg1
                                stor12[address(arg1)] = 1
                                emit TokenPurchase(0, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                    else:
                        require weiRaised + (10^18 * arg2 / 10000) >= weiRaised
                        weiRaised += 10^18 * arg2 / 10000
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^18 * arg2
                        require ext_call.success
                        if stor12[address(arg1)]:
                            emit TokenPurchase(10^18 * arg2 / 10000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                        else:
                            holders.length++
                            if not holders.length > holders.length + 1:
                                address(holders[holders.length]) = arg1
                                stor12[address(arg1)] = 1
                                emit TokenPurchase(10^18 * arg2 / 10000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                            else:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                address(holders[holders.length]) = arg1
                                stor12[address(arg1)] = 1
                                emit TokenPurchase(10^18 * arg2 / 10000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
            else:
                require weiRaised + (10^18 * arg2 / 11000) >= weiRaised
                weiRaised += 10^18 * arg2 / 11000
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^18 * arg2
                require ext_call.success
                if stor12[address(arg1)]:
                    emit TokenPurchase(10^18 * arg2 / 11000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                else:
                    holders.length++
                    if not holders.length > holders.length + 1:
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                        emit TokenPurchase(10^18 * arg2 / 11000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
                    else:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                        emit TokenPurchase(10^18 * arg2 / 11000, 10^18 * arg2, block.timestamp, msg.sender, arg1);
    else:
        if block.timestamp < stor4:
            if block.timestamp < stor7:
                require weiRaised >= weiRaised
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                if stor12[address(arg1)]:
                    emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                else:
                    holders.length++
                    if not holders.length > holders.length + 1:
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                        emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                    else:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                        emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
            else:
                if block.timestamp >= stor11:
                    require weiRaised >= weiRaised
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    if stor12[address(arg1)]:
                        emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                    else:
                        holders.length++
                        if not holders.length > holders.length + 1:
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                        else:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                else:
                    require weiRaised >= weiRaised
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    if stor12[address(arg1)]:
                        emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                    else:
                        holders.length++
                        if not holders.length > holders.length + 1:
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                        else:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
        else:
            if block.timestamp >= stor6:
                if block.timestamp < stor7:
                    require weiRaised >= weiRaised
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    if stor12[address(arg1)]:
                        emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                    else:
                        holders.length++
                        if not holders.length > holders.length + 1:
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                        else:
                            idx = holders.length + 1
                            while holders.length > idx:
                                uint256(holders[idx]) = 0
                                idx = idx + 1
                                continue 
                            address(holders[holders.length]) = arg1
                            stor12[address(arg1)] = 1
                            emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                else:
                    if block.timestamp >= stor11:
                        require weiRaised >= weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        if stor12[address(arg1)]:
                            emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                        else:
                            holders.length++
                            if not holders.length > holders.length + 1:
                                address(holders[holders.length]) = arg1
                                stor12[address(arg1)] = 1
                                emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                            else:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                address(holders[holders.length]) = arg1
                                stor12[address(arg1)] = 1
                                emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                    else:
                        require weiRaised >= weiRaised
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        if stor12[address(arg1)]:
                            emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                        else:
                            holders.length++
                            if not holders.length > holders.length + 1:
                                address(holders[holders.length]) = arg1
                                stor12[address(arg1)] = 1
                                emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                            else:
                                idx = holders.length + 1
                                while holders.length > idx:
                                    uint256(holders[idx]) = 0
                                    idx = idx + 1
                                    continue 
                                address(holders[holders.length]) = arg1
                                stor12[address(arg1)] = 1
                                emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
            else:
                require weiRaised >= weiRaised
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                if stor12[address(arg1)]:
                    emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                else:
                    holders.length++
                    if not holders.length > holders.length + 1:
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                        emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
                    else:
                        idx = holders.length + 1
                        while holders.length > idx:
                            uint256(holders[idx]) = 0
                            idx = idx + 1
                            continue 
                        address(holders[holders.length]) = arg1
                        stor12[address(arg1)] = 1
                        emit TokenPurchase(0, 0, block.timestamp, msg.sender, arg1);
}



}

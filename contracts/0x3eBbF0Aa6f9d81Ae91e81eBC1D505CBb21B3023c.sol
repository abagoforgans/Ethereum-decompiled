contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    require not msg.value
    require code.data[10521 len 32] >= block.number
    require code.data[10553 len 32] >= code.data[10521 len 32]
    require code.data[10585 len 32] > 0
    require code.data[10629 len 20]
    create contract with 0 wei
                    code: code.data[7987 len 2534]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[10521 len 32]
    stor2 = code.data[10553 len 32]
    stor4 = code.data[10585 len 32]
    stor3 = code.data[10629 len 20]
    require code.data[10649 len 32] > 0
    stor6 = code.data[10649 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[10713 len 32] > 0
    create contract with 0 wei
                    code: code.data[6425 len 1562], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = code.data[10713 len 32]
    stor10 = code.data[10745 len 32]
    stor11 = code.data[10777 len 32]
    stor12 = code.data[10809 len 32]
    stor13 = code.data[10841 len 32]
    require ext_code.size(stor0)
    call stor0.mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args stor3, code.data[10681 len 32]
    require ext_call.success
    return code.data[745 len 5680]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;
uint256 ratePreSale;
uint256 sub_622d02bb;
uint256 sub_cfeb189e;
uint256 sub_88f507e3;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function ratePreSale() {
    return ratePreSale
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function sub_622d02bb(?) {
    return sub_622d02bb
}

function sub_88f507e3(?) {
    return sub_88f507e3
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function sub_cfeb189e(?) {
    return sub_cfeb189e
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function hasEnded() {
    if block.number > endBlock:
        return (block.number > endBlock)
    return weiRaised >= cap
}

function claimRefund() {
    require stor7
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function getRate() {
    if block.timestamp <= 417842 * 3600:
        return ratePreSale
    if block.timestamp <= 1504231800:
        return sub_622d02bb
    if block.timestamp <= 1504232400:
        return sub_cfeb189e
    if block.timestamp > 1504233000:
        return rate
    return sub_88f507e3
}

function finalize() {
    require owner == msg.sender
    require not stor7
    if block.number <= endBlock:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= cap
    if cap - ext_call.return_data[0] > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args walletAddress, cap - ext_call.return_data[0]
        require ext_call.success
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value + weiRaised <= cap
    if block.timestamp <= 417842 * 3600:
        if msg.value:
            require msg.value
            require ratePreSale * msg.value / msg.value == ratePreSale
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(arg1), ratePreSale * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, ratePreSale * msg.value, msg.sender, arg1);
    else:
        if block.timestamp <= 1504231800:
            if msg.value:
                require msg.value
                require sub_622d02bb * msg.value / msg.value == sub_622d02bb
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), sub_622d02bb * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, sub_622d02bb * msg.value, msg.sender, arg1);
        else:
            if block.timestamp <= 1504232400:
                if msg.value:
                    require msg.value
                    require sub_cfeb189e * msg.value / msg.value == sub_cfeb189e
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), sub_cfeb189e * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, sub_cfeb189e * msg.value, msg.sender, arg1);
            else:
                if block.timestamp > 1504233000:
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), rate * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require sub_88f507e3 * msg.value / msg.value == sub_88f507e3
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), sub_88f507e3 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, sub_88f507e3 * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.value
    require msg.value + weiRaised <= cap
    if block.timestamp <= 417842 * 3600:
        if msg.value:
            require msg.value
            require ratePreSale * msg.value / msg.value == ratePreSale
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.mint(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args msg.sender, ratePreSale * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, ratePreSale * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp <= 1504231800:
            if msg.value:
                require msg.value
                require sub_622d02bb * msg.value / msg.value == sub_622d02bb
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, sub_622d02bb * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, sub_622d02bb * msg.value, msg.sender, msg.sender);
        else:
            if block.timestamp <= 1504232400:
                if msg.value:
                    require msg.value
                    require sub_cfeb189e * msg.value / msg.value == sub_cfeb189e
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, sub_cfeb189e * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, sub_cfeb189e * msg.value, msg.sender, msg.sender);
            else:
                if block.timestamp > 1504233000:
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, rate * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require sub_88f507e3 * msg.value / msg.value == sub_88f507e3
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, sub_88f507e3 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, sub_88f507e3 * msg.value, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}

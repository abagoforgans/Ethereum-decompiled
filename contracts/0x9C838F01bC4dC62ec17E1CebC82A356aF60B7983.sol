contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor2 = 0x17d0b1a81f186bfa186b5841f21fc3207be2af7c
    stor5 = 42800000 * 10^18
    stor6 = 8 * 10^14
    stor7 = 420348 * 3600
    stor8 = 420564 * 3600
    stor9 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    create contract with 0 wei
                    code: code.data[2480 len 4121]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[246 len 2234]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address tokenAddress;
address beneficiaryAddress;
uint256 collectedWei;
uint256 tokensSold;
uint256 tokensForSale;
uint256 priceTokenWei;
uint256 startTime;
uint256 endTime;
uint8 stor9;

function priceTokenWei() {
    return priceTokenWei
}

function tokensForSale() {
    return tokensForSale
}

function endTime() {
    return endTime
}

function beneficiary() {
    return beneficiaryAddress
}

function tokensSold() {
    return tokensSold
}

function paused() {
    return bool(stor0)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function crowdsaleFinished() {
    return bool(stor9)
}

function collectedWei() {
    return collectedWei
}

function token() {
    return tokenAddress
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require owner == msg.sender
    require not stor9
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress
    require ext_call.success
    stor9 = 1
    emit Withdraw()
}

function purchase() payable {
    require not stor0
    require not stor9
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require tokensSold < tokensForSale
    require msg.value >= 8 * 10^16
    require msg.value <= 100 * 10^18
    if priceTokenWei:
        require priceTokenWei
        require 100 * priceTokenWei / priceTokenWei == 100
    if block.timestamp < startTime + (72 * 24 * 3600):
        require 100 * priceTokenWei / 140
        if msg.value / 100 * priceTokenWei / 140:
            require msg.value / 100 * priceTokenWei / 140
            require 10^18 * msg.value / 100 * priceTokenWei / 140 / msg.value / 100 * priceTokenWei / 140 == 10^18
        require (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold >= tokensSold
        require (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold >= tokensSold
        if (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold <= tokensForSale:
            tokensSold += 10^18 * msg.value / 100 * priceTokenWei / 140
            require msg.value + collectedWei >= collectedWei
            collectedWei += msg.value
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10^18 * msg.value / 100 * priceTokenWei / 140
            require ext_call.success
            emit NewContribution(10^18 * msg.value / 100 * priceTokenWei / 140, msg.value, msg.sender);
        else:
            require tokensForSale <= (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold
            if (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold - tokensForSale:
                require (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold - tokensForSale
                require (10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold - tokensForSale == 100 * priceTokenWei / 140
            require (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold - tokensForSale <= 10^18 * msg.value / 100 * priceTokenWei / 140
            require (10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18 <= msg.value
            require tokensForSale >= tokensSold
            tokensSold = tokensForSale
            require msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18) + collectedWei >= collectedWei
            collectedWei = msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18) + collectedWei
            call beneficiaryAddress with:
               value msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, -tokensSold + tokensForSale
            require ext_call.success
            if (10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18 > 0:
                call msg.sender with:
                   value (10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit NewContribution(-tokensSold + tokensForSale, msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18), msg.sender);
    else:
        if block.timestamp < startTime + (144 * 24 * 3600):
            require 100 * priceTokenWei / 130
            if msg.value / 100 * priceTokenWei / 130:
                require msg.value / 100 * priceTokenWei / 130
                require 10^18 * msg.value / 100 * priceTokenWei / 130 / msg.value / 100 * priceTokenWei / 130 == 10^18
            require (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold >= tokensSold
            require (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold >= tokensSold
            if (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold <= tokensForSale:
                tokensSold += 10^18 * msg.value / 100 * priceTokenWei / 130
                require msg.value + collectedWei >= collectedWei
                collectedWei += msg.value
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10^18 * msg.value / 100 * priceTokenWei / 130
                require ext_call.success
                emit NewContribution(10^18 * msg.value / 100 * priceTokenWei / 130, msg.value, msg.sender);
            else:
                require tokensForSale <= (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold
                if (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold - tokensForSale:
                    require (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold - tokensForSale
                    require (10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold - tokensForSale == 100 * priceTokenWei / 130
                require (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold - tokensForSale <= 10^18 * msg.value / 100 * priceTokenWei / 130
                require (10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18 <= msg.value
                require tokensForSale >= tokensSold
                tokensSold = tokensForSale
                require msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18) + collectedWei >= collectedWei
                collectedWei = msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18) + collectedWei
                call beneficiaryAddress with:
                   value msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -tokensSold + tokensForSale
                require ext_call.success
                if (10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18 > 0:
                    call msg.sender with:
                       value (10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit NewContribution(-tokensSold + tokensForSale, msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18), msg.sender);
        else:
            if block.timestamp < startTime + (216 * 24 * 3600):
                require 100 * priceTokenWei / 120
                if msg.value / 100 * priceTokenWei / 120:
                    require msg.value / 100 * priceTokenWei / 120
                    require 10^18 * msg.value / 100 * priceTokenWei / 120 / msg.value / 100 * priceTokenWei / 120 == 10^18
                require (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold >= tokensSold
                require (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold >= tokensSold
                if (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold <= tokensForSale:
                    tokensSold += 10^18 * msg.value / 100 * priceTokenWei / 120
                    require msg.value + collectedWei >= collectedWei
                    collectedWei += msg.value
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^18 * msg.value / 100 * priceTokenWei / 120
                    require ext_call.success
                    emit NewContribution(10^18 * msg.value / 100 * priceTokenWei / 120, msg.value, msg.sender);
                else:
                    require tokensForSale <= (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold
                    if (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold - tokensForSale:
                        require (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold - tokensForSale
                        require (10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold - tokensForSale == 100 * priceTokenWei / 120
                    require (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold - tokensForSale <= 10^18 * msg.value / 100 * priceTokenWei / 120
                    require (10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18 <= msg.value
                    require tokensForSale >= tokensSold
                    tokensSold = tokensForSale
                    require msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18) + collectedWei >= collectedWei
                    collectedWei = msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18) + collectedWei
                    call beneficiaryAddress with:
                       value msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + tokensForSale
                    require ext_call.success
                    if (10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18 > 0:
                        call msg.sender with:
                           value (10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit NewContribution(-tokensSold + tokensForSale, msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18), msg.sender);
            else:
                require 100 * priceTokenWei / 100
                if msg.value / 100 * priceTokenWei / 100:
                    require msg.value / 100 * priceTokenWei / 100
                    require 10^18 * msg.value / 100 * priceTokenWei / 100 / msg.value / 100 * priceTokenWei / 100 == 10^18
                require (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold >= tokensSold
                require (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold >= tokensSold
                if (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold <= tokensForSale:
                    tokensSold += 10^18 * msg.value / 100 * priceTokenWei / 100
                    require msg.value + collectedWei >= collectedWei
                    collectedWei += msg.value
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^18 * msg.value / 100 * priceTokenWei / 100
                    require ext_call.success
                    emit NewContribution(10^18 * msg.value / 100 * priceTokenWei / 100, msg.value, msg.sender);
                else:
                    require tokensForSale <= (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold
                    if (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold - tokensForSale:
                        require (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold - tokensForSale
                        require (10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold - tokensForSale == 100 * priceTokenWei / 100
                    require (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold - tokensForSale <= 10^18 * msg.value / 100 * priceTokenWei / 100
                    require (10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18 <= msg.value
                    require tokensForSale >= tokensSold
                    tokensSold = tokensForSale
                    require msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18) + collectedWei >= collectedWei
                    collectedWei = msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18) + collectedWei
                    call beneficiaryAddress with:
                       value msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + tokensForSale
                    require ext_call.success
                    if (10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18 > 0:
                        call msg.sender with:
                           value (10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit NewContribution(-tokensSold + tokensForSale, msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18), msg.sender);
}

function _fallback() payable {
    require not stor0
    require not stor9
    require block.timestamp >= startTime
    require block.timestamp < endTime
    require tokensSold < tokensForSale
    require msg.value >= 8 * 10^16
    require msg.value <= 100 * 10^18
    if priceTokenWei:
        require priceTokenWei
        require 100 * priceTokenWei / priceTokenWei == 100
    if block.timestamp < startTime + (72 * 24 * 3600):
        require 100 * priceTokenWei / 140
        if msg.value / 100 * priceTokenWei / 140:
            require msg.value / 100 * priceTokenWei / 140
            require 10^18 * msg.value / 100 * priceTokenWei / 140 / msg.value / 100 * priceTokenWei / 140 == 10^18
        require (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold >= tokensSold
        require (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold >= tokensSold
        if (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold <= tokensForSale:
            tokensSold += 10^18 * msg.value / 100 * priceTokenWei / 140
            require msg.value + collectedWei >= collectedWei
            collectedWei += msg.value
            call beneficiaryAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10^18 * msg.value / 100 * priceTokenWei / 140
            require ext_call.success
            emit NewContribution(10^18 * msg.value / 100 * priceTokenWei / 140, msg.value, msg.sender);
        else:
            require tokensForSale <= (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold
            if (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold - tokensForSale:
                require (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold - tokensForSale
                require (10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold - tokensForSale == 100 * priceTokenWei / 140
            require (10^18 * msg.value / 100 * priceTokenWei / 140) + tokensSold - tokensForSale <= 10^18 * msg.value / 100 * priceTokenWei / 140
            require (10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18 <= msg.value
            require tokensForSale >= tokensSold
            tokensSold = tokensForSale
            require msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18) + collectedWei >= collectedWei
            collectedWei = msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18) + collectedWei
            call beneficiaryAddress with:
               value msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, -tokensSold + tokensForSale
            require ext_call.success
            if (10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18 > 0:
                call msg.sender with:
                   value (10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit NewContribution(-tokensSold + tokensForSale, msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 140 * 100 * priceTokenWei / 140) + (tokensSold * 100 * priceTokenWei / 140) - (tokensForSale * 100 * priceTokenWei / 140) / 10^18), msg.sender);
    else:
        if block.timestamp < startTime + (144 * 24 * 3600):
            require 100 * priceTokenWei / 130
            if msg.value / 100 * priceTokenWei / 130:
                require msg.value / 100 * priceTokenWei / 130
                require 10^18 * msg.value / 100 * priceTokenWei / 130 / msg.value / 100 * priceTokenWei / 130 == 10^18
            require (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold >= tokensSold
            require (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold >= tokensSold
            if (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold <= tokensForSale:
                tokensSold += 10^18 * msg.value / 100 * priceTokenWei / 130
                require msg.value + collectedWei >= collectedWei
                collectedWei += msg.value
                call beneficiaryAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10^18 * msg.value / 100 * priceTokenWei / 130
                require ext_call.success
                emit NewContribution(10^18 * msg.value / 100 * priceTokenWei / 130, msg.value, msg.sender);
            else:
                require tokensForSale <= (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold
                if (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold - tokensForSale:
                    require (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold - tokensForSale
                    require (10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold - tokensForSale == 100 * priceTokenWei / 130
                require (10^18 * msg.value / 100 * priceTokenWei / 130) + tokensSold - tokensForSale <= 10^18 * msg.value / 100 * priceTokenWei / 130
                require (10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18 <= msg.value
                require tokensForSale >= tokensSold
                tokensSold = tokensForSale
                require msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18) + collectedWei >= collectedWei
                collectedWei = msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18) + collectedWei
                call beneficiaryAddress with:
                   value msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, -tokensSold + tokensForSale
                require ext_call.success
                if (10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18 > 0:
                    call msg.sender with:
                       value (10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit NewContribution(-tokensSold + tokensForSale, msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 130 * 100 * priceTokenWei / 130) + (tokensSold * 100 * priceTokenWei / 130) - (tokensForSale * 100 * priceTokenWei / 130) / 10^18), msg.sender);
        else:
            if block.timestamp < startTime + (216 * 24 * 3600):
                require 100 * priceTokenWei / 120
                if msg.value / 100 * priceTokenWei / 120:
                    require msg.value / 100 * priceTokenWei / 120
                    require 10^18 * msg.value / 100 * priceTokenWei / 120 / msg.value / 100 * priceTokenWei / 120 == 10^18
                require (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold >= tokensSold
                require (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold >= tokensSold
                if (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold <= tokensForSale:
                    tokensSold += 10^18 * msg.value / 100 * priceTokenWei / 120
                    require msg.value + collectedWei >= collectedWei
                    collectedWei += msg.value
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^18 * msg.value / 100 * priceTokenWei / 120
                    require ext_call.success
                    emit NewContribution(10^18 * msg.value / 100 * priceTokenWei / 120, msg.value, msg.sender);
                else:
                    require tokensForSale <= (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold
                    if (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold - tokensForSale:
                        require (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold - tokensForSale
                        require (10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold - tokensForSale == 100 * priceTokenWei / 120
                    require (10^18 * msg.value / 100 * priceTokenWei / 120) + tokensSold - tokensForSale <= 10^18 * msg.value / 100 * priceTokenWei / 120
                    require (10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18 <= msg.value
                    require tokensForSale >= tokensSold
                    tokensSold = tokensForSale
                    require msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18) + collectedWei >= collectedWei
                    collectedWei = msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18) + collectedWei
                    call beneficiaryAddress with:
                       value msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + tokensForSale
                    require ext_call.success
                    if (10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18 > 0:
                        call msg.sender with:
                           value (10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit NewContribution(-tokensSold + tokensForSale, msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 120 * 100 * priceTokenWei / 120) + (tokensSold * 100 * priceTokenWei / 120) - (tokensForSale * 100 * priceTokenWei / 120) / 10^18), msg.sender);
            else:
                require 100 * priceTokenWei / 100
                if msg.value / 100 * priceTokenWei / 100:
                    require msg.value / 100 * priceTokenWei / 100
                    require 10^18 * msg.value / 100 * priceTokenWei / 100 / msg.value / 100 * priceTokenWei / 100 == 10^18
                require (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold >= tokensSold
                require (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold >= tokensSold
                if (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold <= tokensForSale:
                    tokensSold += 10^18 * msg.value / 100 * priceTokenWei / 100
                    require msg.value + collectedWei >= collectedWei
                    collectedWei += msg.value
                    call beneficiaryAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 10^18 * msg.value / 100 * priceTokenWei / 100
                    require ext_call.success
                    emit NewContribution(10^18 * msg.value / 100 * priceTokenWei / 100, msg.value, msg.sender);
                else:
                    require tokensForSale <= (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold
                    if (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold - tokensForSale:
                        require (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold - tokensForSale
                        require (10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold - tokensForSale == 100 * priceTokenWei / 100
                    require (10^18 * msg.value / 100 * priceTokenWei / 100) + tokensSold - tokensForSale <= 10^18 * msg.value / 100 * priceTokenWei / 100
                    require (10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18 <= msg.value
                    require tokensForSale >= tokensSold
                    tokensSold = tokensForSale
                    require msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18) + collectedWei >= collectedWei
                    collectedWei = msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18) + collectedWei
                    call beneficiaryAddress with:
                       value msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, -tokensSold + tokensForSale
                    require ext_call.success
                    if (10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18 > 0:
                        call msg.sender with:
                           value (10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                    emit NewContribution(-tokensSold + tokensForSale, msg.value - ((10^18 * msg.value / 100 * priceTokenWei / 100 * 100 * priceTokenWei / 100) + (tokensSold * 100 * priceTokenWei / 100) - (tokensForSale * 100 * priceTokenWei / 100) / 10^18), msg.sender);
}



}

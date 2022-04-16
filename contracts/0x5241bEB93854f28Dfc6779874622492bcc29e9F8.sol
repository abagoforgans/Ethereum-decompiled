contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
uint256 stor3;
address stor4;
uint128 stor5; offset 160
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    Mask(96, 0, stor5.field_160) = 0
    stor6 = 0
    stor7 = 0
    require not msg.value
    stor0[address(msg.sender)] = 1
    stor3 = 418431 * 3600
    stor4 = 0x17c432e543952f950e8cb05dd5107efe6864d1de
    address(stor5.field_0) = 0xb76512cda72615797fd33cb2d4c3c7d91cfc7861
    stor7 = 33815 * 10^18
    return code.data[391 len 2943]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 numberOfContributors;
uint256 startTime;
address tokenAddress;
uint8 stor5; offset 160
uint128 stor5; offset 160
address walletAddress;
uint256 raised;
uint256 cap;

function isOwner(address arg1) {
    require stor0[address(msg.sender)]
    return bool(stor0[address(arg1)])
}

function cap() {
    return cap
}

function numberOfContributors() {
    return numberOfContributors
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor5.field_160))
}

function raised() {
    return raised
}

function token() {
    return tokenAddress
}

function removeOwner(address arg1) {
    require stor0[address(msg.sender)]
    stor0[address(arg1)] = 0
}

function addOwner(address arg1) {
    require stor0[address(msg.sender)]
    require arg1
    stor0[address(arg1)] = 1
}

function finalize() {
    require stor0[address(msg.sender)]
    require not uint8(stor5.field_160)
    emit Finalized()
    Mask(96, 0, stor5.field_160) = 1
}

function rate() {
    if block.timestamp < startTime + 3600:
        return 12500
    if block.timestamp < startTime + (24 * 3600):
        return 10000
    if block.timestamp < startTime + (72 * 24 * 3600):
        return 8333
    if block.timestamp < startTime + (96 * 24 * 3600):
        return 7692
    if block.timestamp < startTime + (120 * 24 * 3600):
        return 7143
    if block.timestamp < startTime + (144 * 24 * 3600):
        return 6849
    if block.timestamp < startTime + (168 * 24 * 3600):
        return 6579
    if block.timestamp >= startTime + (192 * 24 * 3600):
        return 6250
    return 6410
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require raised < cap
    require not uint8(stor5.field_160)
    require msg.value
    if block.timestamp < startTime + 3600:
        if msg.value:
            require msg.value
            require 12500 * msg.value / msg.value == 12500
        raised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 12500 * msg.value / 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, 12500 * msg.value / 10^18, msg.sender, arg1);
    else:
        if block.timestamp < startTime + (24 * 3600):
            if msg.value:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
            raised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 10000 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 10000 * msg.value / 10^18, msg.sender, arg1);
        else:
            if block.timestamp < startTime + (72 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 8333 * msg.value / msg.value == 8333
                raised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 8333 * msg.value / 10^18
                require ext_call.success
                emit TokenPurchase(msg.value, 8333 * msg.value / 10^18, msg.sender, arg1);
            else:
                if block.timestamp < startTime + (96 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 7692 * msg.value / msg.value == 7692
                    raised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 7692 * msg.value / 10^18
                    require ext_call.success
                    emit TokenPurchase(msg.value, 7692 * msg.value / 10^18, msg.sender, arg1);
                else:
                    if block.timestamp < startTime + (120 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 7143 * msg.value / msg.value == 7143
                        raised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 7143 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 7143 * msg.value / 10^18, msg.sender, arg1);
                    else:
                        if block.timestamp < startTime + (144 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require 6849 * msg.value / msg.value == 6849
                            raised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 6849 * msg.value / 10^18
                            require ext_call.success
                            emit TokenPurchase(msg.value, 6849 * msg.value / 10^18, msg.sender, arg1);
                        else:
                            if block.timestamp < startTime + (168 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require 6579 * msg.value / msg.value == 6579
                                raised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 6579 * msg.value / 10^18
                                require ext_call.success
                                emit TokenPurchase(msg.value, 6579 * msg.value / 10^18, msg.sender, arg1);
                            else:
                                if block.timestamp >= startTime + (192 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require 6250 * msg.value / msg.value == 6250
                                    raised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 6250 * msg.value / 10^18
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 6250 * msg.value / 10^18, msg.sender, arg1);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require 6410 * msg.value / msg.value == 6410
                                    raised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), 6410 * msg.value / 10^18
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 6410 * msg.value / 10^18, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not stor1[address(arg1)]:
        stor1[address(arg1)] = 1
        numberOfContributors++
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require raised < cap
    require not uint8(stor5.field_160)
    require msg.value
    if block.timestamp < startTime + 3600:
        if msg.value:
            require msg.value
            require 12500 * msg.value / msg.value == 12500
        raised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 12500 * msg.value / 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, 12500 * msg.value / 10^18, msg.sender, msg.sender);
    else:
        if block.timestamp < startTime + (24 * 3600):
            if msg.value:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
            raised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10000 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 10000 * msg.value / 10^18, msg.sender, msg.sender);
        else:
            if block.timestamp < startTime + (72 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 8333 * msg.value / msg.value == 8333
                raised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 8333 * msg.value / 10^18
                require ext_call.success
                emit TokenPurchase(msg.value, 8333 * msg.value / 10^18, msg.sender, msg.sender);
            else:
                if block.timestamp < startTime + (96 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 7692 * msg.value / msg.value == 7692
                    raised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 7692 * msg.value / 10^18
                    require ext_call.success
                    emit TokenPurchase(msg.value, 7692 * msg.value / 10^18, msg.sender, msg.sender);
                else:
                    if block.timestamp < startTime + (120 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 7143 * msg.value / msg.value == 7143
                        raised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 7143 * msg.value / 10^18
                        require ext_call.success
                        emit TokenPurchase(msg.value, 7143 * msg.value / 10^18, msg.sender, msg.sender);
                    else:
                        if block.timestamp < startTime + (144 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require 6849 * msg.value / msg.value == 6849
                            raised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 6849 * msg.value / 10^18
                            require ext_call.success
                            emit TokenPurchase(msg.value, 6849 * msg.value / 10^18, msg.sender, msg.sender);
                        else:
                            if block.timestamp < startTime + (168 * 24 * 3600):
                                if msg.value:
                                    require msg.value
                                    require 6579 * msg.value / msg.value == 6579
                                raised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 6579 * msg.value / 10^18
                                require ext_call.success
                                emit TokenPurchase(msg.value, 6579 * msg.value / 10^18, msg.sender, msg.sender);
                            else:
                                if block.timestamp >= startTime + (192 * 24 * 3600):
                                    if msg.value:
                                        require msg.value
                                        require 6250 * msg.value / msg.value == 6250
                                    raised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 6250 * msg.value / 10^18
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 6250 * msg.value / 10^18, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require 6410 * msg.value / msg.value == 6410
                                    raised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 6410 * msg.value / 10^18
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 6410 * msg.value / 10^18, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not stor1[address(msg.sender)]:
        stor1[address(msg.sender)] = 1
        numberOfContributors++
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor7 = 0
    stor8 = 0
    stor9 = 0
    require not msg.value
    mem[96 len -8210] = code.data[10723 len -8210]
    mem[64] = -8114
    _7 = mem[256]
    _8 = mem[288]
    _9 = mem[320]
    _10 = mem[352]
    stor0 = msg.sender
    stor1 = mem[108 len 20]
    mem[-3578] = mem[128]
    mem[-3514] = mem[223 len 1]
    mem[-3450] = mem[mem[160] + 96]
    _14 = mem[mem[160] + 96]
    mem[-3418 len ceil32(mem[mem[160] + 96])] = mem[mem[160] + 128 len ceil32(mem[mem[160] + 96])]
    if not _14 % 32:
        mem[_14 - 3418] = mem[mem[224] + 96]
        _379 = mem[mem[224] + 96]
        mem[_14 - 3386 len ceil32(mem[mem[224] + 96])] = mem[mem[224] + 128 len ceil32(mem[mem[224] + 96])]
        if not _379 % 32:
            create contract with 0 wei
                            code: code.data[5970 len 4536], mem[-3578], Array(len=_14 + 160, data=mem[-3450 len _379 + _14 + 64]), mem[-3514]
        else:
            mem[floor32(_379) + _14 - 3386] = mem[floor32(_379) + _14 + -(_379 % 32) - 3354 len _379 % 32]
            create contract with 0 wei
                            code: code.data[5970 len 4536], mem[-3578], Array(len=_14 + 160, data=mem[-3450 len floor32(_379) + _14 + 96]), mem[-3514]
    else:
        mem[floor32(_14) - 3418] = mem[floor32(_14) + -(_14 % 32) - 3386 len _14 % 32]
        mem[floor32(_14) - 3386] = mem[mem[224] + 96]
        _382 = mem[mem[224] + 96]
        mem[floor32(_14) - 3354 len ceil32(mem[mem[224] + 96])] = mem[mem[224] + 128 len ceil32(mem[mem[224] + 96])]
        if not _382 % 32:
            create contract with 0 wei
                            code: code.data[5970 len 4536], mem[-3578], Array(len=floor32(_14) + 192, data=mem[-3450 len _382 + floor32(_14) + 96]), mem[-3514]
        else:
            mem[floor32(_382) + floor32(_14) - 3354] = mem[floor32(_382) + floor32(_14) + -(_382 % 32) - 3322 len _382 % 32]
            create contract with 0 wei
                            code: code.data[5970 len 4536], mem[-3578], Array(len=floor32(_14) + 192, data=mem[-3450 len floor32(_382) + floor32(_14) + 128]), mem[-3514]
    require create.new_address
    stor2 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[10506 len 217], mem[384]
    stor3 = address(create.new_address)
    stor4 = _7
    stor5 = _8
    stor6 = _9
    stor8 = _10
    stor10 = block.timestamp
    require ext_code.size(stor2)
    call stor2.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args stor1, 20 * ext_call.return_data[0] / 100
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(stor2)
            call stor2.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if not ext_call.return_data[0]:
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(this.address), 60 * ext_call.return_data[0] / 100
                require ext_call.success
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    call stor2.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if (20 * ext_call.return_data[0] / 100) + (60 * ext_call.return_data[0] / 100) >= 20 * ext_call.return_data[0] / 100:
                        if (20 * ext_call.return_data[0] / 100) + (60 * ext_call.return_data[0] / 100) <= ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            call stor2.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor3, ext_call.return_data[0] - (20 * ext_call.return_data[0] / 100) - (60 * ext_call.return_data[0] / 100)
                            require ext_call.success
                            if ext_call.return_data[0]:
                                return code.data[2513 len 3457]
            else:
                if ext_call.return_data[0]:
                    if 60 * ext_call.return_data[0] / ext_call.return_data[0] == 60:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(this.address), 60 * ext_call.return_data[0] / 100
                        require ext_call.success
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            call stor2.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if (20 * ext_call.return_data[0] / 100) + (60 * ext_call.return_data[0] / 100) >= 20 * ext_call.return_data[0] / 100:
                                if (20 * ext_call.return_data[0] / 100) + (60 * ext_call.return_data[0] / 100) <= ext_call.return_data[0]:
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args stor3, ext_call.return_data[0] - (20 * ext_call.return_data[0] / 100) - (60 * ext_call.return_data[0] / 100)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        return code.data[2513 len 3457]
    else:
        if ext_call.return_data[0]:
            if 20 * ext_call.return_data[0] / ext_call.return_data[0] == 20:
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args stor1, 20 * ext_call.return_data[0] / 100
                require ext_call.success
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    call stor2.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if not ext_call.return_data[0]:
                        require ext_code.size(stor2)
                        call stor2.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(this.address), 60 * ext_call.return_data[0] / 100
                        require ext_call.success
                        if ext_call.return_data[0]:
                            require ext_code.size(stor2)
                            call stor2.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if (20 * ext_call.return_data[0] / 100) + (60 * ext_call.return_data[0] / 100) >= 20 * ext_call.return_data[0] / 100:
                                if (20 * ext_call.return_data[0] / 100) + (60 * ext_call.return_data[0] / 100) <= ext_call.return_data[0]:
                                    require ext_code.size(stor2)
                                    call stor2.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args stor3, ext_call.return_data[0] - (20 * ext_call.return_data[0] / 100) - (60 * ext_call.return_data[0] / 100)
                                    require ext_call.success
                                    if ext_call.return_data[0]:
                                        return code.data[2513 len 3457]
                    else:
                        if ext_call.return_data[0]:
                            if 60 * ext_call.return_data[0] / ext_call.return_data[0] == 60:
                                require ext_code.size(stor2)
                                call stor2.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(this.address), 60 * ext_call.return_data[0] / 100
                                require ext_call.success
                                if ext_call.return_data[0]:
                                    require ext_code.size(stor2)
                                    call stor2.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if (20 * ext_call.return_data[0] / 100) + (60 * ext_call.return_data[0] / 100) >= 20 * ext_call.return_data[0] / 100:
                                        if (20 * ext_call.return_data[0] / 100) + (60 * ext_call.return_data[0] / 100) <= ext_call.return_data[0]:
                                            require ext_code.size(stor2)
                                            call stor2.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor3, ext_call.return_data[0] - (20 * ext_call.return_data[0] / 100) - (60 * ext_call.return_data[0] / 100)
                                            require ext_call.success
                                            if ext_call.return_data[0]:
                                                return code.data[2513 len 3457]
    revert
}



// =====================  Runtime code  =====================


address stor0;
address walletAddress;
address tokenAddress;
address lockedAddress;
uint256 price;
uint256 startBlock;
uint256 freezeBlock;
uint8 stor7;
uint256 stor7;
uint256 cap;
uint256 sold;
uint256 stor10;

function sold() {
    return sold
}

function frozen() {
    return bool(uint8(stor7))
}

function cap() {
    return cap
}

function freezeBlock() {
    return freezeBlock
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function price() {
    return price
}

function locked() {
    return lockedAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeCap(uint256 arg1) {
    require msg.sender == stor0
    require arg1 > 0
    cap = arg1
}

function changePrice(uint256 arg1) {
    require msg.sender == stor0
    require arg1 > 0
    price = arg1
}

function toggleFreeze() {
    require msg.sender == stor0
    uint256(stor7) = not bool(uint8(stor7)) or Mask(248, 8, uint256(stor7))
}

function changeBlocks(uint256 arg1, uint256 arg2) {
    require msg.sender == stor0
    require arg1
    require arg2 >= arg1
    startBlock = arg1
    freezeBlock = arg2
}

function unlockEscrow() {
    require msg.sender == stor0
    require ext_code.size(lockedAddress)
    call lockedAddress.period() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp - stor10 > ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args lockedAddress
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args walletAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function purchaseTokens() payable {
    require block.number >= startBlock
    require block.number <= freezeBlock
    require not uint8(stor7)
    require sold < cap
    require price
    require msg.value % price <= msg.value
    require price
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value - (msg.value % price) / price <= ext_call.return_data[0]
    if msg.value % price > 0:
        call msg.sender with:
           value msg.value % price wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require sold + (msg.value - (msg.value % price) / price) >= sold
    sold += msg.value - (msg.value % price) / price
    require sold <= cap
    call walletAddress with:
       value msg.value - (msg.value % price) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value - (msg.value % price) / price
    require ext_call.success
    require ext_call.return_data[0]
    emit PurchasedTokens((msg.value - (msg.value % price) / price), msg.sender);
}



}

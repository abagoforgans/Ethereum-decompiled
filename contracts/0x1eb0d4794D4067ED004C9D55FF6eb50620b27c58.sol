contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    stor0 = msg.sender
    return code.data[64 len 3177]
}



// =====================  Runtime code  =====================


const end_time = (418071 * 3600)

const time = block.timestamp

const start_amount = 60000000 * 10^18

const goal = 2000 * 10^18

const start_time = (417327 * 3600)

const price = 5 * 10^14

const bonus_amount = 10000000 * 10^18

const bonus_price = 4 * 10^14


address owner;
address tokenAddress;
address dev_multisigAddress;
uint256 total_raised;
uint256 contributors_count;
uint8 stor5;
mapping of uint256 stor6;

function owner() {
    return owner
}

function total_raised() {
    return total_raised
}

function dev_multisig() {
    return dev_multisigAddress
}

function contributors_count() {
    return contributors_count
}

function token() {
    return tokenAddress
}

function destroy() {
    require owner == msg.sender
    if block.timestamp <= 422391 * 3600:
    selfdestruct(dev_multisigAddress)
}

function is_success() {
    if bool(stor5) != 1:
        return (1 == bool(stor5))
    return total_raised >= 2000 * 10^18
}

function init(address arg1, address arg2) {
    require owner == msg.sender
    require not tokenAddress
    tokenAddress = arg1
    dev_multisigAddress = arg2
}

function collect() {
    require total_raised >= 2000 * 10^18
    call dev_multisigAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function my_token_balance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function refund() {
    require total_raised < 2000 * 10^18
    require stor5
    if stor6[address(msg.sender)] > 0:
        stor6[address(msg.sender)] = 0
        call msg.sender with:
           value stor6[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function available_with_bonus() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < 50000000 * 10^18:
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return (ext_call.return_data[0] - 50000000 * 10^18)
}

function closeCrowdsale() {
    require not stor5
    require block.timestamp > 417327 * 3600
    if block.timestamp <= 418071 * 3600:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require not ext_call.return_data[0]
    stor5 = 1
    if 1 == bool(stor5):
        if total_raised >= 2000 * 10^18:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa69df4b5 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            if ext_call.return_data[0] > 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args 177, ext_call.return_data[0]
                require ext_call.success
}

function _fallback() payable {
    require block.timestamp >= 417327 * 3600
    require block.timestamp <= 418071 * 3600
    require msg.value >= 10^16
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    require bool(stor5) != 1
    require msg.value == uint128(msg.value)
    require (10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14 == uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] < 50000000 * 10^18:
        if uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) > 0:
            require msg.value <= msg.value
            if 0 >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14):
                require msg.value <= 0
                require total_raised + msg.value >= total_raised
                total_raised += msg.value
                if not stor6[address(msg.sender)]:
                    contributors_count++
                require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
            else:
                require msg.value == uint128(msg.value)
                require (10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14 == uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] <= 50000000 * 10^18:
                    if uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14) <= ext_call.return_data[0]:
                        require uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14) == uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)
                        require (5 * 10^14 * uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18)
                        require msg.value - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= msg.value
                        require uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14) >= 0
                        require msg.value - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)
                    else:
                        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                        require (5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
                        require msg.value - uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18) <= msg.value
                        require ext_call.return_data[16 len 16] >= 0
                        require msg.value - uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(ext_call.return_data[0])
                else:
                    if uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14) > 50000000 * 10^18:
                        require msg.value - 25000 * 10^18 <= msg.value
                        require msg.value - 25000 * 10^18 <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 50000000 * 10^18
                    else:
                        require uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14) == uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)
                        require (5 * 10^14 * uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18)
                        require msg.value - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= msg.value
                        require uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14) >= 0
                        require msg.value - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((10^18 * uint128(msg.value)) + 25 * 10^13 / 5 * 10^14)
        else:
            require uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) == uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
            require (4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18 == uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18)
            require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) <= msg.value
            if uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14):
                require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                require total_raised + msg.value >= total_raised
                total_raised += msg.value
                if not stor6[address(msg.sender)]:
                    contributors_count++
                require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
            else:
                require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) == uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))
                require (10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14 == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] <= 50000000 * 10^18:
                    if uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) <= ext_call.return_data[0]:
                        require uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                        require (5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
                        require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14))
                    else:
                        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                        require (5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18) <= 0
                        require uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + ext_call.return_data[0]) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
                        require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + ext_call.return_data[0])
                else:
                    if uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) > 50000000 * 10^18:
                        require uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + 50000000 * 10^18) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
                        require msg.value + -uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) - 25000 * 10^18 <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + 50000000 * 10^18)
                    else:
                        require uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                        require (5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
                        require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14))
    else:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) <= ext_call.return_data[0] - 50000000 * 10^18:
            require uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) == uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
            require (4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18 == uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18)
            require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) <= msg.value
            if uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14):
                require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                require total_raised + msg.value >= total_raised
                total_raised += msg.value
                if not stor6[address(msg.sender)]:
                    contributors_count++
                require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
            else:
                require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) == uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))
                require (10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14 == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] <= 50000000 * 10^18:
                    if uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) <= ext_call.return_data[0]:
                        require uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                        require (5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
                        require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14))
                    else:
                        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                        require (5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18) <= 0
                        require uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + ext_call.return_data[0]) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
                        require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + ext_call.return_data[0])
                else:
                    if uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) > 50000000 * 10^18:
                        require uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + 50000000 * 10^18) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
                        require msg.value + -uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) - 25000 * 10^18 <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + 50000000 * 10^18)
                    else:
                        require uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                        require (5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)
                        require msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14) + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14))
        else:
            require ext_call.return_data[0] - 50000000 * 10^18 == uint128(ext_call.return_data[0] - 50000000 * 10^18)
            require (4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18 == uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18)
            require msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18) <= msg.value
            if uint128(ext_call.return_data[0] - 50000000 * 10^18) >= uint128((10^18 * uint128(msg.value)) + 2 * 10^14 / 4 * 10^14):
                require msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18) <= 0
                require total_raised + msg.value >= total_raised
                total_raised += msg.value
                if not stor6[address(msg.sender)]:
                    contributors_count++
                require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                stor6[address(msg.sender)] += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, uint128(ext_call.return_data[0] - 50000000 * 10^18)
            else:
                require msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18) == uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))
                require (10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14 == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                if ext_call.return_data[0] <= 50000000 * 10^18:
                    if uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) <= ext_call.return_data[0]:
                        require uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                        require (5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require uint128(ext_call.return_data[0] + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) - 50000000 * 10^18) >= uint128(ext_call.return_data[0] - 50000000 * 10^18)
                        require msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(ext_call.return_data[0] + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) - 50000000 * 10^18)
                    else:
                        require ext_call.return_data[0] == ext_call.return_data[16 len 16]
                        require (5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18) <= 0
                        require uint128((2 * ext_call.return_data[0]) - 50000000 * 10^18) >= uint128(ext_call.return_data[0] - 50000000 * 10^18)
                        require msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * ext_call.return_data[16 len 16]) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128((2 * ext_call.return_data[0]) - 50000000 * 10^18)
                else:
                    if uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) > 50000000 * 10^18:
                        require uint128(ext_call.return_data[0]) >= uint128(ext_call.return_data[0] - 50000000 * 10^18)
                        require msg.value + -uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18) - 25000 * 10^18 <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(ext_call.return_data[0])
                    else:
                        require uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) == uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)
                        require (5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18 == uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18)
                        require -uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require uint128(ext_call.return_data[0] + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) - 50000000 * 10^18) >= uint128(ext_call.return_data[0] - 50000000 * 10^18)
                        require msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18) - uint128((5 * 10^14 * uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14)) + 5 * 10^17 / 10^18) <= 0
                        require total_raised + msg.value >= total_raised
                        total_raised += msg.value
                        if not stor6[address(msg.sender)]:
                            contributors_count++
                        require stor6[address(msg.sender)] + msg.value >= stor6[address(msg.sender)]
                        stor6[address(msg.sender)] += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, uint128(ext_call.return_data[0] + uint128((10^18 * uint128(msg.value - uint128((4 * 10^14 * uint128(ext_call.return_data[0] - 50000000 * 10^18)) + 5 * 10^17 / 10^18))) + 25 * 10^13 / 5 * 10^14) - 50000000 * 10^18)
    require ext_call.success
}



}

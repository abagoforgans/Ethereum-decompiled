contract main {




// =====================  Runtime code  =====================


address coinAddress;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 sub_d6a88fc7;
uint256 tokensSold;

function coin() {
    return coinAddress
}

function tokensSold() {
    return tokensSold
}

function sub_d6a88fc7(?) {
    return sub_d6a88fc7
}

function withdrawFunds() {
    require msg.sender == stor1
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == stor1
    require ext_code.size(coinAddress)
    call coinAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require msg.value
    if tokensSold >= 1725 * 10^10:
        if tokensSold >= 345 * 10^11:
            require stor2
            sub_d6a88fc7 = stor2
            require ext_code.size(coinAddress)
            staticcall coinAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(coinAddress)
            if msg.value / stor2 <= ext_call.return_data[0]:
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value / stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                tokensSold += msg.value / stor2
            else:
                staticcall coinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(coinAddress)
                staticcall coinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                tokensSold += ext_call.return_data[0]
                call msg.sender with:
                   value (msg.value / stor2 * stor2) - (ext_call.return_data[0] * stor2) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            require stor4
            sub_d6a88fc7 = stor4
            require ext_code.size(coinAddress)
            staticcall coinAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(coinAddress)
            if tokensSold + (msg.value / stor4) <= 345 * 10^11:
                if msg.value / stor4 <= ext_call.return_data[0]:
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, msg.value / stor4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += msg.value / stor4
                else:
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += ext_call.return_data[0]
                    call msg.sender with:
                       value (msg.value / stor4 * stor4) - (ext_call.return_data[0] * stor4) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if -tokensSold + 345 * 10^11 <= ext_call.return_data[0]:
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -tokensSold + 345 * 10^11
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold = 345 * 10^11
                else:
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += ext_call.return_data[0]
                    call msg.sender with:
                       value (345 * 10^11 * stor4) - (tokensSold * stor4) - (ext_call.return_data[0] * stor4) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                require stor2
                sub_d6a88fc7 = stor2
                require ext_code.size(coinAddress)
                staticcall coinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(coinAddress)
                if (-345 * 10^11 * stor4) + (msg.value / stor4 * stor4) + (tokensSold * stor4) / stor2 <= ext_call.return_data[0]:
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (-345 * 10^11 * stor4) + (msg.value / stor4 * stor4) + (tokensSold * stor4) / stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += (-345 * 10^11 * stor4) + (msg.value / stor4 * stor4) + (tokensSold * stor4) / stor2
                else:
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += ext_call.return_data[0]
                    call msg.sender with:
                       value ((-345 * 10^11 * stor4) + (msg.value / stor4 * stor4) + (tokensSold * stor4) / stor2 * stor2) - (ext_call.return_data[0] * stor2) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
    else:
        require stor3
        sub_d6a88fc7 = stor3
        require ext_code.size(coinAddress)
        staticcall coinAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(coinAddress)
        if tokensSold + (msg.value / stor3) <= 1725 * 10^10:
            if msg.value / stor3 <= ext_call.return_data[0]:
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, msg.value / stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                tokensSold += msg.value / stor3
            else:
                staticcall coinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(coinAddress)
                staticcall coinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                tokensSold += ext_call.return_data[0]
                call msg.sender with:
                   value (msg.value / stor3 * stor3) - (ext_call.return_data[0] * stor3) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if -tokensSold + 1725 * 10^10 <= ext_call.return_data[0]:
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, -tokensSold + 1725 * 10^10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                tokensSold = 1725 * 10^10
            else:
                staticcall coinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(coinAddress)
                staticcall coinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(coinAddress)
                call coinAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                tokensSold += ext_call.return_data[0]
                call msg.sender with:
                   value (1725 * 10^10 * stor3) - (tokensSold * stor3) - (ext_call.return_data[0] * stor3) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            require stor4
            sub_d6a88fc7 = stor4
            require ext_code.size(coinAddress)
            staticcall coinAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(coinAddress)
            if tokensSold + ((-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4) <= 345 * 10^11:
                if (-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4 <= ext_call.return_data[0]:
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += (-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4
                else:
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += ext_call.return_data[0]
                    call msg.sender with:
                       value ((-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4 * stor4) - (ext_call.return_data[0] * stor4) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if -tokensSold + 345 * 10^11 <= ext_call.return_data[0]:
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, -tokensSold + 345 * 10^11
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold = 345 * 10^11
                else:
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += ext_call.return_data[0]
                    call msg.sender with:
                       value (345 * 10^11 * stor4) - (tokensSold * stor4) - (ext_call.return_data[0] * stor4) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                require stor2
                sub_d6a88fc7 = stor2
                require ext_code.size(coinAddress)
                staticcall coinAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(coinAddress)
                if (-345 * 10^11 * stor4) + ((-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4 * stor4) + (tokensSold * stor4) / stor2 <= ext_call.return_data[0]:
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (-345 * 10^11 * stor4) + ((-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4 * stor4) + (tokensSold * stor4) / stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += (-345 * 10^11 * stor4) + ((-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4 * stor4) + (tokensSold * stor4) / stor2
                else:
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    staticcall coinAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    tokensSold += ext_call.return_data[0]
                    call msg.sender with:
                       value ((-345 * 10^11 * stor4) + ((-1725 * 10^10 * stor3) + (msg.value / stor3 * stor3) + (tokensSold * stor3) / stor4 * stor4) + (tokensSold * stor4) / stor2 * stor2) - (ext_call.return_data[0] * stor2) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}



}

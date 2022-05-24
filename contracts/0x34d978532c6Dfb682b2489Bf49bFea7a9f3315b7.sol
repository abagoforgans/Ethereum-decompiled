contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address stor2;
uint256 raisedETH;
uint256 soldTokens;
uint256 saleMinimum;
uint256 price;
uint256 sub_4d005ef2;
uint256 sub_4638681d;
uint256 sub_5b9c8233;
uint256 sub_31b0934f;
uint256 sub_b6ebc169;
uint256 hardCap;
uint8 stor13;
uint8 stor13; offset 8
uint8 stor13; offset 16
uint8 phase; offset 184
uint8 state; offset 192
uint16 stor13;
uint32 stor13;
address beneficiaryAddress; offset 24
uint256 stor13; offset 8
uint256 stor13; offset 16
uint256 stor13; offset 8
uint256 stor13;

function sub_020cb99f(?) {
    return bool(uint8(stor13.field_8))
}

function saleMinimum() {
    return saleMinimum
}

function sub_18989fd0(?) {
    return bool(uint8(stor13.field_16))
}

function raisedETH() {
    return raisedETH
}

function sub_31b0934f(?) {
    return sub_31b0934f
}

function beneficiary() {
    return beneficiaryAddress
}

function sub_4638681d(?) {
    return sub_4638681d
}

function sub_4a8c3016(?) {
    return bool(uint8(stor13.field_0))
}

function sub_4d005ef2(?) {
    return sub_4d005ef2
}

function sub_5b9c8233(?) {
    return sub_5b9c8233
}

function soldTokens() {
    return soldTokens
}

function owner() {
    return owner
}

function price() {
    return price
}

function phase() {
    require phase <= 2
    return phase
}

function sub_b6ebc169(?) {
    return sub_b6ebc169
}

function state() {
    require state <= 2
    return state
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function destroyContract() {
    require msg.sender == owner
    selfdestruct(owner)
}

function changeRate(uint256 arg1) {
    require msg.sender == owner
    price = arg1
}

function changeSaleMinimum(uint256 arg1) {
    require msg.sender == owner
    saleMinimum = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function openSale() {
    require msg.sender == owner
    require state <= 2
    require not state
    state = 1
    emit ActiveState()
}

function pauseSale() {
    require msg.sender == owner
    require state <= 2
    require state == 1
    state = 0
    emit DormantState()
}

function endSale() {
    require msg.sender == owner
    require state <= 2
    if state != 1:
        require state <= 2
        require not state
    state = 2
    emit SuccessfulState()
}

function sub_d55a7399(?) {
    require ext_code.size(stor2)
    call stor2.USD(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * saleMinimum)
}

function changePhase(uint256 arg1) {
    require msg.sender == owner
    if 1 == arg1:
        phase = 0
    else:
        if 2 == arg1:
            phase = 1
        else:
            if 3 == arg1:
                uint8(stor13.field_0) = 1
                Mask(248, 0, stor13.field_8) = Mask(176, 0, stor13.field_8)
                phase = 2
}

function changeBonus(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2
    if 1 == arg1:
        sub_4d005ef2 = arg2
    else:
        if 2 == arg1:
            sub_4638681d = arg2
        else:
            if 3 == arg1:
                sub_5b9c8233 = arg2
            else:
                if 4 == arg1:
                    sub_31b0934f = arg2
                else:
                    if 5 == arg1:
                        sub_b6ebc169 = arg2
}

function sub_5e4198cc(?) {
    require msg.sender == owner
    if 1 == arg1:
        uint8(stor13.field_0) = 1
    else:
        if 2 == arg1:
            uint256(stor13.field_0) = 256 or Mask(240, 16, uint256(stor13.field_0)) or uint8(stor13.field_0) and -16711936
        else:
            if arg1 != 3:
                if not arg1:
                    stor13.field_0 % 16777216 = 0
            else:
                uint16(stor13.field_0) = 0
                uint8(stor13.field_16) = 1
                Mask(240, 0, stor13.field_16) = 0
}

function emergencyFlush() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    require ext_code.size(stor2)
    call stor2.USD(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require msg.value >= ext_call.return_data[0] * saleMinimum
        require state <= 2
        require state == 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_call.return_data[0] > 0
            if raisedETH <= hardCap:
                require phase <= 2
                if phase:
                    require phase <= 2
                    if phase != 1:
                        require phase <= 2
                        if phase != 1:
                            price = 0
                            require phase <= 2
                            if phase:
                                require phase <= 2
                                if phase != 1:
                                    require phase <= 2
                                    if phase != 2:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require soldTokens >= soldTokens
                                                emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if not uint8(stor13.field_0):
                                                if not uint8(stor13.field_8):
                                                    if not uint8(stor13.field_16):
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if price * msg.value / 10^18:
                                                        require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                if price * msg.value / 10^18:
                                                    require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            if not uint8(stor13.field_0):
                                                if not uint8(stor13.field_8):
                                                    if not uint8(stor13.field_16):
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                else:
                                    if msg.value:
                                        require price * msg.value / msg.value == price
                                        if price * msg.value / 10^18:
                                            require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                    emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                        else:
                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens += price * msg.value / 10^18
                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require soldTokens >= soldTokens
                                                emit BoughtTokens(0, msg.value, msg.sender);
                            else:
                                if msg.value:
                                    require price * msg.value / msg.value == price
                                    if price * msg.value / 10^18:
                                        require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                    else:
                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                soldTokens += price * msg.value / 10^18
                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                else:
                                    call beneficiaryAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require msg.value + raisedETH >= raisedETH
                                            raisedETH += msg.value
                                            require soldTokens >= soldTokens
                                            emit BoughtTokens(0, msg.value, msg.sender);
                        else:
                            require ext_code.size(stor2)
                            call stor2.USD(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.ETH(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 60 * ext_call.return_data[0]
                                    price = ext_call.return_data[0] / 60 * ext_call.return_data[0]
                                    require phase <= 2
                                    if phase:
                                        require phase <= 2
                                        if phase != 1:
                                            require phase <= 2
                                            if phase != 2:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                    else:
                        require ext_code.size(stor2)
                        call stor2.USD(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(stor2)
                            call stor2.ETH(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 45 * ext_call.return_data[0]
                                price = ext_call.return_data[0] / 45 * ext_call.return_data[0]
                                require phase <= 2
                                if phase:
                                    require phase <= 2
                                    if phase != 1:
                                        require phase <= 2
                                        if phase != 2:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if not uint8(stor13.field_0):
                                                    if not uint8(stor13.field_8):
                                                        if not uint8(stor13.field_16):
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                            require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if price * msg.value / 10^18:
                                                        require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                        require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                if not uint8(stor13.field_0):
                                                    if not uint8(stor13.field_8):
                                                        if not uint8(stor13.field_16):
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                else:
                                    if msg.value:
                                        require price * msg.value / msg.value == price
                                        if price * msg.value / 10^18:
                                            require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                            require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                    emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                        else:
                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens += price * msg.value / 10^18
                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require soldTokens >= soldTokens
                                                emit BoughtTokens(0, msg.value, msg.sender);
                else:
                    require ext_code.size(stor2)
                    call stor2.USD(uint256 arg1) with:
                         gas gas_remaining wei
                        args 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        require ext_code.size(stor2)
                        call stor2.ETH(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require 30 * ext_call.return_data[0]
                            price = ext_call.return_data[0] / 30 * ext_call.return_data[0]
                            require phase <= 2
                            if phase:
                                require phase <= 2
                                if phase != 1:
                                    require phase <= 2
                                    if phase != 2:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require soldTokens >= soldTokens
                                                emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if not uint8(stor13.field_0):
                                                if not uint8(stor13.field_8):
                                                    if not uint8(stor13.field_16):
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if price * msg.value / 10^18:
                                                        require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                if price * msg.value / 10^18:
                                                    require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            if not uint8(stor13.field_0):
                                                if not uint8(stor13.field_8):
                                                    if not uint8(stor13.field_16):
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                else:
                                    if msg.value:
                                        require price * msg.value / msg.value == price
                                        if price * msg.value / 10^18:
                                            require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                    emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                        else:
                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens += price * msg.value / 10^18
                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require soldTokens >= soldTokens
                                                emit BoughtTokens(0, msg.value, msg.sender);
                            else:
                                if msg.value:
                                    require price * msg.value / msg.value == price
                                    if price * msg.value / 10^18:
                                        require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                    else:
                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                soldTokens += price * msg.value / 10^18
                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                else:
                                    call beneficiaryAddress with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args msg.sender, 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require msg.value + raisedETH >= raisedETH
                                            raisedETH += msg.value
                                            require soldTokens >= soldTokens
                                            emit BoughtTokens(0, msg.value, msg.sender);
            else:
                require phase <= 2
                if phase:
                    require phase <= 2
                    if phase != 1:
                        require phase <= 2
                        if phase:
                            require phase <= 2
                            if phase != 1:
                                require phase <= 2
                                if phase != 1:
                                    price = 0
                                    require phase <= 2
                                    if phase:
                                        require phase <= 2
                                        if phase != 1:
                                            require phase <= 2
                                            if phase != 2:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.USD(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(stor2)
                                        call stor2.ETH(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 60 * ext_call.return_data[0]
                                            price = ext_call.return_data[0] / 60 * ext_call.return_data[0]
                                            require phase <= 2
                                            if phase:
                                                require phase <= 2
                                                if phase != 1:
                                                    require phase <= 2
                                                    if phase != 2:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        if msg.value:
                                                            require price * msg.value / msg.value == price
                                                            if not uint8(stor13.field_0):
                                                                if not uint8(stor13.field_8):
                                                                    if not uint8(stor13.field_16):
                                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens += price * msg.value / 10^18
                                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                                    else:
                                                                        if price * msg.value / 10^18:
                                                                            require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                            call beneficiaryAddress with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(tokenAddress)
                                                                                call tokenAddress.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require msg.value + raisedETH >= raisedETH
                                                                                    raisedETH += msg.value
                                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                    soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                                    emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                        else:
                                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                            call beneficiaryAddress with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(tokenAddress)
                                                                                call tokenAddress.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require msg.value + raisedETH >= raisedETH
                                                                                    raisedETH += msg.value
                                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                    soldTokens += price * msg.value / 10^18
                                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                                else:
                                                                    if price * msg.value / 10^18:
                                                                        require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                                emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                    else:
                                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens += price * msg.value / 10^18
                                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if not uint8(stor13.field_0):
                                                                if not uint8(stor13.field_8):
                                                                    if not uint8(stor13.field_16):
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require soldTokens >= soldTokens
                                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                                    else:
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require soldTokens >= soldTokens
                                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                                else:
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require soldTokens >= soldTokens
                                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    if msg.value:
                                                        require price * msg.value / msg.value == price
                                                        if price * msg.value / 10^18:
                                                            require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if price * msg.value / 10^18:
                                                        require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                            else:
                                require ext_code.size(stor2)
                                call stor2.USD(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(stor2)
                                    call stor2.ETH(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 45 * ext_call.return_data[0]
                                        price = ext_call.return_data[0] / 45 * ext_call.return_data[0]
                                        require phase <= 2
                                        if phase:
                                            require phase <= 2
                                            if phase != 1:
                                                require phase <= 2
                                                if phase != 2:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    if msg.value:
                                                        require price * msg.value / msg.value == price
                                                        if not uint8(stor13.field_0):
                                                            if not uint8(stor13.field_8):
                                                                if not uint8(stor13.field_16):
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                                else:
                                                                    if price * msg.value / 10^18:
                                                                        require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                        require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                                emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                    else:
                                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens += price * msg.value / 10^18
                                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                    require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                                require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if not uint8(stor13.field_0):
                                                            if not uint8(stor13.field_8):
                                                                if not uint8(stor13.field_16):
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require soldTokens >= soldTokens
                                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                                else:
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require soldTokens >= soldTokens
                                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if price * msg.value / 10^18:
                                                        require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                        require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                    require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                        else:
                            require ext_code.size(stor2)
                            call stor2.USD(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.ETH(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 30 * ext_call.return_data[0]
                                    price = ext_call.return_data[0] / 30 * ext_call.return_data[0]
                                    require phase <= 2
                                    if phase:
                                        require phase <= 2
                                        if phase != 1:
                                            require phase <= 2
                                            if phase != 2:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                    else:
                        require msg.sender == owner
                        uint8(stor13.field_0) = 1
                        Mask(248, 0, stor13.field_8) = Mask(176, 0, stor13.field_8)
                        phase = 2
                        require phase <= 2
                        if phase:
                            require phase <= 2
                            if phase != 1:
                                require phase <= 2
                                if phase != 1:
                                    price = 0
                                    require phase <= 2
                                    if phase:
                                        require phase <= 2
                                        if phase != 1:
                                            require phase <= 2
                                            if phase != 2:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                else:
                                    require ext_code.size(stor2)
                                    call stor2.USD(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(stor2)
                                        call stor2.ETH(uint256 arg1) with:
                                             gas gas_remaining wei
                                            args 0
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            require 60 * ext_call.return_data[0]
                                            price = ext_call.return_data[0] / 60 * ext_call.return_data[0]
                                            require phase <= 2
                                            if phase:
                                                require phase <= 2
                                                if phase != 1:
                                                    require phase <= 2
                                                    if phase != 2:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        if msg.value:
                                                            require price * msg.value / msg.value == price
                                                            if not uint8(stor13.field_0):
                                                                if not uint8(stor13.field_8):
                                                                    if not uint8(stor13.field_16):
                                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens += price * msg.value / 10^18
                                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                                    else:
                                                                        if price * msg.value / 10^18:
                                                                            require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                            call beneficiaryAddress with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(tokenAddress)
                                                                                call tokenAddress.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require msg.value + raisedETH >= raisedETH
                                                                                    raisedETH += msg.value
                                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                    soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                                    emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                        else:
                                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                            call beneficiaryAddress with:
                                                                               value msg.value wei
                                                                                 gas 2300 * is_zero(value) wei
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require ext_code.size(tokenAddress)
                                                                                call tokenAddress.0xa9059cbb with:
                                                                                     gas gas_remaining wei
                                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                                    require return_data.size >= 32
                                                                                    require msg.value + raisedETH >= raisedETH
                                                                                    raisedETH += msg.value
                                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                    soldTokens += price * msg.value / 10^18
                                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                                else:
                                                                    if price * msg.value / 10^18:
                                                                        require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                                emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                    else:
                                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens += price * msg.value / 10^18
                                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if not uint8(stor13.field_0):
                                                                if not uint8(stor13.field_8):
                                                                    if not uint8(stor13.field_16):
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require soldTokens >= soldTokens
                                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                                    else:
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 0
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require soldTokens >= soldTokens
                                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                                else:
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require soldTokens >= soldTokens
                                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    if msg.value:
                                                        require price * msg.value / msg.value == price
                                                        if price * msg.value / 10^18:
                                                            require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if price * msg.value / 10^18:
                                                        require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                            else:
                                require ext_code.size(stor2)
                                call stor2.USD(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(stor2)
                                    call stor2.ETH(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 45 * ext_call.return_data[0]
                                        price = ext_call.return_data[0] / 45 * ext_call.return_data[0]
                                        require phase <= 2
                                        if phase:
                                            require phase <= 2
                                            if phase != 1:
                                                require phase <= 2
                                                if phase != 2:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    if msg.value:
                                                        require price * msg.value / msg.value == price
                                                        if not uint8(stor13.field_0):
                                                            if not uint8(stor13.field_8):
                                                                if not uint8(stor13.field_16):
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                                else:
                                                                    if price * msg.value / 10^18:
                                                                        require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                        require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                                emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                    else:
                                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens += price * msg.value / 10^18
                                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                    require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                                require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if not uint8(stor13.field_0):
                                                            if not uint8(stor13.field_8):
                                                                if not uint8(stor13.field_16):
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require soldTokens >= soldTokens
                                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                                else:
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require soldTokens >= soldTokens
                                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if price * msg.value / 10^18:
                                                        require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                        require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                    require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                        else:
                            require ext_code.size(stor2)
                            call stor2.USD(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.ETH(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 30 * ext_call.return_data[0]
                                    price = ext_call.return_data[0] / 30 * ext_call.return_data[0]
                                    require phase <= 2
                                    if phase:
                                        require phase <= 2
                                        if phase != 1:
                                            require phase <= 2
                                            if phase != 2:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                else:
                    require msg.sender == owner
                    phase = 1
                    require phase <= 2
                    if phase:
                        require phase <= 2
                        if phase != 1:
                            require phase <= 2
                            if phase != 1:
                                price = 0
                                require phase <= 2
                                if phase:
                                    require phase <= 2
                                    if phase != 1:
                                        require phase <= 2
                                        if phase != 2:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if not uint8(stor13.field_0):
                                                    if not uint8(stor13.field_8):
                                                        if not uint8(stor13.field_16):
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                            require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if price * msg.value / 10^18:
                                                        require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                        require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                if not uint8(stor13.field_0):
                                                    if not uint8(stor13.field_8):
                                                        if not uint8(stor13.field_16):
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                else:
                                    if msg.value:
                                        require price * msg.value / msg.value == price
                                        if price * msg.value / 10^18:
                                            require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                            require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                    emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                        else:
                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens += price * msg.value / 10^18
                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require soldTokens >= soldTokens
                                                emit BoughtTokens(0, msg.value, msg.sender);
                            else:
                                require ext_code.size(stor2)
                                call stor2.USD(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(stor2)
                                    call stor2.ETH(uint256 arg1) with:
                                         gas gas_remaining wei
                                        args 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require 60 * ext_call.return_data[0]
                                        price = ext_call.return_data[0] / 60 * ext_call.return_data[0]
                                        require phase <= 2
                                        if phase:
                                            require phase <= 2
                                            if phase != 1:
                                                require phase <= 2
                                                if phase != 2:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    if msg.value:
                                                        require price * msg.value / msg.value == price
                                                        if not uint8(stor13.field_0):
                                                            if not uint8(stor13.field_8):
                                                                if not uint8(stor13.field_16):
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                                else:
                                                                    if price * msg.value / 10^18:
                                                                        require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                        require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                                emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                    else:
                                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                        call beneficiaryAddress with:
                                                                           value msg.value wei
                                                                             gas 2300 * is_zero(value) wei
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require ext_code.size(tokenAddress)
                                                                            call tokenAddress.0xa9059cbb with:
                                                                                 gas gas_remaining wei
                                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                                require return_data.size >= 32
                                                                                require msg.value + raisedETH >= raisedETH
                                                                                raisedETH += msg.value
                                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                                soldTokens += price * msg.value / 10^18
                                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                    require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                                require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if not uint8(stor13.field_0):
                                                            if not uint8(stor13.field_8):
                                                                if not uint8(stor13.field_16):
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require soldTokens >= soldTokens
                                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                                else:
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 0
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require soldTokens >= soldTokens
                                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if price * msg.value / 10^18:
                                                        require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                        require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                    require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                        else:
                            require ext_code.size(stor2)
                            call stor2.USD(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(stor2)
                                call stor2.ETH(uint256 arg1) with:
                                     gas gas_remaining wei
                                    args 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require 45 * ext_call.return_data[0]
                                    price = ext_call.return_data[0] / 45 * ext_call.return_data[0]
                                    require phase <= 2
                                    if phase:
                                        require phase <= 2
                                        if phase != 1:
                                            require phase <= 2
                                            if phase != 2:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                            else:
                                                if msg.value:
                                                    require price * msg.value / msg.value == price
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                            else:
                                                                if price * msg.value / 10^18:
                                                                    require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                    require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                            emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                                else:
                                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                    call beneficiaryAddress with:
                                                                       value msg.value wei
                                                                         gas 2300 * is_zero(value) wei
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require ext_code.size(tokenAddress)
                                                                        call tokenAddress.0xa9059cbb with:
                                                                             gas gas_remaining wei
                                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                            require return_data.size >= 32
                                                                            require msg.value + raisedETH >= raisedETH
                                                                            raisedETH += msg.value
                                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                            soldTokens += price * msg.value / 10^18
                                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                                require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                            require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if not uint8(stor13.field_0):
                                                        if not uint8(stor13.field_8):
                                                            if not uint8(stor13.field_16):
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                            else:
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 0
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require soldTokens >= soldTokens
                                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if price * msg.value / 10^18:
                                                    require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                    require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                            emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                else:
                                                    require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 10^18 * price * msg.value / 10^18
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                            soldTokens += price * msg.value / 10^18
                                                            emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require soldTokens >= soldTokens
                                                        emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                                require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                    else:
                        require ext_code.size(stor2)
                        call stor2.USD(uint256 arg1) with:
                             gas gas_remaining wei
                            args 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            require ext_code.size(stor2)
                            call stor2.ETH(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require 30 * ext_call.return_data[0]
                                price = ext_call.return_data[0] / 30 * ext_call.return_data[0]
                                require phase <= 2
                                if phase:
                                    require phase <= 2
                                    if phase != 1:
                                        require phase <= 2
                                        if phase != 2:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                        else:
                                            if msg.value:
                                                require price * msg.value / msg.value == price
                                                if not uint8(stor13.field_0):
                                                    if not uint8(stor13.field_8):
                                                        if not uint8(stor13.field_16):
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                        else:
                                                            if price * msg.value / 10^18:
                                                                require sub_b6ebc169 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_b6ebc169
                                                                require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, (10^18 * sub_b6ebc169 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens = (sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                        emit BoughtTokens((sub_b6ebc169 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                            else:
                                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                                call beneficiaryAddress with:
                                                                   value msg.value wei
                                                                     gas 2300 * is_zero(value) wei
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require ext_code.size(tokenAddress)
                                                                    call tokenAddress.0xa9059cbb with:
                                                                         gas gas_remaining wei
                                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                                    if not ext_call.success:
                                                                        revert with ext_call.return_data[0 len return_data.size]
                                                                    else:
                                                                        require return_data.size >= 32
                                                                        require msg.value + raisedETH >= raisedETH
                                                                        raisedETH += msg.value
                                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                        soldTokens += price * msg.value / 10^18
                                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                    else:
                                                        if price * msg.value / 10^18:
                                                            require sub_31b0934f * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_31b0934f
                                                            require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, (10^18 * sub_31b0934f * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens = (sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                    emit BoughtTokens((sub_31b0934f * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                        else:
                                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                    soldTokens += price * msg.value / 10^18
                                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                                else:
                                                    if price * msg.value / 10^18:
                                                        require sub_5b9c8233 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_5b9c8233
                                                        require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, (10^18 * sub_5b9c8233 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens = (sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                                emit BoughtTokens((sub_5b9c8233 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                                    else:
                                                        require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 10^18 * price * msg.value / 10^18
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                                soldTokens += price * msg.value / 10^18
                                                                emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                            else:
                                                if not uint8(stor13.field_0):
                                                    if not uint8(stor13.field_8):
                                                        if not uint8(stor13.field_16):
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                        else:
                                                            call beneficiaryAddress with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require ext_code.size(tokenAddress)
                                                                call tokenAddress.0xa9059cbb with:
                                                                     gas gas_remaining wei
                                                                    args msg.sender, 0
                                                                if not ext_call.success:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                else:
                                                                    require return_data.size >= 32
                                                                    require msg.value + raisedETH >= raisedETH
                                                                    raisedETH += msg.value
                                                                    require soldTokens >= soldTokens
                                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                                    else:
                                                        call beneficiaryAddress with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require ext_code.size(tokenAddress)
                                                            call tokenAddress.0xa9059cbb with:
                                                                 gas gas_remaining wei
                                                                args msg.sender, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                require msg.value + raisedETH >= raisedETH
                                                                raisedETH += msg.value
                                                                require soldTokens >= soldTokens
                                                                emit BoughtTokens(0, msg.value, msg.sender);
                                                else:
                                                    call beneficiaryAddress with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require ext_code.size(tokenAddress)
                                                        call tokenAddress.0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args msg.sender, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require msg.value + raisedETH >= raisedETH
                                                            raisedETH += msg.value
                                                            require soldTokens >= soldTokens
                                                            emit BoughtTokens(0, msg.value, msg.sender);
                                    else:
                                        if msg.value:
                                            require price * msg.value / msg.value == price
                                            if price * msg.value / 10^18:
                                                require sub_4638681d * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4638681d
                                                require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, (10^18 * sub_4638681d * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens = (sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                        emit BoughtTokens((sub_4638681d * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                            else:
                                                require price * msg.value / 10^18 >= price * msg.value / 10^18
                                                call beneficiaryAddress with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args msg.sender, 10^18 * price * msg.value / 10^18
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require msg.value + raisedETH >= raisedETH
                                                        raisedETH += msg.value
                                                        require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                        soldTokens += price * msg.value / 10^18
                                                        emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                        else:
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require soldTokens >= soldTokens
                                                    emit BoughtTokens(0, msg.value, msg.sender);
                                else:
                                    if msg.value:
                                        require price * msg.value / msg.value == price
                                        if price * msg.value / 10^18:
                                            require sub_4d005ef2 * price * msg.value / 10^18 / price * msg.value / 10^18 == sub_4d005ef2
                                            require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, (10^18 * sub_4d005ef2 * price * msg.value / 10^18 / 100) + (10^18 * price * msg.value / 10^18)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens = (sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18) + soldTokens
                                                    emit BoughtTokens((sub_4d005ef2 * price * msg.value / 10^18 / 100) + (price * msg.value / 10^18), msg.value, msg.sender);
                                        else:
                                            require price * msg.value / 10^18 >= price * msg.value / 10^18
                                            call beneficiaryAddress with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require ext_code.size(tokenAddress)
                                                call tokenAddress.0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, 10^18 * price * msg.value / 10^18
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require msg.value + raisedETH >= raisedETH
                                                    raisedETH += msg.value
                                                    require (price * msg.value / 10^18) + soldTokens >= soldTokens
                                                    soldTokens += price * msg.value / 10^18
                                                    emit BoughtTokens(price * msg.value / 10^18, msg.value, msg.sender);
                                    else:
                                        call beneficiaryAddress with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require ext_code.size(tokenAddress)
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require msg.value + raisedETH >= raisedETH
                                                raisedETH += msg.value
                                                require soldTokens >= soldTokens
                                                emit BoughtTokens(0, msg.value, msg.sender);
}



}

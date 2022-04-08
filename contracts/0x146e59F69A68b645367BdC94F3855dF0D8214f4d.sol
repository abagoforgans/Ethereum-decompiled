contract main {


// =======================  Init code  ======================


uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
uint8 stor10; offset 152
address stor10;

function _fallback() payable {
    stor6 = 200000 * 10^18
    stor7 = 420
    stor8 = 0xd43d09ec1bc5e57c8f3d0c64020d403b04c7f783
    stor9 = 0xb97048628db6b661d4c2aa833e95dbe1a905b280
    Mask(152, 0, stor10.field_0) = 0xfb8369677b3065de5821a86bc9551d5e5eab9
    uint8(stor10.field_152) = 0
    require not msg.value
    return code.data[149 len 1916]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint8 stor1;
uint256 bounty;
uint8 stor3;
uint256 time_bought;
uint8 stor5;
uint256 stor6;
uint256 stor7;
address saleAddress;
address tokenAddress;
address stor10;

function balances(address arg1) {
    return balances[arg1]
}

function checked_in(address arg1) {
    return bool(stor1[arg1])
}

function bought_tokens() {
    return bool(stor3)
}

function sale() {
    return saleAddress
}

function bounty() {
    return bounty
}

function kill_switch() {
    return bool(stor5)
}

function time_bought() {
    return time_bought
}

function token() {
    return tokenAddress
}

function activate_kill_switch() {
    require stor10 == msg.sender
    stor5 = 1
}

function add_to_bounty() payable {
    require not stor5
    require not stor3
    bounty += msg.value
}

function buy() {
    if not stor3:
        require not stor5
        stor3 = 1
        time_bought = block.timestamp
        require ext_code.size(saleAddress)
        call saleAddress.0xcedbbeee with:
           value eth.balance(this.address) - bounty wei
             gas gas_remaining - 9710 wei
            args this.address
        require ext_call.success
        call msg.sender with:
           value bounty wei
             gas 2300 * is_zero(value) wei
}

function withdraw() {
    balances[address(msg.sender)] = 0
    if not stor3:
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if stor1[address(msg.sender)]:
            if ext_code.size(tokenAddress):
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, stor7 * balances[address(msg.sender)]
                if ext_call.success:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args stor10, 0
                        if ext_call.success:
        else:
            if ext_code.size(tokenAddress):
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (stor7 * balances[address(msg.sender)]) - (stor7 * balances[address(msg.sender)] / 100)
                if ext_call.success:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args stor10, stor7 * balances[address(msg.sender)] / 100
                        if ext_call.success:
    revert
}

function _fallback() payable {
    if msg.value:
        require not stor5
        require not stor3
        balances[address(msg.sender)] += msg.value
    if not stor3:
        balances[address(msg.sender)] = 0
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if block.timestamp < time_bought + (24 * 3600):
            require ext_code.size(saleAddress)
            call saleAddress.0x4a88eb89 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(saleAddress)
            call saleAddress.0xd0c03f35 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require eth.balance(ext_call.return_data[0]) + ext_call.return_data[0] <= stor6
            stor1[address(msg.sender)] = 1
        balances[address(msg.sender)] = 0
        if not stor3:
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
        else:
            if stor1[address(msg.sender)]:
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor7 * balances[address(msg.sender)]
                    if ext_call.success:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor10, 0
                            if ext_call.success:
            else:
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (stor7 * balances[address(msg.sender)]) - (stor7 * balances[address(msg.sender)] / 100)
                    if ext_call.success:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor10, stor7 * balances[address(msg.sender)] / 100
                            if ext_call.success:
    revert
}

function default_helper() payable {
    if msg.value:
        require not stor5
        require not stor3
        balances[address(msg.sender)] += msg.value
    if not stor3:
        balances[address(msg.sender)] = 0
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if block.timestamp < time_bought + (24 * 3600):
            require ext_code.size(saleAddress)
            call saleAddress.0x4a88eb89 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(saleAddress)
            call saleAddress.0xd0c03f35 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require eth.balance(ext_call.return_data[0]) + ext_call.return_data[0] <= stor6
            stor1[address(msg.sender)] = 1
        balances[address(msg.sender)] = 0
        if not stor3:
            call msg.sender with:
               value balances[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
        else:
            if stor1[address(msg.sender)]:
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, stor7 * balances[address(msg.sender)]
                    if ext_call.success:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor10, 0
                            if ext_call.success:
            else:
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (stor7 * balances[address(msg.sender)]) - (stor7 * balances[address(msg.sender)] / 100)
                    if ext_call.success:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor10, stor7 * balances[address(msg.sender)] / 100
                            if ext_call.success:
    revert
}



}

contract main {


// =======================  Init code  ======================


uint256 stor4;
uint256 stor5;
address stor6;
address stor7;
address stor8;

function _fallback() payable {
    stor4 = 200000 * 10^18
    stor5 = 420
    stor6 = 0xd43d09ec1bc5e57c8f3d0c64020d403b04c7f783
    stor7 = 0xb97048628db6b661d4c2aa833e95dbe1a905b280
    stor8 = 0x4e6a1c57cdbfd97e8efe831f8f4418b1f2a09e6e
    require not msg.value
    return code.data[150 len 1570]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
uint256 bounty;
uint8 stor2;
uint256 time_bought;
uint256 stor4;
uint256 stor5;
address saleAddress;
address tokenAddress;
address stor8;

function balances(address arg1) {
    return balances[arg1]
}

function bought_tokens() {
    return bool(stor2)
}

function sale() {
    return saleAddress
}

function bounty() {
    return bounty
}

function time_bought() {
    return time_bought
}

function token() {
    return tokenAddress
}

function add_to_bounty() payable {
    require not stor2
    bounty += msg.value
}

function buy() {
    if not stor2:
        stor2 = 1
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
    if not stor2:
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if ext_code.size(saleAddress):
            call saleAddress.0x4a88eb89 with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if ext_code.size(saleAddress):
                    call saleAddress.0xd0c03f35 with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if eth.balance(ext_call.return_data[0]) + ext_call.return_data[0] > stor4:
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (stor5 * balances[address(msg.sender)]) - (stor5 * balances[address(msg.sender)] / 100)
                                if ext_call.success:
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args stor8, stor5 * balances[address(msg.sender)] / 100
                                        if ext_call.success:
                        else:
                            if block.timestamp <= time_bought + (24 * 3600):
                                if ext_code.size(tokenAddress):
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, stor5 * balances[address(msg.sender)]
                                    if ext_call.success:
                                        if ext_code.size(tokenAddress):
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor8, 0
                                            if ext_call.success:
                            else:
                                if ext_code.size(tokenAddress):
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (stor5 * balances[address(msg.sender)]) - (stor5 * balances[address(msg.sender)] / 100)
                                    if ext_call.success:
                                        if ext_code.size(tokenAddress):
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor8, stor5 * balances[address(msg.sender)] / 100
                                            if ext_call.success:
    revert
}

function _fallback() payable {
    if msg.value:
        require not stor2
        balances[address(msg.sender)] += msg.value
    balances[address(msg.sender)] = 0
    if not stor2:
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if ext_code.size(saleAddress):
            call saleAddress.0x4a88eb89 with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if ext_code.size(saleAddress):
                    call saleAddress.0xd0c03f35 with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if eth.balance(ext_call.return_data[0]) + ext_call.return_data[0] > stor4:
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (stor5 * balances[address(msg.sender)]) - (stor5 * balances[address(msg.sender)] / 100)
                                if ext_call.success:
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args stor8, stor5 * balances[address(msg.sender)] / 100
                                        if ext_call.success:
                        else:
                            if block.timestamp <= time_bought + (24 * 3600):
                                if ext_code.size(tokenAddress):
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, stor5 * balances[address(msg.sender)]
                                    if ext_call.success:
                                        if ext_code.size(tokenAddress):
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor8, 0
                                            if ext_call.success:
                            else:
                                if ext_code.size(tokenAddress):
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (stor5 * balances[address(msg.sender)]) - (stor5 * balances[address(msg.sender)] / 100)
                                    if ext_call.success:
                                        if ext_code.size(tokenAddress):
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor8, stor5 * balances[address(msg.sender)] / 100
                                            if ext_call.success:
    revert
}

function default_helper() payable {
    if msg.value:
        require not stor2
        balances[address(msg.sender)] += msg.value
    balances[address(msg.sender)] = 0
    if not stor2:
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if ext_code.size(saleAddress):
            call saleAddress.0x4a88eb89 with:
                 gas gas_remaining - 710 wei
            if ext_call.success:
                if ext_code.size(saleAddress):
                    call saleAddress.0xd0c03f35 with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if eth.balance(ext_call.return_data[0]) + ext_call.return_data[0] > stor4:
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (stor5 * balances[address(msg.sender)]) - (stor5 * balances[address(msg.sender)] / 100)
                                if ext_call.success:
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args stor8, stor5 * balances[address(msg.sender)] / 100
                                        if ext_call.success:
                        else:
                            if block.timestamp <= time_bought + (24 * 3600):
                                if ext_code.size(tokenAddress):
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, stor5 * balances[address(msg.sender)]
                                    if ext_call.success:
                                        if ext_code.size(tokenAddress):
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor8, 0
                                            if ext_call.success:
                            else:
                                if ext_code.size(tokenAddress):
                                    call tokenAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (stor5 * balances[address(msg.sender)]) - (stor5 * balances[address(msg.sender)] / 100)
                                    if ext_call.success:
                                        if ext_code.size(tokenAddress):
                                            call tokenAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args stor8, stor5 * balances[address(msg.sender)] / 100
                                            if ext_call.success:
    revert
}



}

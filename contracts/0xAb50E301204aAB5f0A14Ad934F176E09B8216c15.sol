contract main {


// =======================  Init code  ======================


address stor3; offset 8
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0x4e6a1c57cdbfd97e8efe831f8f4418b1f2a09e6e
    require not msg.value
    return code.data[103 len 2356]
}



// =====================  Runtime code  =====================


mapping of uint256 deposits;
mapping of uint256 purchased_snt;
uint256 bounty;
uint8 stor3;
address saleAddress; offset 8
address dynamicAddress;
address tokenAddress;
address stor6;

function dynamic() {
    return dynamicAddress
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

function purchased_snt(address arg1) {
    return purchased_snt[arg1]
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    return deposits[arg1]
}

function _fallback() payable {
    revert
}

function add_bounty() payable {
    bounty += msg.value
}

function buy() {
    if not eth.balance(this.address):
    require ext_code.size(dynamicAddress)
    call dynamicAddress.currentIndex() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(dynamicAddress)
    call dynamicAddress.revealedCurves() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
        stor3 = 1
        if ext_code.size(0 or saleAddress):
            call 0 or saleAddress.proxyPayment(address rg1) with:
               value eth.balance(this.address) - bounty wei
                 gas gas_remaining - 9710 wei
                args this.address
            if ext_call.success:
                require eth.balance(this.address) <= eth.balance(this.address)
                if eth.balance(this.address):
                    bounty -= 0 / eth.balance(this.address)
                    call msg.sender with:
                       value 0 / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if ext_code.size(dynamicAddress):
            call dynamicAddress.curves(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            if ext_call.success:
                if ext_code.size(saleAddress):
                    call saleAddress.totalNormalCollected() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[32] <= ext_call.return_data[0]:
                        stor3 = 1
                        if ext_code.size(0 or saleAddress):
                            call 0 or saleAddress.proxyPayment(address rg1) with:
                               value eth.balance(this.address) - bounty wei
                                 gas gas_remaining - 9710 wei
                                args this.address
                            if ext_call.success:
                                require eth.balance(this.address) <= eth.balance(this.address)
                                if eth.balance(this.address):
                                    bounty -= 0 / eth.balance(this.address)
                                    call msg.sender with:
                                       value 0 / eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
    revert
}

function buy_for(address arg1) {
    if not eth.balance(this.address):
    require ext_code.size(dynamicAddress)
    call dynamicAddress.currentIndex() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(dynamicAddress)
    call dynamicAddress.revealedCurves() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] + 1 < ext_call.return_data[0]:
        stor3 = 1
        if ext_code.size(0 or saleAddress):
            call 0 or saleAddress.proxyPayment(address rg1) with:
               value eth.balance(this.address) - bounty wei
                 gas gas_remaining - 9710 wei
                args this.address
            if ext_call.success:
                require eth.balance(this.address) <= eth.balance(this.address)
                if eth.balance(this.address):
                    bounty -= 0 / eth.balance(this.address)
                    call arg1 with:
                       value 0 / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if ext_call.success:
    else:
        if ext_code.size(dynamicAddress):
            call dynamicAddress.curves(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            if ext_call.success:
                if ext_code.size(saleAddress):
                    call saleAddress.totalNormalCollected() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        if ext_call.return_data[32] <= ext_call.return_data[0]:
                        stor3 = 1
                        if ext_code.size(0 or saleAddress):
                            call 0 or saleAddress.proxyPayment(address rg1) with:
                               value eth.balance(this.address) - bounty wei
                                 gas gas_remaining - 9710 wei
                                args this.address
                            if ext_call.success:
                                require eth.balance(this.address) <= eth.balance(this.address)
                                if eth.balance(this.address):
                                    bounty -= 0 / eth.balance(this.address)
                                    call arg1 with:
                                       value 0 / eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
    revert
}

function withdraw() {
    deposits[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)
    if purchased_snt[address(msg.sender)] >= 10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty):
        if ext_code.size(tokenAddress):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)
            if ext_call.success:
                require ext_call.return_data[0]
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args stor6, 0
                    if ext_call.success:
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (10000 * eth.balance(this.address) * deposits[address(msg.sender)]) - (10000 * bounty * deposits[address(msg.sender)]) / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    else:
        if ext_code.size(tokenAddress):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - ((10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - purchased_snt[address(msg.sender)] / 100)
            if ext_call.success:
                require ext_call.return_data[0]
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args stor6, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - purchased_snt[address(msg.sender)] / 100
                    if ext_call.success:
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (10000 * eth.balance(this.address) * deposits[address(msg.sender)]) - (10000 * bounty * deposits[address(msg.sender)]) / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert
}

function default_helper() payable {
    if not stor3:
        deposits[address(msg.sender)] += msg.value
    require not msg.value
    deposits[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)
    if purchased_snt[address(msg.sender)] >= 10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty):
        if ext_code.size(tokenAddress):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)
            if ext_call.success:
                require ext_call.return_data[0]
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args stor6, 0
                    if ext_call.success:
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (10000 * eth.balance(this.address) * deposits[address(msg.sender)]) - (10000 * bounty * deposits[address(msg.sender)]) / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    else:
        if ext_code.size(tokenAddress):
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - ((10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - purchased_snt[address(msg.sender)] / 100)
            if ext_call.success:
                require ext_call.return_data[0]
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args stor6, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - purchased_snt[address(msg.sender)] / 100
                    if ext_call.success:
                        require ext_call.return_data[0]
                        call msg.sender with:
                           value (10000 * eth.balance(this.address) * deposits[address(msg.sender)]) - (10000 * bounty * deposits[address(msg.sender)]) / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty) wei
                             gas 2300 * is_zero(value) wei
                        if ext_call.success:
    revert
}



}

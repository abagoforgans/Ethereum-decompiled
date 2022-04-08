contract main {


// =======================  Init code  ======================


address stor3; offset 8
address stor4;
address stor5;
address stor6;

function _fallback() payable {
    stor3 = 0x55d34b686aa8c04921397c5807db9ecedba00a4c
    stor4 = 0xc636e73ff29faebcaba9e0c3f6833ead179ffd5c
    stor5 = 0x744d70fdbe2ba4cf95131626614a1763df805b9e
    stor6 = 0x4e6a1c57cdbfd97e8efe831f8f4418b1f2a09e6e
    require not msg.value
    return code.data[172 len 2659]
}



// =====================  Runtime code  =====================


mapping of uint256 deposits;
mapping of uint256 simulated_snt;
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

function simulated_snt(address arg1) {
    return simulated_snt[arg1]
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    return deposits[arg1]
}

function add_to_bounty() payable {
    require not stor3
    bounty += msg.value
}

function buy() {
    if not stor3:
        stor3 = 1
        require ext_code.size(0 or saleAddress)
        call 0 or saleAddress.proxyPayment(address rg1) with:
           value eth.balance(this.address) - bounty wei
             gas gas_remaining - 9710 wei
            args this.address
        require ext_call.success
        call msg.sender with:
           value bounty wei
             gas 2300 * is_zero(value) wei
}

function simulate_ico() {
    require ext_code.size(saleAddress)
    call saleAddress.maxGasPrice() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.gasprice <= ext_call.return_data[0]
    require ext_code.size(saleAddress)
    call saleAddress.startBlock() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.number >= ext_call.return_data[0]
    require ext_code.size(dynamicAddress)
    call dynamicAddress.revealedCurves() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(dynamicAddress)
    call dynamicAddress.currentIndex() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(dynamicAddress)
    call dynamicAddress.curves(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(saleAddress)
    call saleAddress.totalNormalCollected() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[32] > ext_call.return_data[0]
    require ext_call.return_data[64]
    simulated_snt[address(msg.sender)] += ext_call.return_data[32] - ext_call.return_data[0] / ext_call.return_data[64]
}

function withdraw() {
    deposits[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)
    if simulated_snt[address(msg.sender)] >= 10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty):
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
                args msg.sender, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - ((10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - simulated_snt[address(msg.sender)] / 100)
            if ext_call.success:
                require ext_call.return_data[0]
                if ext_code.size(tokenAddress):
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args stor6, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - simulated_snt[address(msg.sender)] / 100
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
        require msg.value + deposits[address(msg.sender)] <= 30 * 10^18
    else:
        require not msg.value
        require ext_code.size(saleAddress)
        call saleAddress.finalizedBlock() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0]:
            deposits[address(msg.sender)] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)
            if simulated_snt[address(msg.sender)] >= 10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty):
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
                        args msg.sender, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - ((10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - simulated_snt[address(msg.sender)] / 100)
                    if ext_call.success:
                        require ext_call.return_data[0]
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args stor6, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - simulated_snt[address(msg.sender)] / 100
                            if ext_call.success:
                                require ext_call.return_data[0]
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) * deposits[address(msg.sender)]) - (10000 * bounty * deposits[address(msg.sender)]) / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty) wei
                                     gas 2300 * is_zero(value) wei
                                if ext_call.success:
            revert
        require ext_code.size(saleAddress)
        call saleAddress.maxGasPrice() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require block.gasprice <= ext_call.return_data[0]
        require ext_code.size(saleAddress)
        call saleAddress.startBlock() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require block.number >= ext_call.return_data[0]
        require ext_code.size(dynamicAddress)
        call dynamicAddress.revealedCurves() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0]
        require ext_code.size(dynamicAddress)
        call dynamicAddress.currentIndex() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(dynamicAddress)
        call dynamicAddress.curves(uint256 rg1) with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(saleAddress)
        call saleAddress.totalNormalCollected() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[32] > ext_call.return_data[0]
        require ext_call.return_data[64]
        simulated_snt[address(msg.sender)] += ext_call.return_data[32] - ext_call.return_data[0] / ext_call.return_data[64]
}

function _fallback() payable {
    if saleAddress != msg.sender:
        if not stor3:
            deposits[address(msg.sender)] += msg.value
            require msg.value + deposits[address(msg.sender)] <= 30 * 10^18
        else:
            require not msg.value
            require ext_code.size(saleAddress)
            call saleAddress.finalizedBlock() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[0]:
                deposits[address(msg.sender)] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)
                if simulated_snt[address(msg.sender)] >= 10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty):
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
                            args msg.sender, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - ((10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - simulated_snt[address(msg.sender)] / 100)
                        if ext_call.success:
                            require ext_call.return_data[0]
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args stor6, (10000 * deposits[address(msg.sender)] * ext_call.return_data[0] / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty)) - simulated_snt[address(msg.sender)] / 100
                                if ext_call.success:
                                    require ext_call.return_data[0]
                                    call msg.sender with:
                                       value (10000 * eth.balance(this.address) * deposits[address(msg.sender)]) - (10000 * bounty * deposits[address(msg.sender)]) / ext_call.return_data[0] + (10000 * eth.balance(this.address)) - (10000 * bounty) wei
                                         gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                revert
            require ext_code.size(saleAddress)
            call saleAddress.maxGasPrice() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require block.gasprice <= ext_call.return_data[0]
            require ext_code.size(saleAddress)
            call saleAddress.startBlock() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require block.number >= ext_call.return_data[0]
            require ext_code.size(dynamicAddress)
            call dynamicAddress.revealedCurves() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0]
            require ext_code.size(dynamicAddress)
            call dynamicAddress.currentIndex() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(dynamicAddress)
            call dynamicAddress.curves(uint256 rg1) with:
                 gas gas_remaining - 710 wei
                args ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(saleAddress)
            call saleAddress.totalNormalCollected() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[32] > ext_call.return_data[0]
            require ext_call.return_data[64]
            simulated_snt[address(msg.sender)] += ext_call.return_data[32] - ext_call.return_data[0] / ext_call.return_data[64]
}



}

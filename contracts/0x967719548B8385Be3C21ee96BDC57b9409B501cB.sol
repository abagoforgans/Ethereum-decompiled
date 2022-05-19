contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 stor2;
uint256 stor4;
uint256 etherMinimum;
uint256 rate;
uint256 depositRate;
uint256 deposit;
address walletAddress;

function rate() {
    return rate
}

function wallet() {
    return walletAddress
}

function etherMinimum() {
    return etherMinimum
}

function depositRate() {
    return depositRate
}

function owner() {
    return owner
}

function deposit() {
    return deposit
}

function token() {
    return tokenAddress
}

function setWallet(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
}

function setRate(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    rate = arg1
    depositRate = arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sendToken(address arg1, uint256 arg2) {
    require msg.sender == walletAddress
    require arg2 <= deposit
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 <= deposit
    deposit -= arg2
}

function rescueTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function _fallback() payable {
    if not etherMinimum:
        require msg.value >= 0
    else:
        require 10^stor2 * etherMinimum / etherMinimum == 10^stor2
        require msg.value >= 10^stor2 * etherMinimum
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require deposit <= ext_call.return_data[0]
    require ext_call.return_data[0] - deposit > 0
    if not msg.value:
        require 10^stor4
        if not msg.value:
            require 10^stor4
            require 2 * 0 / 10^stor4 >= 0 / 10^stor4
            require 2 * 0 / 10^stor4 > 0
            if 2 * 0 / 10^stor4 <= ext_call.return_data[0] - deposit:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / 10^stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (0 / 10^stor4) + deposit >= deposit
                deposit += 0 / 10^stor4
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / 10^stor4) + deposit <= ext_call.return_data[0]
            else:
                require rate + depositRate
                if not ext_call.return_data[0] - deposit / rate + depositRate:
                    require 0 <= ext_call.return_data[0] - deposit
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not ext_call.return_data[0] - deposit / rate + depositRate:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == 10^stor4
                        call msg.sender with:
                           value msg.value - (10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_call.return_data[0] >= deposit
                    deposit = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                else:
                    require rate * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == rate
                    require rate * ext_call.return_data[0] - deposit / rate + depositRate <= ext_call.return_data[0] - deposit
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, rate * ext_call.return_data[0] - deposit / rate + depositRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not ext_call.return_data[0] - deposit / rate + depositRate:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == 10^stor4
                        call msg.sender with:
                           value msg.value - (10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate) >= deposit
                    deposit = ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate) <= ext_call.return_data[0]
        else:
            require depositRate * msg.value / msg.value == depositRate
            require 10^stor4
            require (depositRate * msg.value / 10^stor4) + (0 / 10^stor4) >= 0 / 10^stor4
            require (depositRate * msg.value / 10^stor4) + (0 / 10^stor4) > 0
            if (depositRate * msg.value / 10^stor4) + (0 / 10^stor4) <= ext_call.return_data[0] - deposit:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / 10^stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (depositRate * msg.value / 10^stor4) + deposit >= deposit
                deposit += depositRate * msg.value / 10^stor4
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (depositRate * msg.value / 10^stor4) + deposit <= ext_call.return_data[0]
            else:
                require rate + depositRate
                if not ext_call.return_data[0] - deposit / rate + depositRate:
                    require 0 <= ext_call.return_data[0] - deposit
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not ext_call.return_data[0] - deposit / rate + depositRate:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == 10^stor4
                        call msg.sender with:
                           value msg.value - (10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_call.return_data[0] >= deposit
                    deposit = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                else:
                    require rate * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == rate
                    require rate * ext_call.return_data[0] - deposit / rate + depositRate <= ext_call.return_data[0] - deposit
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, rate * ext_call.return_data[0] - deposit / rate + depositRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not ext_call.return_data[0] - deposit / rate + depositRate:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == 10^stor4
                        call msg.sender with:
                           value msg.value - (10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate) >= deposit
                    deposit = ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate) <= ext_call.return_data[0]
    else:
        require rate * msg.value / msg.value == rate
        require 10^stor4
        if not msg.value:
            require 10^stor4
            require (0 / 10^stor4) + (rate * msg.value / 10^stor4) >= rate * msg.value / 10^stor4
            require (0 / 10^stor4) + (rate * msg.value / 10^stor4) > 0
            if (0 / 10^stor4) + (rate * msg.value / 10^stor4) <= ext_call.return_data[0] - deposit:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, rate * msg.value / 10^stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (0 / 10^stor4) + deposit >= deposit
                deposit += 0 / 10^stor4
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / 10^stor4) + deposit <= ext_call.return_data[0]
            else:
                require rate + depositRate
                if not ext_call.return_data[0] - deposit / rate + depositRate:
                    require 0 <= ext_call.return_data[0] - deposit
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not ext_call.return_data[0] - deposit / rate + depositRate:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == 10^stor4
                        call msg.sender with:
                           value msg.value - (10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_call.return_data[0] >= deposit
                    deposit = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                else:
                    require rate * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == rate
                    require rate * ext_call.return_data[0] - deposit / rate + depositRate <= ext_call.return_data[0] - deposit
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, rate * ext_call.return_data[0] - deposit / rate + depositRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not ext_call.return_data[0] - deposit / rate + depositRate:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == 10^stor4
                        call msg.sender with:
                           value msg.value - (10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate) >= deposit
                    deposit = ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate) <= ext_call.return_data[0]
        else:
            require depositRate * msg.value / msg.value == depositRate
            require 10^stor4
            require (depositRate * msg.value / 10^stor4) + (rate * msg.value / 10^stor4) >= rate * msg.value / 10^stor4
            require (depositRate * msg.value / 10^stor4) + (rate * msg.value / 10^stor4) > 0
            if (depositRate * msg.value / 10^stor4) + (rate * msg.value / 10^stor4) <= ext_call.return_data[0] - deposit:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, rate * msg.value / 10^stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (depositRate * msg.value / 10^stor4) + deposit >= deposit
                deposit += depositRate * msg.value / 10^stor4
                require ext_code.size(tokenAddress)
                call tokenAddress.0x70a08231 with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (depositRate * msg.value / 10^stor4) + deposit <= ext_call.return_data[0]
            else:
                require rate + depositRate
                if not ext_call.return_data[0] - deposit / rate + depositRate:
                    require 0 <= ext_call.return_data[0] - deposit
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not ext_call.return_data[0] - deposit / rate + depositRate:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == 10^stor4
                        call msg.sender with:
                           value msg.value - (10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_call.return_data[0] >= deposit
                    deposit = ext_call.return_data[0]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= ext_call.return_data[0]
                else:
                    require rate * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == rate
                    require rate * ext_call.return_data[0] - deposit / rate + depositRate <= ext_call.return_data[0] - deposit
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, rate * ext_call.return_data[0] - deposit / rate + depositRate
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    if not ext_call.return_data[0] - deposit / rate + depositRate:
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate / ext_call.return_data[0] - deposit / rate + depositRate == 10^stor4
                        call msg.sender with:
                           value msg.value - (10^stor4 * ext_call.return_data[0] - deposit / rate + depositRate) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate) >= deposit
                    deposit = ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate)
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x70a08231 with:
                         gas gas_remaining wei
                        args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] - (rate * ext_call.return_data[0] - deposit / rate + depositRate) <= ext_call.return_data[0]
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}

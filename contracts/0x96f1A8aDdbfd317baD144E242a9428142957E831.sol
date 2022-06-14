contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address newOwner;
address walletAddress;
address tokenContractAddress;
uint256 tokenPrice;
uint256 etherMinimum;
uint256 soldTokens;
uint256 etherRaised;

function wallet() {
    return walletAddress
}

function tokenContract() {
    return tokenContractAddress
}

function soldTokens() {
    return soldTokens
}

function etherMinimum() {
    return etherMinimum
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return address(owner)
}

function etherRaised() {
    return etherRaised
}

function newOwner() {
    return newOwner
}

function changeMinimum(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    etherMinimum = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    if not arg1:
        revert with 0, 'address(0) != _newOwner'
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner != msg.sender:
        revert with 0, 'msg.sender == newOwner'
    emit OwnershipTransferred(address(owner), msg.sender);
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    newOwner = 0
}

function remainingTokens() {
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalTokens() {
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require soldTokens + ext_call.return_data[0] >= ext_call.return_data[0]
    return (soldTokens + ext_call.return_data[0])
}

function withdrawTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'msg.sender == owner'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    if msg.value < etherMinimum:
        revert with 0, 'msg.value >= etherMinimum'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'remainingTokens > 0'
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.value:
        require tokenPrice
        require ext_code.size(tokenContractAddress)
        staticcall tokenContractAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0 / tokenPrice:
            require 0 <= msg.value
            require (0 / tokenPrice) + soldTokens >= soldTokens
            soldTokens += 0 / tokenPrice
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / tokenPrice
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(tokenContractAddress)
            staticcall tokenContractAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (0 / tokenPrice) - ext_call.return_data[0]:
                require 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                staticcall tokenContractAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 / 10^ext_call.return_data[0] <= msg.value
                require ext_call.return_data[0] + soldTokens >= soldTokens
                soldTokens += ext_call.return_data[0]
                require msg.value - (0 / 10^ext_call.return_data[0]) + etherRaised >= etherRaised
                etherRaised = msg.value - (0 / 10^ext_call.return_data[0]) + etherRaised
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call walletAddress with:
                   value msg.value - (0 / 10^ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 / 10^ext_call.return_data[0]:
                    call msg.sender with:
                       value 0 / 10^ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require (0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (0 / tokenPrice) - ext_call.return_data[0] == tokenPrice
                require 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                staticcall tokenContractAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                require ext_call.return_data[0] + soldTokens >= soldTokens
                soldTokens += ext_call.return_data[0]
                require msg.value - ((0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherRaised >= etherRaised
                etherRaised = msg.value - ((0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherRaised
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call walletAddress with:
                   value msg.value - ((0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]:
                    call msg.sender with:
                       value (0 / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        require 10^ext_call.return_data[0] * msg.value / msg.value == 10^ext_call.return_data[0]
        require tokenPrice
        require ext_code.size(tokenContractAddress)
        staticcall tokenContractAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 10^ext_call.return_data[0] * msg.value / tokenPrice:
            require 0 <= msg.value
            require (10^ext_call.return_data[0] * msg.value / tokenPrice) + soldTokens >= soldTokens
            soldTokens += 10^ext_call.return_data[0] * msg.value / tokenPrice
            require msg.value + etherRaised >= etherRaised
            etherRaised += msg.value
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 10^ext_call.return_data[0] * msg.value / tokenPrice
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(tokenContractAddress)
            staticcall tokenContractAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not (10^ext_call.return_data[0] * msg.value / tokenPrice) - ext_call.return_data[0]:
                require 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                staticcall tokenContractAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 / 10^ext_call.return_data[0] <= msg.value
                require ext_call.return_data[0] + soldTokens >= soldTokens
                soldTokens += ext_call.return_data[0]
                require msg.value - (0 / 10^ext_call.return_data[0]) + etherRaised >= etherRaised
                etherRaised = msg.value - (0 / 10^ext_call.return_data[0]) + etherRaised
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call walletAddress with:
                   value msg.value - (0 / 10^ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if 0 / 10^ext_call.return_data[0]:
                    call msg.sender with:
                       value 0 / 10^ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                require (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / (10^ext_call.return_data[0] * msg.value / tokenPrice) - ext_call.return_data[0] == tokenPrice
                require 10^ext_call.return_data[0]
                require ext_code.size(tokenContractAddress)
                staticcall tokenContractAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] <= msg.value
                require ext_call.return_data[0] + soldTokens >= soldTokens
                soldTokens += ext_call.return_data[0]
                require msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherRaised >= etherRaised
                etherRaised = msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) + etherRaised
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                call walletAddress with:
                   value msg.value - ((10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0]:
                    call msg.sender with:
                       value (10^ext_call.return_data[0] * msg.value / tokenPrice * tokenPrice) - (ext_call.return_data[0] * tokenPrice) / 10^ext_call.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
}



}

contract main {


// =======================  Init code  ======================


address stor0;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor3 = 0xbcec57361649e5da917efa9f992fbca0a2529350
    return code.data[179 len 2853]
}



// =====================  Runtime code  =====================


const crowdsaleEndTime = (421983 * 3600)

const crowdsaleStartTime = (420495 * 3600)


address owner;
uint256 amountRaised;
uint256 tokensSold;
address alsTokenAddress;

function alsToken() {
    return alsTokenAddress
}

function tokensSold() {
    return tokensSold
}

function amountRaised() {
    return amountRaised
}

function getOwner() {
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function withdrawEther(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundTransfer(owner, arg1, 0);
}

function getPrice() {
    require block.timestamp >= 420495 * 3600
    require block.timestamp <= 421983 * 3600
    if tokensSold < 1600000 * 10^18:
        return 17000
    if tokensSold < 8000000 * 10^18:
        return 13000
    if tokensSold < 16000000 * 10^18:
        return 11000
    if tokensSold >= 40000000 * 10^18:
        return 10000
    return 10500
}

function _fallback() payable {
    require block.timestamp >= 420495 * 3600
    require block.timestamp <= 421983 * 3600
    require ext_code.size(alsTokenAddress)
    call alsTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require msg.value > 0
    require block.timestamp >= 420495 * 3600
    require block.timestamp <= 421983 * 3600
    if tokensSold < 1600000 * 10^18:
        if msg.value:
            require msg.value
            require 17000 * msg.value / msg.value == 17000
        if 17000 * msg.value <= ext_call.return_data[0]:
            require amountRaised + msg.value >= amountRaised
            require amountRaised + msg.value >= msg.value
            amountRaised += msg.value
            require tokensSold + (17000 * msg.value) >= tokensSold
            require tokensSold + (17000 * msg.value) >= 17000 * msg.value
            tokensSold += 17000 * msg.value
            require ext_code.size(alsTokenAddress)
            call alsTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 17000 * msg.value
            require ext_call.success
            emit FundTransfer(msg.sender, msg.value, 1);
        else:
            require ext_call.return_data[0] == (17000 * ext_call.return_data[0] / 17000) + (ext_call.return_data[0] % 17000)
            require amountRaised + (ext_call.return_data[0] / 17000) >= amountRaised
            require amountRaised + (ext_call.return_data[0] / 17000) >= ext_call.return_data[0] / 17000
            amountRaised += ext_call.return_data[0] / 17000
            require tokensSold + ext_call.return_data[0] >= tokensSold
            require tokensSold + ext_call.return_data[0] >= ext_call.return_data[0]
            tokensSold += ext_call.return_data[0]
            require ext_code.size(alsTokenAddress)
            call alsTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
            emit FundTransfer(msg.sender, ext_call.return_data[0] / 17000, 1);
            require ext_call.return_data[0] / 17000 <= msg.value
            call msg.sender with:
               value msg.value - (ext_call.return_data[0] / 17000) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        if tokensSold < 8000000 * 10^18:
            if msg.value:
                require msg.value
                require 13000 * msg.value / msg.value == 13000
            if 13000 * msg.value <= ext_call.return_data[0]:
                require amountRaised + msg.value >= amountRaised
                require amountRaised + msg.value >= msg.value
                amountRaised += msg.value
                require tokensSold + (13000 * msg.value) >= tokensSold
                require tokensSold + (13000 * msg.value) >= 13000 * msg.value
                tokensSold += 13000 * msg.value
                require ext_code.size(alsTokenAddress)
                call alsTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 13000 * msg.value
                require ext_call.success
                emit FundTransfer(msg.sender, msg.value, 1);
            else:
                require ext_call.return_data[0] == (13000 * ext_call.return_data[0] / 13000) + (ext_call.return_data[0] % 13000)
                require amountRaised + (ext_call.return_data[0] / 13000) >= amountRaised
                require amountRaised + (ext_call.return_data[0] / 13000) >= ext_call.return_data[0] / 13000
                amountRaised += ext_call.return_data[0] / 13000
                require tokensSold + ext_call.return_data[0] >= tokensSold
                require tokensSold + ext_call.return_data[0] >= ext_call.return_data[0]
                tokensSold += ext_call.return_data[0]
                require ext_code.size(alsTokenAddress)
                call alsTokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                require ext_call.success
                emit FundTransfer(msg.sender, ext_call.return_data[0] / 13000, 1);
                require ext_call.return_data[0] / 13000 <= msg.value
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] / 13000) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            if tokensSold < 16000000 * 10^18:
                if msg.value:
                    require msg.value
                    require 11000 * msg.value / msg.value == 11000
                if 11000 * msg.value <= ext_call.return_data[0]:
                    require amountRaised + msg.value >= amountRaised
                    require amountRaised + msg.value >= msg.value
                    amountRaised += msg.value
                    require tokensSold + (11000 * msg.value) >= tokensSold
                    require tokensSold + (11000 * msg.value) >= 11000 * msg.value
                    tokensSold += 11000 * msg.value
                    require ext_code.size(alsTokenAddress)
                    call alsTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 11000 * msg.value
                    require ext_call.success
                    emit FundTransfer(msg.sender, msg.value, 1);
                else:
                    require ext_call.return_data[0] == (11000 * ext_call.return_data[0] / 11000) + (ext_call.return_data[0] % 11000)
                    require amountRaised + (ext_call.return_data[0] / 11000) >= amountRaised
                    require amountRaised + (ext_call.return_data[0] / 11000) >= ext_call.return_data[0] / 11000
                    amountRaised += ext_call.return_data[0] / 11000
                    require tokensSold + ext_call.return_data[0] >= tokensSold
                    require tokensSold + ext_call.return_data[0] >= ext_call.return_data[0]
                    tokensSold += ext_call.return_data[0]
                    require ext_code.size(alsTokenAddress)
                    call alsTokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0]
                    require ext_call.success
                    emit FundTransfer(msg.sender, ext_call.return_data[0] / 11000, 1);
                    require ext_call.return_data[0] / 11000 <= msg.value
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] / 11000) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if tokensSold >= 40000000 * 10^18:
                    if msg.value:
                        require msg.value
                        require 10000 * msg.value / msg.value == 10000
                    if 10000 * msg.value <= ext_call.return_data[0]:
                        require amountRaised + msg.value >= amountRaised
                        require amountRaised + msg.value >= msg.value
                        amountRaised += msg.value
                        require tokensSold + (10000 * msg.value) >= tokensSold
                        require tokensSold + (10000 * msg.value) >= 10000 * msg.value
                        tokensSold += 10000 * msg.value
                        require ext_code.size(alsTokenAddress)
                        call alsTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10000 * msg.value
                        require ext_call.success
                        emit FundTransfer(msg.sender, msg.value, 1);
                    else:
                        require ext_call.return_data[0] == (10000 * ext_call.return_data[0] / 10000) + (ext_call.return_data[0] % 10000)
                        require amountRaised + (ext_call.return_data[0] / 10000) >= amountRaised
                        require amountRaised + (ext_call.return_data[0] / 10000) >= ext_call.return_data[0] / 10000
                        amountRaised += ext_call.return_data[0] / 10000
                        require tokensSold + ext_call.return_data[0] >= tokensSold
                        require tokensSold + ext_call.return_data[0] >= ext_call.return_data[0]
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(alsTokenAddress)
                        call alsTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        emit FundTransfer(msg.sender, ext_call.return_data[0] / 10000, 1);
                        require ext_call.return_data[0] / 10000 <= msg.value
                        call msg.sender with:
                           value msg.value - (ext_call.return_data[0] / 10000) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    if msg.value:
                        require msg.value
                        require 10500 * msg.value / msg.value == 10500
                    if 10500 * msg.value <= ext_call.return_data[0]:
                        require amountRaised + msg.value >= amountRaised
                        require amountRaised + msg.value >= msg.value
                        amountRaised += msg.value
                        require tokensSold + (10500 * msg.value) >= tokensSold
                        require tokensSold + (10500 * msg.value) >= 10500 * msg.value
                        tokensSold += 10500 * msg.value
                        require ext_code.size(alsTokenAddress)
                        call alsTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10500 * msg.value
                        require ext_call.success
                        emit FundTransfer(msg.sender, msg.value, 1);
                    else:
                        require ext_call.return_data[0] == (10500 * ext_call.return_data[0] / 10500) + (ext_call.return_data[0] % 10500)
                        require amountRaised + (ext_call.return_data[0] / 10500) >= amountRaised
                        require amountRaised + (ext_call.return_data[0] / 10500) >= ext_call.return_data[0] / 10500
                        amountRaised += ext_call.return_data[0] / 10500
                        require tokensSold + ext_call.return_data[0] >= tokensSold
                        require tokensSold + ext_call.return_data[0] >= ext_call.return_data[0]
                        tokensSold += ext_call.return_data[0]
                        require ext_code.size(alsTokenAddress)
                        call alsTokenAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, ext_call.return_data[0]
                        require ext_call.success
                        emit FundTransfer(msg.sender, ext_call.return_data[0] / 10500, 1);
                        require ext_call.return_data[0] / 10500 <= msg.value
                        call msg.sender with:
                           value msg.value - (ext_call.return_data[0] / 10500) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
}



}

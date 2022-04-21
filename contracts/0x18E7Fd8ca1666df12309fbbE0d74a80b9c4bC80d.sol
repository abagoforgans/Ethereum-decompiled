contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor4;
uint8 stor5; offset 160
uint256 stor6;

function _fallback() payable {
    stor2 = 0
    stor5 = 0
    stor6 = 1
    require not msg.value
    if code.data[9654 len 32]:
        stor4 = code.data[9654 len 32]
    else:
        stor4 = block.number
    return code.data[153 len 9501]
}



// =====================  Runtime code  =====================


const delayOfICO2 = 435114

const blocksByDay = 6306

const maxTokenSupplyICO2 = 833000000 * 10^18

const GetTime = block.number

const maxTokenSupplyICOEND = 1000000000 * 10^18

const delayOfICOEND = 567540

const coinMultiplayer = 10^18

const minimumGoal = 178000000 * 10^18

const delayOfPreICO = 145038

const maxTokenSupplyICO1 = 595000000 * 10^18

const delayOfICO1 = 290076

const maxTokenSupplyPreICO = 357000000 * 10^18

const TEAM_SHARE_PERCENTAGE = 16

const PRICE_ICO4 = 20000

const PRICE_ICO1 = 33333

const PRICE_ICO2 = 25000

const PRICE_PREICO = 50000

const PRE_ICO_RISK_PERCENTAGE = 5


mapping of uint8 stor0;
mapping of uint256 ethGiven;
address tokenAddress;
address devTeamAddress;
uint256 _startBlock;
uint8 stor5; offset 160
address coinAddress;
uint256 currBlock;

function coin() {
    return coinAddress
}

function _startBlock() {
    return _startBlock
}

function currBlock() {
    return currBlock
}

function preICOHolders(address arg1) {
    return bool(stor0[arg1])
}

function tokenAddress() {
    return tokenAddress
}

function devTeam() {
    return devTeamAddress
}

function ethGiven(address arg1) {
    return ethGiven[arg1]
}

function SetContracts(address arg1, address arg2) {
    require not stor5
    stor5 = 1
    if not tokenAddress:
        tokenAddress = arg1
        coinAddress = arg1
        devTeamAddress = arg2
}

function IsPreICO() {
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 145038
    require delegate.return_code
    if block.number >= delegate.return_data[0]:
        return 0
    return 1
}

function sendAllFunds() {
    emit SendAllFunds()
    require ext_code.size(coinAddress)
    call coinAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] >= 178000000 * 10^18
    require ext_code.size(devTeamAddress)
    call devTeamAddress.recieveFunds() with:
       value eth.balance(this.address) wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function getCabCoinsAmount() {
    if block.number < _startBlock:
        return 0
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 145038
    require delegate.return_code
    if block.number < delegate.return_data[0]:
        require ext_code.size(coinAddress)
        call coinAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if 357000000 * 10^18 > ext_call.return_data[0]:
            return 50000
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 290076
    require delegate.return_code
    if block.number < delegate.return_data[0]:
        require ext_code.size(coinAddress)
        call coinAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if 595000000 * 10^18 > ext_call.return_data[0]:
            return 33333
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 435114
    require delegate.return_code
    if block.number < delegate.return_data[0]:
        require ext_code.size(coinAddress)
        call coinAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if 833000000 * 10^18 > ext_call.return_data[0]:
            return 25000
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 567540
    require delegate.return_code
    if block.number > delegate.return_data[0]:
        return 0
    require ext_code.size(coinAddress)
    call coinAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if 1000000000 * 10^18 < ext_call.return_data[0]:
        return 0
    return 20000
}

function getAllTimes() {
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    if block.number < _startBlock:
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xb67d77c5 with:
             gas gas_remaining - 710 wei
            args _startBlock, block.number
        require delegate.return_code
        return delegate.return_data[0], 0, 0
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 567540
    require delegate.return_code
    if block.number > delegate.return_data[0]:
        return 0
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 145038
    require delegate.return_code
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    if block.number < delegate.return_data[0]:
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
             gas gas_remaining - 710 wei
            args _startBlock, 145038
    else:
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
             gas gas_remaining - 710 wei
            args _startBlock, 290076
        require delegate.return_code
        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
        if block.number < delegate.return_data[0]:
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 290076
        else:
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 435114
            require delegate.return_code
            if block.number >= delegate.return_data[0]:
                if block.number < _startBlock:
                    return 0
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 567540
                require delegate.return_code
                return 0, 0, delegate.return_data[0] - block.number
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 435114
    require delegate.return_code
    if block.number < _startBlock:
        return 0
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 567540
    require delegate.return_code
    return 0, delegate.return_data[0] - block.number, delegate.return_data[0] - block.number
}

function isAfterICO() {
    if block.number < _startBlock:
        return 1
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 145038
    require delegate.return_code
    if block.number >= delegate.return_data[0]:
        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
             gas gas_remaining - 710 wei
            args _startBlock, 290076
        require delegate.return_code
        if block.number >= delegate.return_data[0]:
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 435114
            require delegate.return_code
            if block.number >= delegate.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 567540
                require delegate.return_code
                if block.number > delegate.return_data[0]:
                    return 1
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if 1000000000 * 10^18 < ext_call.return_data[0]:
                    return 1
            else:
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if 833000000 * 10^18 <= ext_call.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    if block.number > delegate.return_data[0]:
                        return 1
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 1000000000 * 10^18 < ext_call.return_data[0]:
                        return 1
        else:
            require ext_code.size(coinAddress)
            call coinAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if 595000000 * 10^18 <= ext_call.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 435114
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    if block.number > delegate.return_data[0]:
                        return 1
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 1000000000 * 10^18 < ext_call.return_data[0]:
                        return 1
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            return 1
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 1000000000 * 10^18 < ext_call.return_data[0]:
                            return 1
    else:
        require ext_code.size(coinAddress)
        call coinAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if 357000000 * 10^18 <= ext_call.return_data[0]:
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 290076
            require delegate.return_code
            if block.number >= delegate.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 435114
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    if block.number > delegate.return_data[0]:
                        return 1
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 1000000000 * 10^18 < ext_call.return_data[0]:
                        return 1
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            return 1
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 1000000000 * 10^18 < ext_call.return_data[0]:
                            return 1
            else:
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if 595000000 * 10^18 <= ext_call.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 435114
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            return 1
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 1000000000 * 10^18 < ext_call.return_data[0]:
                            return 1
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            if block.number > delegate.return_data[0]:
                                return 1
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if 1000000000 * 10^18 < ext_call.return_data[0]:
                                return 1
    return 0
}

function getMaxEther() {
    require ext_code.size(coinAddress)
    call coinAddress.0xa65ecbeb with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    if block.number < _startBlock:
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
             gas gas_remaining - 710 wei
            args ext_call.return_data[0], 0
    else:
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
             gas gas_remaining - 710 wei
            args _startBlock, 145038
        require delegate.return_code
        if block.number >= delegate.return_data[0]:
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 290076
            require delegate.return_code
            if block.number >= delegate.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 435114
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    if block.number > delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args ext_call.return_data[0], 0
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        if 1000000000 * 10^18 < ext_call.return_data[0]:
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args ext_call.return_data[0], 0
                        else:
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args ext_call.return_data[0], 20000
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    if 833000000 * 10^18 > ext_call.return_data[0]:
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args ext_call.return_data[0], 25000
                    else:
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args ext_call.return_data[0], 0
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            if 1000000000 * 10^18 < ext_call.return_data[0]:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 0
                            else:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 20000
            else:
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                if 595000000 * 10^18 > ext_call.return_data[0]:
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                         gas gas_remaining - 710 wei
                        args ext_call.return_data[0], 33333
                else:
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 435114
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args ext_call.return_data[0], 0
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            if 1000000000 * 10^18 < ext_call.return_data[0]:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 0
                            else:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 20000
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        if 833000000 * 10^18 > ext_call.return_data[0]:
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args ext_call.return_data[0], 25000
                        else:
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            if block.number > delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 0
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                if 1000000000 * 10^18 < ext_call.return_data[0]:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args ext_call.return_data[0], 0
                                else:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args ext_call.return_data[0], 20000
        else:
            require ext_code.size(coinAddress)
            call coinAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            if 357000000 * 10^18 > ext_call.return_data[0]:
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                     gas gas_remaining - 710 wei
                    args ext_call.return_data[0], 50000
            else:
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 290076
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 435114
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args ext_call.return_data[0], 0
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            if 1000000000 * 10^18 < ext_call.return_data[0]:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 0
                            else:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 20000
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        if 833000000 * 10^18 > ext_call.return_data[0]:
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args ext_call.return_data[0], 25000
                        else:
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            if block.number > delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 0
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                if 1000000000 * 10^18 < ext_call.return_data[0]:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args ext_call.return_data[0], 0
                                else:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args ext_call.return_data[0], 20000
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    if 595000000 * 10^18 > ext_call.return_data[0]:
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args ext_call.return_data[0], 33333
                    else:
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 435114
                        require delegate.return_code
                        if block.number >= delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            if block.number > delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 0
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                if 1000000000 * 10^18 < ext_call.return_data[0]:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args ext_call.return_data[0], 0
                                else:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args ext_call.return_data[0], 20000
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            if 833000000 * 10^18 > ext_call.return_data[0]:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args ext_call.return_data[0], 25000
                            else:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 567540
                                require delegate.return_code
                                if block.number > delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args ext_call.return_data[0], 0
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    if 1000000000 * 10^18 < ext_call.return_data[0]:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args ext_call.return_data[0], 0
                                    else:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args ext_call.return_data[0], 20000
    require delegate.return_code
    return delegate.return_data[0]
}

function refund(address arg1) payable {
    emit Refund(address(arg1), ethGiven[address(arg1)]);
    if block.number < _startBlock:
        require ext_code.size(coinAddress)
        call coinAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] >= 178000000 * 10^18:
            if msg.value > 0:
                call arg1 with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            ethGiven[address(arg1)] = 0
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            if not stor0[address(msg.sender)]:
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args ethGiven[address(arg1)], msg.value
            else:
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                     gas gas_remaining - 710 wei
                    args ethGiven[address(arg1)], 95
                require delegate.return_code
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], 100
                require delegate.return_code
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], msg.value
            require delegate.return_code
            if delegate.return_data[0] > eth.balance(this.address):
                call arg1 with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
            else:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], msg.value
                require delegate.return_code
                call arg1 with:
                   value delegate.return_data[0] wei
                     gas 2300 * is_zero(value) wei
            require ext_call.success
    else:
        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
             gas gas_remaining - 710 wei
            args _startBlock, 145038
        require delegate.return_code
        if block.number >= delegate.return_data[0]:
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 290076
            require delegate.return_code
            if block.number >= delegate.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 435114
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if block.number > delegate.return_data[0]:
                        if ext_call.return_data[0] >= 178000000 * 10^18:
                            if msg.value > 0:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            ethGiven[address(arg1)] = 0
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            if not stor0[address(msg.sender)]:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                            else:
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], 95
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 100
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], msg.value
                            require delegate.return_code
                            if delegate.return_data[0] > eth.balance(this.address):
                                call arg1 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], msg.value
                                require delegate.return_code
                                call arg1 with:
                                   value delegate.return_data[0] wei
                                     gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        if 1000000000 * 10^18 >= ext_call.return_data[0]:
                            if msg.value > 0:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if ext_call.return_data[0] >= 178000000 * 10^18:
                                if msg.value > 0:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                ethGiven[address(arg1)] = 0
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                if not stor0[address(msg.sender)]:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                else:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], 95
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 100
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], msg.value
                                require delegate.return_code
                                if delegate.return_data[0] > eth.balance(this.address):
                                    call arg1 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    call arg1 with:
                                       value delegate.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                require ext_call.success
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 833000000 * 10^18 > ext_call.return_data[0]:
                        if msg.value > 0:
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if block.number > delegate.return_data[0]:
                            if ext_call.return_data[0] >= 178000000 * 10^18:
                                if msg.value > 0:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                ethGiven[address(arg1)] = 0
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                if not stor0[address(msg.sender)]:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                else:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], 95
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 100
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], msg.value
                                require delegate.return_code
                                if delegate.return_data[0] > eth.balance(this.address):
                                    call arg1 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    call arg1 with:
                                       value delegate.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                if msg.value > 0:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if ext_call.return_data[0] >= 178000000 * 10^18:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    ethGiven[address(arg1)] = 0
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    if not stor0[address(msg.sender)]:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], msg.value
                                    else:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], 95
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    if delegate.return_data[0] > eth.balance(this.address):
                                        call arg1 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        call arg1 with:
                                           value delegate.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                    require ext_call.success
            else:
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if 595000000 * 10^18 > ext_call.return_data[0]:
                    if msg.value > 0:
                        call arg1 with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 435114
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if block.number > delegate.return_data[0]:
                            if ext_call.return_data[0] >= 178000000 * 10^18:
                                if msg.value > 0:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                ethGiven[address(arg1)] = 0
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                if not stor0[address(msg.sender)]:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                else:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], 95
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 100
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], msg.value
                                require delegate.return_code
                                if delegate.return_data[0] > eth.balance(this.address):
                                    call arg1 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    call arg1 with:
                                       value delegate.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                if msg.value > 0:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if ext_call.return_data[0] >= 178000000 * 10^18:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    ethGiven[address(arg1)] = 0
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    if not stor0[address(msg.sender)]:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], msg.value
                                    else:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], 95
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    if delegate.return_data[0] > eth.balance(this.address):
                                        call arg1 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        call arg1 with:
                                           value delegate.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                    require ext_call.success
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 833000000 * 10^18 > ext_call.return_data[0]:
                            if msg.value > 0:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if block.number > delegate.return_data[0]:
                                if ext_call.return_data[0] >= 178000000 * 10^18:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    ethGiven[address(arg1)] = 0
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    if not stor0[address(msg.sender)]:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], msg.value
                                    else:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], 95
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    if delegate.return_data[0] > eth.balance(this.address):
                                        call arg1 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        call arg1 with:
                                           value delegate.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 178000000 * 10^18:
                                        if msg.value > 0:
                                            call arg1 with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        ethGiven[address(arg1)] = 0
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        if not stor0[address(msg.sender)]:
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args ethGiven[address(arg1)], msg.value
                                        else:
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                                 gas gas_remaining - 710 wei
                                                args ethGiven[address(arg1)], 95
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], 100
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        if delegate.return_data[0] > eth.balance(this.address):
                                            call arg1 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], msg.value
                                            require delegate.return_code
                                            call arg1 with:
                                               value delegate.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                        require ext_call.success
        else:
            require ext_code.size(coinAddress)
            call coinAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if 357000000 * 10^18 > ext_call.return_data[0]:
                if msg.value > 0:
                    call arg1 with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 290076
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 435114
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if block.number > delegate.return_data[0]:
                            if ext_call.return_data[0] >= 178000000 * 10^18:
                                if msg.value > 0:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                ethGiven[address(arg1)] = 0
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                if not stor0[address(msg.sender)]:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                else:
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], 95
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 100
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], msg.value
                                require delegate.return_code
                                if delegate.return_data[0] > eth.balance(this.address):
                                    call arg1 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    call arg1 with:
                                       value delegate.return_data[0] wei
                                         gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                if msg.value > 0:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if ext_call.return_data[0] >= 178000000 * 10^18:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    ethGiven[address(arg1)] = 0
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    if not stor0[address(msg.sender)]:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], msg.value
                                    else:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], 95
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    if delegate.return_data[0] > eth.balance(this.address):
                                        call arg1 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        call arg1 with:
                                           value delegate.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                    require ext_call.success
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 833000000 * 10^18 > ext_call.return_data[0]:
                            if msg.value > 0:
                                call arg1 with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                        else:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if block.number > delegate.return_data[0]:
                                if ext_call.return_data[0] >= 178000000 * 10^18:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    ethGiven[address(arg1)] = 0
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    if not stor0[address(msg.sender)]:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], msg.value
                                    else:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], 95
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    if delegate.return_data[0] > eth.balance(this.address):
                                        call arg1 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        call arg1 with:
                                           value delegate.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 178000000 * 10^18:
                                        if msg.value > 0:
                                            call arg1 with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        ethGiven[address(arg1)] = 0
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        if not stor0[address(msg.sender)]:
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args ethGiven[address(arg1)], msg.value
                                        else:
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                                 gas gas_remaining - 710 wei
                                                args ethGiven[address(arg1)], 95
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], 100
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        if delegate.return_data[0] > eth.balance(this.address):
                                            call arg1 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], msg.value
                                            require delegate.return_code
                                            call arg1 with:
                                               value delegate.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                        require ext_call.success
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 595000000 * 10^18 > ext_call.return_data[0]:
                        if msg.value > 0:
                            call arg1 with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 435114
                        require delegate.return_code
                        if block.number >= delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if block.number > delegate.return_data[0]:
                                if ext_call.return_data[0] >= 178000000 * 10^18:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    ethGiven[address(arg1)] = 0
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    if not stor0[address(msg.sender)]:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], msg.value
                                    else:
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], 95
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                    require delegate.return_code
                                    if delegate.return_data[0] > eth.balance(this.address):
                                        call arg1 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        call arg1 with:
                                           value delegate.return_data[0] wei
                                             gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                    if msg.value > 0:
                                        call arg1 with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] >= 178000000 * 10^18:
                                        if msg.value > 0:
                                            call arg1 with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        ethGiven[address(arg1)] = 0
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        if not stor0[address(msg.sender)]:
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args ethGiven[address(arg1)], msg.value
                                        else:
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                                 gas gas_remaining - 710 wei
                                                args ethGiven[address(arg1)], 95
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], 100
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        if delegate.return_data[0] > eth.balance(this.address):
                                            call arg1 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], msg.value
                                            require delegate.return_code
                                            call arg1 with:
                                               value delegate.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                        require ext_call.success
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if 833000000 * 10^18 > ext_call.return_data[0]:
                                if msg.value > 0:
                                    call arg1 with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                            else:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 567540
                                require delegate.return_code
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if block.number > delegate.return_data[0]:
                                    if ext_call.return_data[0] >= 178000000 * 10^18:
                                        if msg.value > 0:
                                            call arg1 with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        ethGiven[address(arg1)] = 0
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        if not stor0[address(msg.sender)]:
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args ethGiven[address(arg1)], msg.value
                                        else:
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                                 gas gas_remaining - 710 wei
                                                args ethGiven[address(arg1)], 95
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], 100
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], msg.value
                                        require delegate.return_code
                                        if delegate.return_data[0] > eth.balance(this.address):
                                            call arg1 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        else:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], msg.value
                                            require delegate.return_code
                                            call arg1 with:
                                               value delegate.return_data[0] wei
                                                 gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                else:
                                    if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                        if msg.value > 0:
                                            call arg1 with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] >= 178000000 * 10^18:
                                            if msg.value > 0:
                                                call arg1 with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                        else:
                                            ethGiven[address(arg1)] = 0
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            if not stor0[address(msg.sender)]:
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args ethGiven[address(arg1)], msg.value
                                            else:
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                                     gas gas_remaining - 710 wei
                                                    args ethGiven[address(arg1)], 95
                                                require delegate.return_code
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                                     gas gas_remaining - 710 wei
                                                    args delegate.return_data[0], 100
                                                require delegate.return_code
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args delegate.return_data[0], msg.value
                                            require delegate.return_code
                                            if delegate.return_data[0] > eth.balance(this.address):
                                                call arg1 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                            else:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args delegate.return_data[0], msg.value
                                                require delegate.return_code
                                                call arg1 with:
                                                   value delegate.return_data[0] wei
                                                     gas 2300 * is_zero(value) wei
                                            require ext_call.success
}

function buy(address arg1) payable {
    emit Buy(address(arg1), msg.value);
    require block.number >= _startBlock
    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
         gas gas_remaining - 710 wei
        args _startBlock, 145038
    require delegate.return_code
    if block.number >= delegate.return_data[0]:
        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
             gas gas_remaining - 710 wei
            args _startBlock, 290076
        require delegate.return_code
        if block.number >= delegate.return_data[0]:
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 435114
            require delegate.return_code
            if block.number >= delegate.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 567540
                require delegate.return_code
                if block.number > delegate.return_data[0]:
                    require block.number >= _startBlock
                    require ext_code.size(coinAddress)
                    call coinAddress.0x7d64bcb4 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    call msg.sender with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require block.number >= _startBlock
                    require ext_code.size(coinAddress)
                    if 1000000000 * 10^18 < ext_call.return_data[0]:
                        call coinAddress.0x7d64bcb4 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call coinAddress.0xa65ecbeb with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args 20000, msg.value
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 16
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 84
                        require delegate.return_code
                        if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 145038
                            require delegate.return_code
                            if block.number < delegate.return_data[0]:
                                stor0[address(arg1)] = 1
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args msg.value, 5
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 100
                                require delegate.return_code
                                require ext_code.size(devTeamAddress)
                                call devTeamAddress.recieveFunds() with:
                                   value delegate.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args devTeamAddress, delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args ethGiven[address(arg1)], msg.value
                            require delegate.return_code
                            ethGiven[address(arg1)] = delegate.return_data[0]
                            require ext_call.return_data[0]
                            require ext_call.return_data[0]
                        else:
                            emit AmountToLittle()
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], delegate.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], delegate.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 16
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 84
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args devTeamAddress, delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args ethGiven[address(arg1)], msg.value
                            require delegate.return_code
                            ethGiven[address(arg1)] = delegate.return_data[0]
                            require ext_call.return_data[0]
                            require ext_call.return_data[0]
                            require ext_code.size(coinAddress)
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
            else:
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if 833000000 * 10^18 > ext_call.return_data[0]:
                    require block.number >= _startBlock
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa65ecbeb with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                         gas gas_remaining - 710 wei
                        args 25000, msg.value
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], 16
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], 84
                    require delegate.return_code
                    if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 145038
                        require delegate.return_code
                        if block.number < delegate.return_data[0]:
                            stor0[address(arg1)] = 1
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args msg.value, 5
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 100
                            require delegate.return_code
                            require ext_code.size(devTeamAddress)
                            call devTeamAddress.recieveFunds() with:
                               value delegate.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        require ext_code.size(coinAddress)
                        call coinAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), delegate.return_data[0]
                        require ext_call.success
                        require ext_code.size(coinAddress)
                        call coinAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args devTeamAddress, delegate.return_data[0]
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args ethGiven[address(arg1)], msg.value
                        require delegate.return_code
                        ethGiven[address(arg1)] = delegate.return_data[0]
                        require ext_call.return_data[0]
                        require ext_call.return_data[0]
                    else:
                        emit AmountToLittle()
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 16
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 84
                        require delegate.return_code
                        require ext_code.size(coinAddress)
                        call coinAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), delegate.return_data[0]
                        require ext_call.success
                        require ext_code.size(coinAddress)
                        call coinAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args devTeamAddress, delegate.return_data[0]
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args ethGiven[address(arg1)], msg.value
                        require delegate.return_code
                        ethGiven[address(arg1)] = delegate.return_data[0]
                        require ext_call.return_data[0]
                        require ext_call.return_data[0]
                        require ext_code.size(coinAddress)
                        call coinAddress.0x7d64bcb4 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                else:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    if block.number > delegate.return_data[0]:
                        require block.number >= _startBlock
                        require ext_code.size(coinAddress)
                        call coinAddress.0x7d64bcb4 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require block.number >= _startBlock
                        require ext_code.size(coinAddress)
                        if 1000000000 * 10^18 < ext_call.return_data[0]:
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call coinAddress.0xa65ecbeb with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args 20000, msg.value
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 16
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 84
                            require delegate.return_code
                            if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 145038
                                require delegate.return_code
                                if block.number < delegate.return_data[0]:
                                    stor0[address(arg1)] = 1
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args msg.value, 5
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 100
                                    require delegate.return_code
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value delegate.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                    require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args devTeamAddress, delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                                require delegate.return_code
                                ethGiven[address(arg1)] = delegate.return_data[0]
                                require ext_call.return_data[0]
                                require ext_call.return_data[0]
                            else:
                                emit AmountToLittle()
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], ext_call.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], delegate.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], delegate.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 16
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 84
                                require delegate.return_code
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args devTeamAddress, delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                                require delegate.return_code
                                ethGiven[address(arg1)] = delegate.return_data[0]
                                require ext_call.return_data[0]
                                require ext_call.return_data[0]
                                require ext_code.size(coinAddress)
                                call coinAddress.0x7d64bcb4 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
        else:
            require ext_code.size(coinAddress)
            call coinAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if 595000000 * 10^18 > ext_call.return_data[0]:
                require block.number >= _startBlock
                require ext_code.size(coinAddress)
                call coinAddress.0xa65ecbeb with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                     gas gas_remaining - 710 wei
                    args 33333, msg.value
                require delegate.return_code
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], 16
                require delegate.return_code
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], 84
                require delegate.return_code
                if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 145038
                    require delegate.return_code
                    if block.number < delegate.return_data[0]:
                        stor0[address(arg1)] = 1
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args msg.value, 5
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 100
                        require delegate.return_code
                        require ext_code.size(devTeamAddress)
                        call devTeamAddress.recieveFunds() with:
                           value delegate.return_data[0] wei
                             gas gas_remaining - 9710 wei
                        require ext_call.success
                    require ext_code.size(coinAddress)
                    call coinAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), delegate.return_data[0]
                    require ext_call.success
                    require ext_code.size(coinAddress)
                    call coinAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args devTeamAddress, delegate.return_data[0]
                    require ext_call.success
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args ethGiven[address(arg1)], msg.value
                    require delegate.return_code
                    ethGiven[address(arg1)] = delegate.return_data[0]
                    require ext_call.return_data[0]
                    require ext_call.return_data[0]
                else:
                    emit AmountToLittle()
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], ext_call.return_data[0]
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], delegate.return_data[0]
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], delegate.return_data[0]
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], 16
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], 84
                    require delegate.return_code
                    require ext_code.size(coinAddress)
                    call coinAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), delegate.return_data[0]
                    require ext_call.success
                    require ext_code.size(coinAddress)
                    call coinAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args devTeamAddress, delegate.return_data[0]
                    require ext_call.success
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args ethGiven[address(arg1)], msg.value
                    require delegate.return_code
                    ethGiven[address(arg1)] = delegate.return_data[0]
                    require ext_call.return_data[0]
                    require ext_call.return_data[0]
                    require ext_code.size(coinAddress)
                    call coinAddress.0x7d64bcb4 with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
            else:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 435114
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    if block.number > delegate.return_data[0]:
                        require block.number >= _startBlock
                        require ext_code.size(coinAddress)
                        call coinAddress.0x7d64bcb4 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require block.number >= _startBlock
                        require ext_code.size(coinAddress)
                        if 1000000000 * 10^18 < ext_call.return_data[0]:
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call coinAddress.0xa65ecbeb with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args 20000, msg.value
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 16
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 84
                            require delegate.return_code
                            if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 145038
                                require delegate.return_code
                                if block.number < delegate.return_data[0]:
                                    stor0[address(arg1)] = 1
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args msg.value, 5
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 100
                                    require delegate.return_code
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value delegate.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                    require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args devTeamAddress, delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                                require delegate.return_code
                                ethGiven[address(arg1)] = delegate.return_data[0]
                                require ext_call.return_data[0]
                                require ext_call.return_data[0]
                            else:
                                emit AmountToLittle()
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], ext_call.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], delegate.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], delegate.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 16
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 84
                                require delegate.return_code
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args devTeamAddress, delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                                require delegate.return_code
                                ethGiven[address(arg1)] = delegate.return_data[0]
                                require ext_call.return_data[0]
                                require ext_call.return_data[0]
                                require ext_code.size(coinAddress)
                                call coinAddress.0x7d64bcb4 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 833000000 * 10^18 > ext_call.return_data[0]:
                        require block.number >= _startBlock
                        require ext_code.size(coinAddress)
                        call coinAddress.0xa65ecbeb with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args 25000, msg.value
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 16
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 84
                        require delegate.return_code
                        if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 145038
                            require delegate.return_code
                            if block.number < delegate.return_data[0]:
                                stor0[address(arg1)] = 1
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args msg.value, 5
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 100
                                require delegate.return_code
                                require ext_code.size(devTeamAddress)
                                call devTeamAddress.recieveFunds() with:
                                   value delegate.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args devTeamAddress, delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args ethGiven[address(arg1)], msg.value
                            require delegate.return_code
                            ethGiven[address(arg1)] = delegate.return_data[0]
                            require ext_call.return_data[0]
                            require ext_call.return_data[0]
                        else:
                            emit AmountToLittle()
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], delegate.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], delegate.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 16
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 84
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args devTeamAddress, delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args ethGiven[address(arg1)], msg.value
                            require delegate.return_code
                            ethGiven[address(arg1)] = delegate.return_data[0]
                            require ext_call.return_data[0]
                            require ext_call.return_data[0]
                            require ext_code.size(coinAddress)
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                    else:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            require block.number >= _startBlock
                            require ext_code.size(coinAddress)
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require block.number >= _startBlock
                            require ext_code.size(coinAddress)
                            if 1000000000 * 10^18 < ext_call.return_data[0]:
                                call coinAddress.0x7d64bcb4 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call coinAddress.0xa65ecbeb with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args 20000, msg.value
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 16
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 84
                                require delegate.return_code
                                if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number < delegate.return_data[0]:
                                        stor0[address(arg1)] = 1
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args msg.value, 5
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value delegate.return_data[0] wei
                                             gas gas_remaining - 9710 wei
                                        require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args devTeamAddress, delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                    require delegate.return_code
                                    ethGiven[address(arg1)] = delegate.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0]
                                else:
                                    emit AmountToLittle()
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], ext_call.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], delegate.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], delegate.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 16
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 84
                                    require delegate.return_code
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args devTeamAddress, delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                    require delegate.return_code
                                    ethGiven[address(arg1)] = delegate.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x7d64bcb4 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
    else:
        require ext_code.size(coinAddress)
        call coinAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if 357000000 * 10^18 > ext_call.return_data[0]:
            require block.number >= _startBlock
            require ext_code.size(coinAddress)
            call coinAddress.0xa65ecbeb with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                 gas gas_remaining - 710 wei
                args 50000, msg.value
            require delegate.return_code
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                 gas gas_remaining - 710 wei
                args delegate.return_data[0], 16
            require delegate.return_code
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                 gas gas_remaining - 710 wei
                args delegate.return_data[0], 84
            require delegate.return_code
            if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 145038
                require delegate.return_code
                if block.number < delegate.return_data[0]:
                    stor0[address(arg1)] = 1
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                         gas gas_remaining - 710 wei
                        args msg.value, 5
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], 100
                    require delegate.return_code
                    require ext_code.size(devTeamAddress)
                    call devTeamAddress.recieveFunds() with:
                       value delegate.return_data[0] wei
                         gas gas_remaining - 9710 wei
                    require ext_call.success
                require ext_code.size(coinAddress)
                call coinAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), delegate.return_data[0]
                require ext_call.success
                require ext_code.size(coinAddress)
                call coinAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args devTeamAddress, delegate.return_data[0]
                require ext_call.success
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args ethGiven[address(arg1)], msg.value
                require delegate.return_code
                ethGiven[address(arg1)] = delegate.return_data[0]
                require ext_call.return_data[0]
                require ext_call.return_data[0]
            else:
                emit AmountToLittle()
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], ext_call.return_data[0]
                require delegate.return_code
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], delegate.return_data[0]
                require delegate.return_code
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], delegate.return_data[0]
                require delegate.return_code
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], 16
                require delegate.return_code
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                     gas gas_remaining - 710 wei
                    args delegate.return_data[0], 84
                require delegate.return_code
                require ext_code.size(coinAddress)
                call coinAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), delegate.return_data[0]
                require ext_call.success
                require ext_code.size(coinAddress)
                call coinAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args devTeamAddress, delegate.return_data[0]
                require ext_call.success
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args ethGiven[address(arg1)], msg.value
                require delegate.return_code
                ethGiven[address(arg1)] = delegate.return_data[0]
                require ext_call.return_data[0]
                require ext_call.return_data[0]
                require ext_code.size(coinAddress)
                call coinAddress.0x7d64bcb4 with:
                     gas gas_remaining - 710 wei
                require ext_call.success
        else:
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 290076
            require delegate.return_code
            if block.number >= delegate.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 435114
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    if block.number > delegate.return_data[0]:
                        require block.number >= _startBlock
                        require ext_code.size(coinAddress)
                        call coinAddress.0x7d64bcb4 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        call msg.sender with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require block.number >= _startBlock
                        require ext_code.size(coinAddress)
                        if 1000000000 * 10^18 < ext_call.return_data[0]:
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            call coinAddress.0xa65ecbeb with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args 20000, msg.value
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 16
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 84
                            require delegate.return_code
                            if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 145038
                                require delegate.return_code
                                if block.number < delegate.return_data[0]:
                                    stor0[address(arg1)] = 1
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args msg.value, 5
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 100
                                    require delegate.return_code
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value delegate.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                    require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args devTeamAddress, delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                                require delegate.return_code
                                ethGiven[address(arg1)] = delegate.return_data[0]
                                require ext_call.return_data[0]
                                require ext_call.return_data[0]
                            else:
                                emit AmountToLittle()
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], ext_call.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], delegate.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], delegate.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 16
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 84
                                require delegate.return_code
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args devTeamAddress, delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                                require delegate.return_code
                                ethGiven[address(arg1)] = delegate.return_data[0]
                                require ext_call.return_data[0]
                                require ext_call.return_data[0]
                                require ext_code.size(coinAddress)
                                call coinAddress.0x7d64bcb4 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 833000000 * 10^18 > ext_call.return_data[0]:
                        require block.number >= _startBlock
                        require ext_code.size(coinAddress)
                        call coinAddress.0xa65ecbeb with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args 25000, msg.value
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 16
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 84
                        require delegate.return_code
                        if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 145038
                            require delegate.return_code
                            if block.number < delegate.return_data[0]:
                                stor0[address(arg1)] = 1
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args msg.value, 5
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 100
                                require delegate.return_code
                                require ext_code.size(devTeamAddress)
                                call devTeamAddress.recieveFunds() with:
                                   value delegate.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args devTeamAddress, delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args ethGiven[address(arg1)], msg.value
                            require delegate.return_code
                            ethGiven[address(arg1)] = delegate.return_data[0]
                            require ext_call.return_data[0]
                            require ext_call.return_data[0]
                        else:
                            emit AmountToLittle()
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], ext_call.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], delegate.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], delegate.return_data[0]
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 16
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 84
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(coinAddress)
                            call coinAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args devTeamAddress, delegate.return_data[0]
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args ethGiven[address(arg1)], msg.value
                            require delegate.return_code
                            ethGiven[address(arg1)] = delegate.return_data[0]
                            require ext_call.return_data[0]
                            require ext_call.return_data[0]
                            require ext_code.size(coinAddress)
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                    else:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            require block.number >= _startBlock
                            require ext_code.size(coinAddress)
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require block.number >= _startBlock
                            require ext_code.size(coinAddress)
                            if 1000000000 * 10^18 < ext_call.return_data[0]:
                                call coinAddress.0x7d64bcb4 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call coinAddress.0xa65ecbeb with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args 20000, msg.value
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 16
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 84
                                require delegate.return_code
                                if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number < delegate.return_data[0]:
                                        stor0[address(arg1)] = 1
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args msg.value, 5
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value delegate.return_data[0] wei
                                             gas gas_remaining - 9710 wei
                                        require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args devTeamAddress, delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                    require delegate.return_code
                                    ethGiven[address(arg1)] = delegate.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0]
                                else:
                                    emit AmountToLittle()
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], ext_call.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], delegate.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], delegate.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 16
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 84
                                    require delegate.return_code
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args devTeamAddress, delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                    require delegate.return_code
                                    ethGiven[address(arg1)] = delegate.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x7d64bcb4 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
            else:
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if 595000000 * 10^18 > ext_call.return_data[0]:
                    require block.number >= _startBlock
                    require ext_code.size(coinAddress)
                    call coinAddress.0xa65ecbeb with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                         gas gas_remaining - 710 wei
                        args 33333, msg.value
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], 16
                    require delegate.return_code
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                         gas gas_remaining - 710 wei
                        args delegate.return_data[0], 84
                    require delegate.return_code
                    if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 145038
                        require delegate.return_code
                        if block.number < delegate.return_data[0]:
                            stor0[address(arg1)] = 1
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args msg.value, 5
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 100
                            require delegate.return_code
                            require ext_code.size(devTeamAddress)
                            call devTeamAddress.recieveFunds() with:
                               value delegate.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                            require ext_call.success
                        require ext_code.size(coinAddress)
                        call coinAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), delegate.return_data[0]
                        require ext_call.success
                        require ext_code.size(coinAddress)
                        call coinAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args devTeamAddress, delegate.return_data[0]
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args ethGiven[address(arg1)], msg.value
                        require delegate.return_code
                        ethGiven[address(arg1)] = delegate.return_data[0]
                        require ext_call.return_data[0]
                        require ext_call.return_data[0]
                    else:
                        emit AmountToLittle()
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], ext_call.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], delegate.return_data[0]
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 16
                        require delegate.return_code
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                             gas gas_remaining - 710 wei
                            args delegate.return_data[0], 84
                        require delegate.return_code
                        require ext_code.size(coinAddress)
                        call coinAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), delegate.return_data[0]
                        require ext_call.success
                        require ext_code.size(coinAddress)
                        call coinAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args devTeamAddress, delegate.return_data[0]
                        require ext_call.success
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args ethGiven[address(arg1)], msg.value
                        require delegate.return_code
                        ethGiven[address(arg1)] = delegate.return_data[0]
                        require ext_call.return_data[0]
                        require ext_call.return_data[0]
                        require ext_code.size(coinAddress)
                        call coinAddress.0x7d64bcb4 with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                else:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 435114
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        if block.number > delegate.return_data[0]:
                            require block.number >= _startBlock
                            require ext_code.size(coinAddress)
                            call coinAddress.0x7d64bcb4 with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            call msg.sender with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require block.number >= _startBlock
                            require ext_code.size(coinAddress)
                            if 1000000000 * 10^18 < ext_call.return_data[0]:
                                call coinAddress.0x7d64bcb4 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call coinAddress.0xa65ecbeb with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args 20000, msg.value
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 16
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 84
                                require delegate.return_code
                                if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number < delegate.return_data[0]:
                                        stor0[address(arg1)] = 1
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args msg.value, 5
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 100
                                        require delegate.return_code
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value delegate.return_data[0] wei
                                             gas gas_remaining - 9710 wei
                                        require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args devTeamAddress, delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                    require delegate.return_code
                                    ethGiven[address(arg1)] = delegate.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0]
                                else:
                                    emit AmountToLittle()
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], ext_call.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], delegate.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], delegate.return_data[0]
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 16
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 84
                                    require delegate.return_code
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args devTeamAddress, delegate.return_data[0]
                                    require ext_call.success
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args ethGiven[address(arg1)], msg.value
                                    require delegate.return_code
                                    ethGiven[address(arg1)] = delegate.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_call.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x7d64bcb4 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 833000000 * 10^18 > ext_call.return_data[0]:
                            require block.number >= _startBlock
                            require ext_code.size(coinAddress)
                            call coinAddress.0xa65ecbeb with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args 25000, msg.value
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 16
                            require delegate.return_code
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                 gas gas_remaining - 710 wei
                                args delegate.return_data[0], 84
                            require delegate.return_code
                            if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 145038
                                require delegate.return_code
                                if block.number < delegate.return_data[0]:
                                    stor0[address(arg1)] = 1
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args msg.value, 5
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 100
                                    require delegate.return_code
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value delegate.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                    require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args devTeamAddress, delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                                require delegate.return_code
                                ethGiven[address(arg1)] = delegate.return_data[0]
                                require ext_call.return_data[0]
                                require ext_call.return_data[0]
                            else:
                                emit AmountToLittle()
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], ext_call.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], delegate.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], delegate.return_data[0]
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 16
                                require delegate.return_code
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                     gas gas_remaining - 710 wei
                                    args delegate.return_data[0], 84
                                require delegate.return_code
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(coinAddress)
                                call coinAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args devTeamAddress, delegate.return_data[0]
                                require ext_call.success
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args ethGiven[address(arg1)], msg.value
                                require delegate.return_code
                                ethGiven[address(arg1)] = delegate.return_data[0]
                                require ext_call.return_data[0]
                                require ext_call.return_data[0]
                                require ext_code.size(coinAddress)
                                call coinAddress.0x7d64bcb4 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                        else:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            if block.number > delegate.return_data[0]:
                                require block.number >= _startBlock
                                require ext_code.size(coinAddress)
                                call coinAddress.0x7d64bcb4 with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                call msg.sender with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require block.number >= _startBlock
                                require ext_code.size(coinAddress)
                                if 1000000000 * 10^18 < ext_call.return_data[0]:
                                    call coinAddress.0x7d64bcb4 with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    call coinAddress.0xa65ecbeb with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args 20000, msg.value
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 16
                                    require delegate.return_code
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                         gas gas_remaining - 710 wei
                                        args delegate.return_data[0], 84
                                    require delegate.return_code
                                    if ext_call.return_data[0] >= 2 * delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number < delegate.return_data[0]:
                                            stor0[address(arg1)] = 1
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                                 gas gas_remaining - 710 wei
                                                args msg.value, 5
                                            require delegate.return_code
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                                 gas gas_remaining - 710 wei
                                                args delegate.return_data[0], 100
                                            require delegate.return_code
                                            require ext_code.size(devTeamAddress)
                                            call devTeamAddress.recieveFunds() with:
                                               value delegate.return_data[0] wei
                                                 gas gas_remaining - 9710 wei
                                            require ext_call.success
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), delegate.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args devTeamAddress, delegate.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], msg.value
                                        require delegate.return_code
                                        ethGiven[address(arg1)] = delegate.return_data[0]
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0]
                                    else:
                                        emit AmountToLittle()
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], ext_call.return_data[0]
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], delegate.return_data[0]
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], delegate.return_data[0]
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xc8a4ac9c with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 16
                                        require delegate.return_code
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0xa391c15b with:
                                             gas gas_remaining - 710 wei
                                            args delegate.return_data[0], 84
                                        require delegate.return_code
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), delegate.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args devTeamAddress, delegate.return_data[0]
                                        require ext_call.success
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args ethGiven[address(arg1)], msg.value
                                        require delegate.return_code
                                        ethGiven[address(arg1)] = delegate.return_data[0]
                                        require ext_call.return_data[0]
                                        require ext_call.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x7d64bcb4 with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
}

function _fallback() payable {
    if block.number < _startBlock:
        require ext_code.size(coinAddress)
        call coinAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] < 178000000 * 10^18:
            require ext_code.size(this.address)
            call this.address.0xfa89401a with:
               value msg.value wei
                 gas gas_remaining - 9710 wei
                args msg.sender
        else:
            if not msg.value:
                emit SendAllFunds()
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] >= 178000000 * 10^18
                require ext_code.size(devTeamAddress)
                call devTeamAddress.recieveFunds() with:
                   value eth.balance(this.address) wei
                     gas gas_remaining - 9710 wei
            else:
                require block.number >= _startBlock
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 145038
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 290076
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 435114
                        require delegate.return_code
                        if block.number >= delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            require block.number <= delegate.return_data[0]
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 567540
                                require delegate.return_code
                                require block.number <= delegate.return_data[0]
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 435114
                            require delegate.return_code
                            if block.number >= delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 567540
                                require delegate.return_code
                                require block.number <= delegate.return_data[0]
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 567540
                                    require delegate.return_code
                                    require block.number <= delegate.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 357000000 * 10^18 <= ext_call.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 290076
                        require delegate.return_code
                        if block.number >= delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 435114
                            require delegate.return_code
                            if block.number >= delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 567540
                                require delegate.return_code
                                require block.number <= delegate.return_data[0]
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 567540
                                    require delegate.return_code
                                    require block.number <= delegate.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 435114
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 567540
                                    require delegate.return_code
                                    require block.number <= delegate.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                require ext_code.size(this.address)
                call this.address.0xf088d547 with:
                   value msg.value wei
                     gas gas_remaining - 9710 wei
                    args msg.sender
    else:
        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
             gas gas_remaining - 710 wei
            args _startBlock, 145038
        require delegate.return_code
        if block.number >= delegate.return_data[0]:
            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                 gas gas_remaining - 710 wei
                args _startBlock, 290076
            require delegate.return_code
            if block.number >= delegate.return_data[0]:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 435114
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 567540
                    require delegate.return_code
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if block.number > delegate.return_data[0]:
                        if ext_call.return_data[0] < 178000000 * 10^18:
                            require ext_code.size(this.address)
                            call this.address.0xfa89401a with:
                               value msg.value wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                        else:
                            if not msg.value:
                                emit SendAllFunds()
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] >= 178000000 * 10^18
                                require ext_code.size(devTeamAddress)
                                call devTeamAddress.recieveFunds() with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining - 9710 wei
                            else:
                                require block.number >= _startBlock
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 145038
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 290076
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 357000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                require ext_code.size(this.address)
                                call this.address.0xf088d547 with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                    else:
                        if 1000000000 * 10^18 >= ext_call.return_data[0]:
                            if not msg.value:
                                emit SendAllFunds()
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] >= 178000000 * 10^18
                                require ext_code.size(devTeamAddress)
                                call devTeamAddress.recieveFunds() with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining - 9710 wei
                            else:
                                require block.number >= _startBlock
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 145038
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 290076
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 357000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                require ext_code.size(this.address)
                                call this.address.0xf088d547 with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if ext_call.return_data[0] < 178000000 * 10^18:
                                require ext_code.size(this.address)
                                call this.address.0xfa89401a with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                            else:
                                if not msg.value:
                                    emit SendAllFunds()
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 178000000 * 10^18
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining - 9710 wei
                                else:
                                    require block.number >= _startBlock
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    require ext_code.size(this.address)
                                    call this.address.0xf088d547 with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 833000000 * 10^18 > ext_call.return_data[0]:
                        if not msg.value:
                            emit SendAllFunds()
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] >= 178000000 * 10^18
                            require ext_code.size(devTeamAddress)
                            call devTeamAddress.recieveFunds() with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining - 9710 wei
                        else:
                            require block.number >= _startBlock
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 145038
                            require delegate.return_code
                            if block.number >= delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 290076
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 435114
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if 357000000 * 10^18 <= ext_call.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 290076
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                            require ext_code.size(this.address)
                            call this.address.0xf088d547 with:
                               value msg.value wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                    else:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if block.number > delegate.return_data[0]:
                            if ext_call.return_data[0] < 178000000 * 10^18:
                                require ext_code.size(this.address)
                                call this.address.0xfa89401a with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                            else:
                                if not msg.value:
                                    emit SendAllFunds()
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 178000000 * 10^18
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining - 9710 wei
                                else:
                                    require block.number >= _startBlock
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    require ext_code.size(this.address)
                                    call this.address.0xf088d547 with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                        else:
                            if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                if not msg.value:
                                    emit SendAllFunds()
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 178000000 * 10^18
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining - 9710 wei
                                else:
                                    require block.number >= _startBlock
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    require ext_code.size(this.address)
                                    call this.address.0xf088d547 with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if ext_call.return_data[0] < 178000000 * 10^18:
                                    require ext_code.size(this.address)
                                    call this.address.0xfa89401a with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                else:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
            else:
                require ext_code.size(coinAddress)
                call coinAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if 595000000 * 10^18 > ext_call.return_data[0]:
                    if not msg.value:
                        emit SendAllFunds()
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] >= 178000000 * 10^18
                        require ext_code.size(devTeamAddress)
                        call devTeamAddress.recieveFunds() with:
                           value eth.balance(this.address) wei
                             gas gas_remaining - 9710 wei
                    else:
                        require block.number >= _startBlock
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 145038
                        require delegate.return_code
                        if block.number >= delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 290076
                            require delegate.return_code
                            if block.number >= delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 435114
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 567540
                                    require delegate.return_code
                                    require block.number <= delegate.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 435114
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 290076
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 435114
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                        require ext_code.size(this.address)
                        call this.address.0xf088d547 with:
                           value msg.value wei
                             gas gas_remaining - 9710 wei
                            args msg.sender
                else:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 435114
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if block.number > delegate.return_data[0]:
                            if ext_call.return_data[0] < 178000000 * 10^18:
                                require ext_code.size(this.address)
                                call this.address.0xfa89401a with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                            else:
                                if not msg.value:
                                    emit SendAllFunds()
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 178000000 * 10^18
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining - 9710 wei
                                else:
                                    require block.number >= _startBlock
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    require ext_code.size(this.address)
                                    call this.address.0xf088d547 with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                        else:
                            if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                if not msg.value:
                                    emit SendAllFunds()
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 178000000 * 10^18
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining - 9710 wei
                                else:
                                    require block.number >= _startBlock
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    require ext_code.size(this.address)
                                    call this.address.0xf088d547 with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if ext_call.return_data[0] < 178000000 * 10^18:
                                    require ext_code.size(this.address)
                                    call this.address.0xfa89401a with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                else:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 833000000 * 10^18 > ext_call.return_data[0]:
                            if not msg.value:
                                emit SendAllFunds()
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] >= 178000000 * 10^18
                                require ext_code.size(devTeamAddress)
                                call devTeamAddress.recieveFunds() with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining - 9710 wei
                            else:
                                require block.number >= _startBlock
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 145038
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 290076
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 357000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                require ext_code.size(this.address)
                                call this.address.0xf088d547 with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                        else:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if block.number > delegate.return_data[0]:
                                if ext_call.return_data[0] < 178000000 * 10^18:
                                    require ext_code.size(this.address)
                                    call this.address.0xfa89401a with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                else:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                            else:
                                if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] < 178000000 * 10^18:
                                        require ext_code.size(this.address)
                                        call this.address.0xfa89401a with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                    else:
                                        if not msg.value:
                                            emit SendAllFunds()
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 178000000 * 10^18
                                            require ext_code.size(devTeamAddress)
                                            call devTeamAddress.recieveFunds() with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining - 9710 wei
                                        else:
                                            require block.number >= _startBlock
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 145038
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 290076
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 435114
                                                            require delegate.return_code
                                                            if block.number >= delegate.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                            else:
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args _startBlock, 567540
                                                                    require delegate.return_code
                                                                    require block.number <= delegate.return_data[0]
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            require ext_code.size(this.address)
                                            call this.address.0xf088d547 with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
        else:
            require ext_code.size(coinAddress)
            call coinAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if 357000000 * 10^18 > ext_call.return_data[0]:
                if not msg.value:
                    emit SendAllFunds()
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] >= 178000000 * 10^18
                    require ext_code.size(devTeamAddress)
                    call devTeamAddress.recieveFunds() with:
                       value eth.balance(this.address) wei
                         gas gas_remaining - 9710 wei
                else:
                    require block.number >= _startBlock
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 145038
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 290076
                        require delegate.return_code
                        if block.number >= delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 435114
                            require delegate.return_code
                            if block.number >= delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 567540
                                require delegate.return_code
                                require block.number <= delegate.return_data[0]
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 567540
                                    require delegate.return_code
                                    require block.number <= delegate.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 435114
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 567540
                                    require delegate.return_code
                                    require block.number <= delegate.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 290076
                            require delegate.return_code
                            if block.number >= delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 435114
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 567540
                                    require delegate.return_code
                                    require block.number <= delegate.return_data[0]
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 435114
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                    require ext_code.size(this.address)
                    call this.address.0xf088d547 with:
                       value msg.value wei
                         gas gas_remaining - 9710 wei
                        args msg.sender
            else:
                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                     gas gas_remaining - 710 wei
                    args _startBlock, 290076
                require delegate.return_code
                if block.number >= delegate.return_data[0]:
                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                         gas gas_remaining - 710 wei
                        args _startBlock, 435114
                    require delegate.return_code
                    if block.number >= delegate.return_data[0]:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 567540
                        require delegate.return_code
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if block.number > delegate.return_data[0]:
                            if ext_call.return_data[0] < 178000000 * 10^18:
                                require ext_code.size(this.address)
                                call this.address.0xfa89401a with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                            else:
                                if not msg.value:
                                    emit SendAllFunds()
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 178000000 * 10^18
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining - 9710 wei
                                else:
                                    require block.number >= _startBlock
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    require ext_code.size(this.address)
                                    call this.address.0xf088d547 with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                        else:
                            if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                if not msg.value:
                                    emit SendAllFunds()
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 178000000 * 10^18
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining - 9710 wei
                                else:
                                    require block.number >= _startBlock
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    require ext_code.size(this.address)
                                    call this.address.0xf088d547 with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if ext_call.return_data[0] < 178000000 * 10^18:
                                    require ext_code.size(this.address)
                                    call this.address.0xfa89401a with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                else:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                    else:
                        require ext_code.size(coinAddress)
                        call coinAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if 833000000 * 10^18 > ext_call.return_data[0]:
                            if not msg.value:
                                emit SendAllFunds()
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                require ext_call.return_data[0] >= 178000000 * 10^18
                                require ext_code.size(devTeamAddress)
                                call devTeamAddress.recieveFunds() with:
                                   value eth.balance(this.address) wei
                                     gas gas_remaining - 9710 wei
                            else:
                                require block.number >= _startBlock
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 145038
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 290076
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 357000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                require ext_code.size(this.address)
                                call this.address.0xf088d547 with:
                                   value msg.value wei
                                     gas gas_remaining - 9710 wei
                                    args msg.sender
                        else:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if block.number > delegate.return_data[0]:
                                if ext_call.return_data[0] < 178000000 * 10^18:
                                    require ext_code.size(this.address)
                                    call this.address.0xfa89401a with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                else:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                            else:
                                if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] < 178000000 * 10^18:
                                        require ext_code.size(this.address)
                                        call this.address.0xfa89401a with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                    else:
                                        if not msg.value:
                                            emit SendAllFunds()
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 178000000 * 10^18
                                            require ext_code.size(devTeamAddress)
                                            call devTeamAddress.recieveFunds() with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining - 9710 wei
                                        else:
                                            require block.number >= _startBlock
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 145038
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 290076
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 435114
                                                            require delegate.return_code
                                                            if block.number >= delegate.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                            else:
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args _startBlock, 567540
                                                                    require delegate.return_code
                                                                    require block.number <= delegate.return_data[0]
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            require ext_code.size(this.address)
                                            call this.address.0xf088d547 with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                else:
                    require ext_code.size(coinAddress)
                    call coinAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if 595000000 * 10^18 > ext_call.return_data[0]:
                        if not msg.value:
                            emit SendAllFunds()
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_call.return_data[0] >= 178000000 * 10^18
                            require ext_code.size(devTeamAddress)
                            call devTeamAddress.recieveFunds() with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining - 9710 wei
                        else:
                            require block.number >= _startBlock
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 145038
                            require delegate.return_code
                            if block.number >= delegate.return_data[0]:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 290076
                                require delegate.return_code
                                if block.number >= delegate.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 435114
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 567540
                                        require delegate.return_code
                                        require block.number <= delegate.return_data[0]
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                            else:
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if 357000000 * 10^18 <= ext_call.return_data[0]:
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 290076
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 435114
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 567540
                                            require delegate.return_code
                                            require block.number <= delegate.return_data[0]
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                            require ext_code.size(this.address)
                            call this.address.0xf088d547 with:
                               value msg.value wei
                                 gas gas_remaining - 9710 wei
                                args msg.sender
                    else:
                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                             gas gas_remaining - 710 wei
                            args _startBlock, 435114
                        require delegate.return_code
                        if block.number >= delegate.return_data[0]:
                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                 gas gas_remaining - 710 wei
                                args _startBlock, 567540
                            require delegate.return_code
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if block.number > delegate.return_data[0]:
                                if ext_call.return_data[0] < 178000000 * 10^18:
                                    require ext_code.size(this.address)
                                    call this.address.0xfa89401a with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                                else:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                            else:
                                if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                    if not msg.value:
                                        emit SendAllFunds()
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        require ext_call.return_data[0] >= 178000000 * 10^18
                                        require ext_code.size(devTeamAddress)
                                        call devTeamAddress.recieveFunds() with:
                                           value eth.balance(this.address) wei
                                             gas gas_remaining - 9710 wei
                                    else:
                                        require block.number >= _startBlock
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 145038
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        require ext_code.size(this.address)
                                        call this.address.0xf088d547 with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                else:
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    if ext_call.return_data[0] < 178000000 * 10^18:
                                        require ext_code.size(this.address)
                                        call this.address.0xfa89401a with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                    else:
                                        if not msg.value:
                                            emit SendAllFunds()
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 178000000 * 10^18
                                            require ext_code.size(devTeamAddress)
                                            call devTeamAddress.recieveFunds() with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining - 9710 wei
                                        else:
                                            require block.number >= _startBlock
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 145038
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 290076
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 435114
                                                            require delegate.return_code
                                                            if block.number >= delegate.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                            else:
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args _startBlock, 567540
                                                                    require delegate.return_code
                                                                    require block.number <= delegate.return_data[0]
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            require ext_code.size(this.address)
                                            call this.address.0xf088d547 with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                        else:
                            require ext_code.size(coinAddress)
                            call coinAddress.0x18160ddd with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if 833000000 * 10^18 > ext_call.return_data[0]:
                                if not msg.value:
                                    emit SendAllFunds()
                                    require ext_code.size(coinAddress)
                                    call coinAddress.0x18160ddd with:
                                         gas gas_remaining - 710 wei
                                    require ext_call.success
                                    require ext_call.return_data[0] >= 178000000 * 10^18
                                    require ext_code.size(devTeamAddress)
                                    call devTeamAddress.recieveFunds() with:
                                       value eth.balance(this.address) wei
                                         gas gas_remaining - 9710 wei
                                else:
                                    require block.number >= _startBlock
                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                         gas gas_remaining - 710 wei
                                        args _startBlock, 145038
                                    require delegate.return_code
                                    if block.number >= delegate.return_data[0]:
                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                             gas gas_remaining - 710 wei
                                            args _startBlock, 290076
                                        require delegate.return_code
                                        if block.number >= delegate.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 435114
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 567540
                                                require delegate.return_code
                                                require block.number <= delegate.return_data[0]
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                        else:
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if 357000000 * 10^18 <= ext_call.return_data[0]:
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 290076
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 435114
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 567540
                                                    require delegate.return_code
                                                    require block.number <= delegate.return_data[0]
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                    require ext_code.size(this.address)
                                    call this.address.0xf088d547 with:
                                       value msg.value wei
                                         gas gas_remaining - 9710 wei
                                        args msg.sender
                            else:
                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                     gas gas_remaining - 710 wei
                                    args _startBlock, 567540
                                require delegate.return_code
                                require ext_code.size(coinAddress)
                                call coinAddress.0x18160ddd with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                if block.number > delegate.return_data[0]:
                                    if ext_call.return_data[0] < 178000000 * 10^18:
                                        require ext_code.size(this.address)
                                        call this.address.0xfa89401a with:
                                           value msg.value wei
                                             gas gas_remaining - 9710 wei
                                            args msg.sender
                                    else:
                                        if not msg.value:
                                            emit SendAllFunds()
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 178000000 * 10^18
                                            require ext_code.size(devTeamAddress)
                                            call devTeamAddress.recieveFunds() with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining - 9710 wei
                                        else:
                                            require block.number >= _startBlock
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 145038
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 290076
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 435114
                                                            require delegate.return_code
                                                            if block.number >= delegate.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                            else:
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args _startBlock, 567540
                                                                    require delegate.return_code
                                                                    require block.number <= delegate.return_data[0]
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            require ext_code.size(this.address)
                                            call this.address.0xf088d547 with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                else:
                                    if 1000000000 * 10^18 >= ext_call.return_data[0]:
                                        if not msg.value:
                                            emit SendAllFunds()
                                            require ext_code.size(coinAddress)
                                            call coinAddress.0x18160ddd with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            require ext_call.return_data[0] >= 178000000 * 10^18
                                            require ext_code.size(devTeamAddress)
                                            call devTeamAddress.recieveFunds() with:
                                               value eth.balance(this.address) wei
                                                 gas gas_remaining - 9710 wei
                                        else:
                                            require block.number >= _startBlock
                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                 gas gas_remaining - 710 wei
                                                args _startBlock, 145038
                                            require delegate.return_code
                                            if block.number >= delegate.return_data[0]:
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 290076
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 435114
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 567540
                                                        require delegate.return_code
                                                        require block.number <= delegate.return_data[0]
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            else:
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 290076
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 435114
                                                            require delegate.return_code
                                                            if block.number >= delegate.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                            else:
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args _startBlock, 567540
                                                                    require delegate.return_code
                                                                    require block.number <= delegate.return_data[0]
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                            require ext_code.size(this.address)
                                            call this.address.0xf088d547 with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                    else:
                                        require ext_code.size(coinAddress)
                                        call coinAddress.0x18160ddd with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        if ext_call.return_data[0] < 178000000 * 10^18:
                                            require ext_code.size(this.address)
                                            call this.address.0xfa89401a with:
                                               value msg.value wei
                                                 gas gas_remaining - 9710 wei
                                                args msg.sender
                                        else:
                                            if not msg.value:
                                                emit SendAllFunds()
                                                require ext_code.size(coinAddress)
                                                call coinAddress.0x18160ddd with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                require ext_call.return_data[0] >= 178000000 * 10^18
                                                require ext_code.size(devTeamAddress)
                                                call devTeamAddress.recieveFunds() with:
                                                   value eth.balance(this.address) wei
                                                     gas gas_remaining - 9710 wei
                                            else:
                                                require block.number >= _startBlock
                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                     gas gas_remaining - 710 wei
                                                    args _startBlock, 145038
                                                require delegate.return_code
                                                if block.number >= delegate.return_data[0]:
                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                         gas gas_remaining - 710 wei
                                                        args _startBlock, 290076
                                                    require delegate.return_code
                                                    if block.number >= delegate.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 435114
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 567540
                                                            require delegate.return_code
                                                            require block.number <= delegate.return_data[0]
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                    else:
                                                        require ext_code.size(coinAddress)
                                                        call coinAddress.0x18160ddd with:
                                                             gas gas_remaining - 710 wei
                                                        require ext_call.success
                                                        if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 435114
                                                            require delegate.return_code
                                                            if block.number >= delegate.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                            else:
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args _startBlock, 567540
                                                                    require delegate.return_code
                                                                    require block.number <= delegate.return_data[0]
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                else:
                                                    require ext_code.size(coinAddress)
                                                    call coinAddress.0x18160ddd with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    if 357000000 * 10^18 <= ext_call.return_data[0]:
                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                             gas gas_remaining - 710 wei
                                                            args _startBlock, 290076
                                                        require delegate.return_code
                                                        if block.number >= delegate.return_data[0]:
                                                            require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                            delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                 gas gas_remaining - 710 wei
                                                                args _startBlock, 435114
                                                            require delegate.return_code
                                                            if block.number >= delegate.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 567540
                                                                require delegate.return_code
                                                                require block.number <= delegate.return_data[0]
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                            else:
                                                                require ext_code.size(coinAddress)
                                                                call coinAddress.0x18160ddd with:
                                                                     gas gas_remaining - 710 wei
                                                                require ext_call.success
                                                                if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args _startBlock, 567540
                                                                    require delegate.return_code
                                                                    require block.number <= delegate.return_data[0]
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                        else:
                                                            require ext_code.size(coinAddress)
                                                            call coinAddress.0x18160ddd with:
                                                                 gas gas_remaining - 710 wei
                                                            require ext_call.success
                                                            if 595000000 * 10^18 <= ext_call.return_data[0]:
                                                                require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                     gas gas_remaining - 710 wei
                                                                    args _startBlock, 435114
                                                                require delegate.return_code
                                                                if block.number >= delegate.return_data[0]:
                                                                    require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                    delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                         gas gas_remaining - 710 wei
                                                                        args _startBlock, 567540
                                                                    require delegate.return_code
                                                                    require block.number <= delegate.return_data[0]
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                                else:
                                                                    require ext_code.size(coinAddress)
                                                                    call coinAddress.0x18160ddd with:
                                                                         gas gas_remaining - 710 wei
                                                                    require ext_call.success
                                                                    if 833000000 * 10^18 <= ext_call.return_data[0]:
                                                                        require ext_code.size(0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a)
                                                                        delegate 0x5f43fb5f69c97c5a31633bdf4e3f10d5b775902a.0x771602f7 with:
                                                                             gas gas_remaining - 710 wei
                                                                            args _startBlock, 567540
                                                                        require delegate.return_code
                                                                        require block.number <= delegate.return_data[0]
                                                                        require ext_code.size(coinAddress)
                                                                        call coinAddress.0x18160ddd with:
                                                                             gas gas_remaining - 710 wei
                                                                        require ext_call.success
                                                                        require 1000000000 * 10^18 >= ext_call.return_data[0]
                                                require ext_code.size(this.address)
                                                call this.address.0xf088d547 with:
                                                   value msg.value wei
                                                     gas gas_remaining - 9710 wei
                                                    args msg.sender
    require ext_call.success
}



}

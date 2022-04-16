contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2;
address stor4;
address stor5;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint8 stor14;
uint256 stor14; offset 8
uint256 stor15;

function _fallback() payable {
    uint8(stor1.field_160) = 0
    stor2 = 0
    stor5 = 0
    stor11 = 421591 * 3600
    stor12 = 0
    stor13 = 0
    uint8(stor14.field_0) = 0
    Mask(248, 0, stor14.field_8) = 0
    stor15 = 0
    require not msg.value
    require code.data[14863 len 20]
    require code.data[14831 len 20]
    create contract with 0 wei
                    code: code.data[9378 len 5441], this.address
    require create.new_address
    stor0 = address(create.new_address)
    stor4 = code.data[14831 len 20]
    address(stor1.field_0) = code.data[14863 len 20]
    return code.data[633 len 8745]
}



// =====================  Runtime code  =====================


const soldTokensOnPreIco = 12499847802447308 * 10^9

const supplyLimit = 487500000 * 10^18

const bountyOwnersTokens = 12500000 * 10^18

const PRICE = 2255


address cartaxiTokenAddress;
uint8 currentState; offset 160
address preIcoTokenAddress;
uint256 startIcoDate;
address escrowAddress;
address icoManagerAddress;
address tokenImporterAddress;
address founder1Address;
address founder2Address;
address founder3Address;
address founder4Address;
address bountyOwner;
uint256 foundersRewardTime;
uint256 importedTokens;
uint256 soldTokensOnIco;
uint8 stor14;
uint8 stor14; offset 8
uint256 stor14; offset 8
uint256 etherRaised;
mapping of uint8 stor16;

function currentState() {
    require currentState <= 4
    return currentState
}

function importedTokens() {
    return importedTokens
}

function founder1() {
    return founder1Address
}

function icoManager() {
    return icoManagerAddress
}

function sentTokensToBountyOwner() {
    return bool(uint8(stor14.field_8))
}

function preIcoToken() {
    return preIcoTokenAddress
}

function tokenImporter() {
    return tokenImporterAddress
}

function sentTokensToFounders() {
    return bool(uint8(stor14.field_0))
}

function foundersRewardTime() {
    return foundersRewardTime
}

function founder2() {
    return founder2Address
}

function founder4() {
    return founder4Address
}

function cartaxiToken() {
    return cartaxiTokenAddress
}

function bountyOwner() {
    return bountyOwner
}

function startIcoDate() {
    return startIcoDate
}

function etherRaised() {
    return etherRaised
}

function soldTokensOnIco() {
    return soldTokensOnIco
}

function escrow() {
    return escrowAddress
}

function founder3() {
    return founder3Address
}

function setBountyOwner(address arg1) {
    require msg.sender == icoManagerAddress
    require arg1
    bountyOwner = arg1
}

function setNewManager(address arg1) {
    require msg.sender == icoManagerAddress
    require arg1
    icoManagerAddress = arg1
}

function setState(uint8 arg1) {
    require msg.sender == icoManagerAddress
    require arg1 <= 4
    currentState = arg1
    require currentState <= 4
    if currentState == 2:
        startIcoDate = block.timestamp
}

function withdrawAllEther() {
    require msg.sender == icoManagerAddress
    if eth.balance(this.address) > 0:
        call escrowAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function withdrawEther(uint256 arg1) {
    require msg.sender == icoManagerAddress
    require arg1 > 0
    require arg1 <= eth.balance(this.address)
    call escrowAddress with:
       value 10^16 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burnTokens(address arg1, uint256 arg2) {
    require msg.sender == icoManagerAddress
    require currentState <= 4
    require currentState != 4
    require ext_code.size(cartaxiTokenAddress)
    call cartaxiTokenAddress.burnTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function init(address arg1, address arg2, address arg3, address arg4, address arg5) {
    require msg.sender == icoManagerAddress
    require currentState <= 4
    require currentState != 1
    require arg1
    require arg2
    require arg3
    require arg4
    require arg5
    founder1Address = arg1
    founder2Address = arg2
    founder3Address = arg3
    founder4Address = arg4
    escrowAddress = arg5
    currentState = 1
}

function sendTokensToBountyOwner() {
    require msg.sender == icoManagerAddress
    require currentState <= 4
    require currentState >= 1
    require not uint8(stor14.field_8)
    require soldTokensOnIco + 12499847802447308 * 10^9 >= soldTokensOnIco
    if soldTokensOnIco + 12499847802447308 * 10^9:
        require soldTokensOnIco + 12499847802447308 * 10^9
        require (25 * soldTokensOnIco) + 3124961950611827 * 10^11 / soldTokensOnIco + 12499847802447308 * 10^9 == 25
    require (25 * soldTokensOnIco) + 3124961950611827 * 10^11 == (1000 * (25 * soldTokensOnIco) + 3124961950611827 * 10^11 / 1000) + ((25 * soldTokensOnIco) + 3124961950611827 * 10^11 % 1000)
    require ext_code.size(cartaxiTokenAddress)
    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args bountyOwner, (25 * soldTokensOnIco) + 3124961950611827 * 10^11 / 1000
    require ext_call.success
    Mask(248, 0, stor14.field_8) = 1
}

function sendTokensToFounders() {
    require msg.sender == icoManagerAddress
    require currentState <= 4
    require currentState >= 1
    require not uint8(stor14.field_0)
    require block.timestamp >= foundersRewardTime
    require soldTokensOnIco + 12499847802447308 * 10^9 >= soldTokensOnIco
    if soldTokensOnIco + 12499847802447308 * 10^9:
        require soldTokensOnIco + 12499847802447308 * 10^9
        require (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / soldTokensOnIco + 12499847802447308 * 10^9 == 3166
    require (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 == (10000 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000) + ((3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 % 10000)
    if (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000:
        require (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000
        require 25 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 / (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 == 25
    require 25 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 == (100 * 25 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 / 100) + (25 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 % 100)
    require ext_code.size(cartaxiTokenAddress)
    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args founder1Address, 25 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 / 100
    require ext_call.success
    require ext_code.size(cartaxiTokenAddress)
    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args founder2Address, 25 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 / 100
    require ext_call.success
    require ext_code.size(cartaxiTokenAddress)
    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args founder3Address, 25 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 / 100
    require ext_call.success
    require ext_code.size(cartaxiTokenAddress)
    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args founder4Address, 25 * (3166 * soldTokensOnIco) + 39574518142548177128 * 10^9 / 10000 / 100
    require ext_call.success
    uint8(stor14.field_0) = 1
}

function importTokens(address arg1) {
    if icoManagerAddress != msg.sender:
        require msg.sender == arg1
    require not stor16[address(arg1)]
    require ext_code.size(preIcoTokenAddress)
    call preIcoTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] == (4101 * ext_call.return_data[0] / 4101) + (ext_call.return_data[0] % 4101)
    if ext_call.return_data[0] / 4101 >= 100 * 10^18:
        require ext_call.return_data[0] + (ext_call.return_data[0] / 20) >= ext_call.return_data[0]
        if ext_call.return_data[0] + (ext_call.return_data[0] / 20) > 0:
            require ext_code.size(cartaxiTokenAddress)
            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), ext_call.return_data[0] + (ext_call.return_data[0] / 20)
            require ext_call.success
            require importedTokens + ext_call.return_data[0] + (ext_call.return_data[0] / 20) >= importedTokens
            importedTokens = importedTokens + ext_call.return_data[0] + (ext_call.return_data[0] / 20)
    else:
        if ext_call.return_data[0] / 4101 >= 50 * 10^18:
            require ext_call.return_data[0] + (3 * ext_call.return_data[0] / 100) >= ext_call.return_data[0]
            if ext_call.return_data[0] + (3 * ext_call.return_data[0] / 100) > 0:
                require ext_code.size(cartaxiTokenAddress)
                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), ext_call.return_data[0] + (3 * ext_call.return_data[0] / 100)
                require ext_call.success
                require importedTokens + ext_call.return_data[0] + (3 * ext_call.return_data[0] / 100) >= importedTokens
                importedTokens = importedTokens + ext_call.return_data[0] + (3 * ext_call.return_data[0] / 100)
        else:
            if ext_call.return_data[0] / 4101 < 20 * 10^18:
                if ext_call.return_data[0] > 0:
                    require ext_code.size(cartaxiTokenAddress)
                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0]
                    require ext_call.success
                    require importedTokens + ext_call.return_data[0] >= importedTokens
                    importedTokens += ext_call.return_data[0]
            else:
                require ext_call.return_data[0] + (ext_call.return_data[0] / 50) >= ext_call.return_data[0]
                if ext_call.return_data[0] + (ext_call.return_data[0] / 50) > 0:
                    require ext_code.size(cartaxiTokenAddress)
                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), ext_call.return_data[0] + (ext_call.return_data[0] / 50)
                    require ext_call.success
                    require importedTokens + ext_call.return_data[0] + (ext_call.return_data[0] / 50) >= importedTokens
                    importedTokens = importedTokens + ext_call.return_data[0] + (ext_call.return_data[0] / 50)
    stor16[address(arg1)] = 1
}

function _fallback() payable {
    require currentState <= 4
    require currentState == 2
    require msg.sender
    require msg.value > 0
    if (block.timestamp - startIcoDate / 24 * 3600) + 1 == 1:
        if msg.value >= 1000 * 10^18:
            if 2255 * msg.value:
                require 2255 * msg.value
                require 67650 * msg.value / 2255 * msg.value == 30
            require 67650 * msg.value == (100 * 67650 * msg.value / 100) + (67650 * msg.value % 100)
            require soldTokensOnIco + (2255 * msg.value) + (67650 * msg.value / 100) >= soldTokensOnIco
            require soldTokensOnIco + (2255 * msg.value) + (67650 * msg.value / 100) <= 487500000 * 10^18
            require soldTokensOnIco + (2255 * msg.value) + (67650 * msg.value / 100) >= soldTokensOnIco
            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (67650 * msg.value / 100)
            require ext_code.size(cartaxiTokenAddress)
            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, (2255 * msg.value) + (67650 * msg.value / 100)
        else:
            if msg.value >= 500 * 10^18:
                if 2255 * msg.value:
                    require 2255 * msg.value
                    require 56375 * msg.value / 2255 * msg.value == 25
                require 56375 * msg.value == (100 * 56375 * msg.value / 100) + (56375 * msg.value % 100)
                require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) >= soldTokensOnIco
                require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) <= 487500000 * 10^18
                require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) >= soldTokensOnIco
                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100)
                require ext_code.size(cartaxiTokenAddress)
                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (2255 * msg.value) + (56375 * msg.value / 100)
            else:
                if msg.value >= 300 * 10^18:
                    if 2255 * msg.value:
                        require 2255 * msg.value
                        require 49610 * msg.value / 2255 * msg.value == 22
                    require 49610 * msg.value == (100 * 49610 * msg.value / 100) + (49610 * msg.value % 100)
                    require soldTokensOnIco + (2255 * msg.value) + (49610 * msg.value / 100) >= soldTokensOnIco
                    require soldTokensOnIco + (2255 * msg.value) + (49610 * msg.value / 100) <= 487500000 * 10^18
                    require soldTokensOnIco + (2255 * msg.value) + (49610 * msg.value / 100) >= soldTokensOnIco
                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (49610 * msg.value / 100)
                    require ext_code.size(cartaxiTokenAddress)
                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (2255 * msg.value) + (49610 * msg.value / 100)
                else:
                    if msg.value >= 100 * 10^18:
                        if 2255 * msg.value:
                            require 2255 * msg.value
                            require 45100 * msg.value / 2255 * msg.value == 20
                        require 45100 * msg.value == (100 * 45100 * msg.value / 100) + (45100 * msg.value % 100)
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) <= 487500000 * 10^18
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100)
                        require ext_code.size(cartaxiTokenAddress)
                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (2255 * msg.value) + (45100 * msg.value / 100)
                    else:
                        if msg.value >= 50 * 10^18:
                            if 2255 * msg.value:
                                require 2255 * msg.value
                                require 40590 * msg.value / 2255 * msg.value == 18
                            require 40590 * msg.value == (100 * 40590 * msg.value / 100) + (40590 * msg.value % 100)
                            require soldTokensOnIco + (2255 * msg.value) + (40590 * msg.value / 100) >= soldTokensOnIco
                            require soldTokensOnIco + (2255 * msg.value) + (40590 * msg.value / 100) <= 487500000 * 10^18
                            require soldTokensOnIco + (2255 * msg.value) + (40590 * msg.value / 100) >= soldTokensOnIco
                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (40590 * msg.value / 100)
                            require ext_code.size(cartaxiTokenAddress)
                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2255 * msg.value) + (40590 * msg.value / 100)
                        else:
                            if msg.value < 20 * 10^18:
                                if 2255 * msg.value:
                                    require 2255 * msg.value
                                    require 33825 * msg.value / 2255 * msg.value == 15
                                require 33825 * msg.value == (100 * 33825 * msg.value / 100) + (33825 * msg.value % 100)
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) <= 487500000 * 10^18
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100)
                                require ext_code.size(cartaxiTokenAddress)
                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2255 * msg.value) + (33825 * msg.value / 100)
                            else:
                                if 2255 * msg.value:
                                    require 2255 * msg.value
                                    require 38335 * msg.value / 2255 * msg.value == 17
                                require 38335 * msg.value == (100 * 38335 * msg.value / 100) + (38335 * msg.value % 100)
                                require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) >= soldTokensOnIco
                                require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) <= 487500000 * 10^18
                                require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) >= soldTokensOnIco
                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100)
                                require ext_code.size(cartaxiTokenAddress)
                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2255 * msg.value) + (38335 * msg.value / 100)
    else:
        if (block.timestamp - startIcoDate / 24 * 3600) + 1 == 2:
            if msg.value >= 1000 * 10^18:
                if 2255 * msg.value:
                    require 2255 * msg.value
                    require 56375 * msg.value / 2255 * msg.value == 25
                require 56375 * msg.value == (100 * 56375 * msg.value / 100) + (56375 * msg.value % 100)
                require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) >= soldTokensOnIco
                require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) <= 487500000 * 10^18
                require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) >= soldTokensOnIco
                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100)
                require ext_code.size(cartaxiTokenAddress)
                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (2255 * msg.value) + (56375 * msg.value / 100)
            else:
                if msg.value >= 500 * 10^18:
                    if 2255 * msg.value:
                        require 2255 * msg.value
                        require 45100 * msg.value / 2255 * msg.value == 20
                    require 45100 * msg.value == (100 * 45100 * msg.value / 100) + (45100 * msg.value % 100)
                    require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                    require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) <= 487500000 * 10^18
                    require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100)
                    require ext_code.size(cartaxiTokenAddress)
                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (2255 * msg.value) + (45100 * msg.value / 100)
                else:
                    if msg.value >= 300 * 10^18:
                        if 2255 * msg.value:
                            require 2255 * msg.value
                            require 38335 * msg.value / 2255 * msg.value == 17
                        require 38335 * msg.value == (100 * 38335 * msg.value / 100) + (38335 * msg.value % 100)
                        require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) >= soldTokensOnIco
                        require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) <= 487500000 * 10^18
                        require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) >= soldTokensOnIco
                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100)
                        require ext_code.size(cartaxiTokenAddress)
                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (2255 * msg.value) + (38335 * msg.value / 100)
                    else:
                        if msg.value >= 100 * 10^18:
                            if 2255 * msg.value:
                                require 2255 * msg.value
                                require 33825 * msg.value / 2255 * msg.value == 15
                            require 33825 * msg.value == (100 * 33825 * msg.value / 100) + (33825 * msg.value % 100)
                            require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                            require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) <= 487500000 * 10^18
                            require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100)
                            require ext_code.size(cartaxiTokenAddress)
                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2255 * msg.value) + (33825 * msg.value / 100)
                        else:
                            if msg.value >= 50 * 10^18:
                                if 2255 * msg.value:
                                    require 2255 * msg.value
                                    require 29315 * msg.value / 2255 * msg.value == 13
                                require 29315 * msg.value == (100 * 29315 * msg.value / 100) + (29315 * msg.value % 100)
                                require soldTokensOnIco + (2255 * msg.value) + (29315 * msg.value / 100) >= soldTokensOnIco
                                require soldTokensOnIco + (2255 * msg.value) + (29315 * msg.value / 100) <= 487500000 * 10^18
                                require soldTokensOnIco + (2255 * msg.value) + (29315 * msg.value / 100) >= soldTokensOnIco
                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (29315 * msg.value / 100)
                                require ext_code.size(cartaxiTokenAddress)
                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2255 * msg.value) + (29315 * msg.value / 100)
                            else:
                                if msg.value < 20 * 10^18:
                                    if 2255 * msg.value:
                                        require 2255 * msg.value
                                        require 22550 * msg.value / 2255 * msg.value == 10
                                    require 22550 * msg.value == (100 * 22550 * msg.value / 100) + (22550 * msg.value % 100)
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) <= 487500000 * 10^18
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100)
                                    require ext_code.size(cartaxiTokenAddress)
                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2255 * msg.value) + (22550 * msg.value / 100)
                                else:
                                    if 2255 * msg.value:
                                        require 2255 * msg.value
                                        require 27060 * msg.value / 2255 * msg.value == 12
                                    require 27060 * msg.value == (100 * 27060 * msg.value / 100) + (27060 * msg.value % 100)
                                    require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                    require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) <= 487500000 * 10^18
                                    require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100)
                                    require ext_code.size(cartaxiTokenAddress)
                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2255 * msg.value) + (27060 * msg.value / 100)
        else:
            if (block.timestamp - startIcoDate / 24 * 3600) + 1 == 3:
                if msg.value >= 1000 * 10^18:
                    if 2255 * msg.value:
                        require 2255 * msg.value
                        require 56375 * msg.value / 2255 * msg.value == 25
                    require 56375 * msg.value == (100 * 56375 * msg.value / 100) + (56375 * msg.value % 100)
                    require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) >= soldTokensOnIco
                    require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) <= 487500000 * 10^18
                    require soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100) >= soldTokensOnIco
                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (56375 * msg.value / 100)
                    require ext_code.size(cartaxiTokenAddress)
                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (2255 * msg.value) + (56375 * msg.value / 100)
                else:
                    if msg.value >= 500 * 10^18:
                        if 2255 * msg.value:
                            require 2255 * msg.value
                            require 45100 * msg.value / 2255 * msg.value == 20
                        require 45100 * msg.value == (100 * 45100 * msg.value / 100) + (45100 * msg.value % 100)
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) <= 487500000 * 10^18
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100)
                        require ext_code.size(cartaxiTokenAddress)
                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (2255 * msg.value) + (45100 * msg.value / 100)
                    else:
                        if msg.value >= 300 * 10^18:
                            if 2255 * msg.value:
                                require 2255 * msg.value
                                require 38335 * msg.value / 2255 * msg.value == 17
                            require 38335 * msg.value == (100 * 38335 * msg.value / 100) + (38335 * msg.value % 100)
                            require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) >= soldTokensOnIco
                            require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) <= 487500000 * 10^18
                            require soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100) >= soldTokensOnIco
                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (38335 * msg.value / 100)
                            require ext_code.size(cartaxiTokenAddress)
                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2255 * msg.value) + (38335 * msg.value / 100)
                        else:
                            if msg.value >= 100 * 10^18:
                                if 2255 * msg.value:
                                    require 2255 * msg.value
                                    require 33825 * msg.value / 2255 * msg.value == 15
                                require 33825 * msg.value == (100 * 33825 * msg.value / 100) + (33825 * msg.value % 100)
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) <= 487500000 * 10^18
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100)
                                require ext_code.size(cartaxiTokenAddress)
                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2255 * msg.value) + (33825 * msg.value / 100)
                            else:
                                if msg.value >= 50 * 10^18:
                                    if 2255 * msg.value:
                                        require 2255 * msg.value
                                        require 29315 * msg.value / 2255 * msg.value == 13
                                    require 29315 * msg.value == (100 * 29315 * msg.value / 100) + (29315 * msg.value % 100)
                                    require soldTokensOnIco + (2255 * msg.value) + (29315 * msg.value / 100) >= soldTokensOnIco
                                    require soldTokensOnIco + (2255 * msg.value) + (29315 * msg.value / 100) <= 487500000 * 10^18
                                    require soldTokensOnIco + (2255 * msg.value) + (29315 * msg.value / 100) >= soldTokensOnIco
                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (29315 * msg.value / 100)
                                    require ext_code.size(cartaxiTokenAddress)
                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2255 * msg.value) + (29315 * msg.value / 100)
                                else:
                                    if msg.value < 20 * 10^18:
                                        if 2255 * msg.value:
                                            require 2255 * msg.value
                                            require 22550 * msg.value / 2255 * msg.value == 10
                                        require 22550 * msg.value == (100 * 22550 * msg.value / 100) + (22550 * msg.value % 100)
                                        require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                        require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) <= 487500000 * 10^18
                                        require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100)
                                        require ext_code.size(cartaxiTokenAddress)
                                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2255 * msg.value) + (22550 * msg.value / 100)
                                    else:
                                        if 2255 * msg.value:
                                            require 2255 * msg.value
                                            require 27060 * msg.value / 2255 * msg.value == 12
                                        require 27060 * msg.value == (100 * 27060 * msg.value / 100) + (27060 * msg.value % 100)
                                        require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                        require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) <= 487500000 * 10^18
                                        require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100)
                                        require ext_code.size(cartaxiTokenAddress)
                                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2255 * msg.value) + (27060 * msg.value / 100)
            else:
                if (block.timestamp - startIcoDate / 24 * 3600) + 1 == 4:
                    if msg.value >= 1000 * 10^18:
                        if 2255 * msg.value:
                            require 2255 * msg.value
                            require 45100 * msg.value / 2255 * msg.value == 20
                        require 45100 * msg.value == (100 * 45100 * msg.value / 100) + (45100 * msg.value % 100)
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) <= 487500000 * 10^18
                        require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100)
                        require ext_code.size(cartaxiTokenAddress)
                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (2255 * msg.value) + (45100 * msg.value / 100)
                    else:
                        if msg.value >= 500 * 10^18:
                            if 2255 * msg.value:
                                require 2255 * msg.value
                                require 33825 * msg.value / 2255 * msg.value == 15
                            require 33825 * msg.value == (100 * 33825 * msg.value / 100) + (33825 * msg.value % 100)
                            require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                            require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) <= 487500000 * 10^18
                            require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100)
                            require ext_code.size(cartaxiTokenAddress)
                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2255 * msg.value) + (33825 * msg.value / 100)
                        else:
                            if msg.value >= 300 * 10^18:
                                if 2255 * msg.value:
                                    require 2255 * msg.value
                                    require 27060 * msg.value / 2255 * msg.value == 12
                                require 27060 * msg.value == (100 * 27060 * msg.value / 100) + (27060 * msg.value % 100)
                                require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) <= 487500000 * 10^18
                                require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100)
                                require ext_code.size(cartaxiTokenAddress)
                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2255 * msg.value) + (27060 * msg.value / 100)
                            else:
                                if msg.value >= 100 * 10^18:
                                    if 2255 * msg.value:
                                        require 2255 * msg.value
                                        require 22550 * msg.value / 2255 * msg.value == 10
                                    require 22550 * msg.value == (100 * 22550 * msg.value / 100) + (22550 * msg.value % 100)
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) <= 487500000 * 10^18
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100)
                                    require ext_code.size(cartaxiTokenAddress)
                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2255 * msg.value) + (22550 * msg.value / 100)
                                else:
                                    if msg.value >= 50 * 10^18:
                                        if 2255 * msg.value:
                                            require 2255 * msg.value
                                            require 8 * 2255 * msg.value / 2255 * msg.value == 8
                                        require 8 * 2255 * msg.value == (100 * 8 * 2255 * msg.value / 100) + (8 * 2255 * msg.value % 100)
                                        require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) >= soldTokensOnIco
                                        require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) <= 487500000 * 10^18
                                        require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) >= soldTokensOnIco
                                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100)
                                        require ext_code.size(cartaxiTokenAddress)
                                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2255 * msg.value) + (8 * 2255 * msg.value / 100)
                                    else:
                                        if msg.value < 20 * 10^18:
                                            if 2255 * msg.value:
                                                require 2255 * msg.value
                                                require 11275 * msg.value / 2255 * msg.value == 5
                                            require 11275 * msg.value == (100 * 11275 * msg.value / 100) + (11275 * msg.value % 100)
                                            require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) >= soldTokensOnIco
                                            require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) <= 487500000 * 10^18
                                            require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) >= soldTokensOnIco
                                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100)
                                            require ext_code.size(cartaxiTokenAddress)
                                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2255 * msg.value) + (11275 * msg.value / 100)
                                        else:
                                            if 2255 * msg.value:
                                                require 2255 * msg.value
                                                require 15785 * msg.value / 2255 * msg.value == 7
                                            require 15785 * msg.value == (100 * 15785 * msg.value / 100) + (15785 * msg.value % 100)
                                            require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) >= soldTokensOnIco
                                            require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) <= 487500000 * 10^18
                                            require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) >= soldTokensOnIco
                                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100)
                                            require ext_code.size(cartaxiTokenAddress)
                                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2255 * msg.value) + (15785 * msg.value / 100)
                else:
                    if (block.timestamp - startIcoDate / 24 * 3600) + 1 == 5:
                        if msg.value >= 1000 * 10^18:
                            if 2255 * msg.value:
                                require 2255 * msg.value
                                require 45100 * msg.value / 2255 * msg.value == 20
                            require 45100 * msg.value == (100 * 45100 * msg.value / 100) + (45100 * msg.value % 100)
                            require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                            require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) <= 487500000 * 10^18
                            require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100)
                            require ext_code.size(cartaxiTokenAddress)
                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (2255 * msg.value) + (45100 * msg.value / 100)
                        else:
                            if msg.value >= 500 * 10^18:
                                if 2255 * msg.value:
                                    require 2255 * msg.value
                                    require 33825 * msg.value / 2255 * msg.value == 15
                                require 33825 * msg.value == (100 * 33825 * msg.value / 100) + (33825 * msg.value % 100)
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) <= 487500000 * 10^18
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100)
                                require ext_code.size(cartaxiTokenAddress)
                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2255 * msg.value) + (33825 * msg.value / 100)
                            else:
                                if msg.value >= 300 * 10^18:
                                    if 2255 * msg.value:
                                        require 2255 * msg.value
                                        require 27060 * msg.value / 2255 * msg.value == 12
                                    require 27060 * msg.value == (100 * 27060 * msg.value / 100) + (27060 * msg.value % 100)
                                    require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                    require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) <= 487500000 * 10^18
                                    require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100)
                                    require ext_code.size(cartaxiTokenAddress)
                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2255 * msg.value) + (27060 * msg.value / 100)
                                else:
                                    if msg.value >= 100 * 10^18:
                                        if 2255 * msg.value:
                                            require 2255 * msg.value
                                            require 22550 * msg.value / 2255 * msg.value == 10
                                        require 22550 * msg.value == (100 * 22550 * msg.value / 100) + (22550 * msg.value % 100)
                                        require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                        require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) <= 487500000 * 10^18
                                        require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100)
                                        require ext_code.size(cartaxiTokenAddress)
                                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2255 * msg.value) + (22550 * msg.value / 100)
                                    else:
                                        if msg.value >= 50 * 10^18:
                                            if 2255 * msg.value:
                                                require 2255 * msg.value
                                                require 8 * 2255 * msg.value / 2255 * msg.value == 8
                                            require 8 * 2255 * msg.value == (100 * 8 * 2255 * msg.value / 100) + (8 * 2255 * msg.value % 100)
                                            require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) >= soldTokensOnIco
                                            require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) <= 487500000 * 10^18
                                            require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) >= soldTokensOnIco
                                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100)
                                            require ext_code.size(cartaxiTokenAddress)
                                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2255 * msg.value) + (8 * 2255 * msg.value / 100)
                                        else:
                                            if msg.value < 20 * 10^18:
                                                if 2255 * msg.value:
                                                    require 2255 * msg.value
                                                    require 11275 * msg.value / 2255 * msg.value == 5
                                                require 11275 * msg.value == (100 * 11275 * msg.value / 100) + (11275 * msg.value % 100)
                                                require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) >= soldTokensOnIco
                                                require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) <= 487500000 * 10^18
                                                require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) >= soldTokensOnIco
                                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100)
                                                require ext_code.size(cartaxiTokenAddress)
                                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (2255 * msg.value) + (11275 * msg.value / 100)
                                            else:
                                                if 2255 * msg.value:
                                                    require 2255 * msg.value
                                                    require 15785 * msg.value / 2255 * msg.value == 7
                                                require 15785 * msg.value == (100 * 15785 * msg.value / 100) + (15785 * msg.value % 100)
                                                require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) >= soldTokensOnIco
                                                require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) <= 487500000 * 10^18
                                                require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) >= soldTokensOnIco
                                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100)
                                                require ext_code.size(cartaxiTokenAddress)
                                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (2255 * msg.value) + (15785 * msg.value / 100)
                    else:
                        if (block.timestamp - startIcoDate / 24 * 3600) + 1 != 6:
                            if msg.value >= 1000 * 10^18:
                                if 2255 * msg.value:
                                    require 2255 * msg.value
                                    require 33825 * msg.value / 2255 * msg.value == 15
                                require 33825 * msg.value == (100 * 33825 * msg.value / 100) + (33825 * msg.value % 100)
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) <= 487500000 * 10^18
                                require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100)
                                require ext_code.size(cartaxiTokenAddress)
                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2255 * msg.value) + (33825 * msg.value / 100)
                            else:
                                if msg.value >= 500 * 10^18:
                                    if 2255 * msg.value:
                                        require 2255 * msg.value
                                        require 22550 * msg.value / 2255 * msg.value == 10
                                    require 22550 * msg.value == (100 * 22550 * msg.value / 100) + (22550 * msg.value % 100)
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) <= 487500000 * 10^18
                                    require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100)
                                    require ext_code.size(cartaxiTokenAddress)
                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2255 * msg.value) + (22550 * msg.value / 100)
                                else:
                                    if msg.value >= 300 * 10^18:
                                        if 2255 * msg.value:
                                            require 2255 * msg.value
                                            require 15785 * msg.value / 2255 * msg.value == 7
                                        require 15785 * msg.value == (100 * 15785 * msg.value / 100) + (15785 * msg.value % 100)
                                        require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) >= soldTokensOnIco
                                        require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) <= 487500000 * 10^18
                                        require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) >= soldTokensOnIco
                                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100)
                                        require ext_code.size(cartaxiTokenAddress)
                                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2255 * msg.value) + (15785 * msg.value / 100)
                                    else:
                                        if msg.value >= 100 * 10^18:
                                            if 2255 * msg.value:
                                                require 2255 * msg.value
                                                require 11275 * msg.value / 2255 * msg.value == 5
                                            require 11275 * msg.value == (100 * 11275 * msg.value / 100) + (11275 * msg.value % 100)
                                            require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) >= soldTokensOnIco
                                            require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) <= 487500000 * 10^18
                                            require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) >= soldTokensOnIco
                                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100)
                                            require ext_code.size(cartaxiTokenAddress)
                                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2255 * msg.value) + (11275 * msg.value / 100)
                                        else:
                                            if msg.value >= 50 * 10^18:
                                                if 2255 * msg.value:
                                                    require 2255 * msg.value
                                                    require 6765 * msg.value / 2255 * msg.value == 3
                                                require 6765 * msg.value == (100 * 6765 * msg.value / 100) + (6765 * msg.value % 100)
                                                require soldTokensOnIco + (2255 * msg.value) + (6765 * msg.value / 100) >= soldTokensOnIco
                                                require soldTokensOnIco + (2255 * msg.value) + (6765 * msg.value / 100) <= 487500000 * 10^18
                                                require soldTokensOnIco + (2255 * msg.value) + (6765 * msg.value / 100) >= soldTokensOnIco
                                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (6765 * msg.value / 100)
                                                require ext_code.size(cartaxiTokenAddress)
                                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (2255 * msg.value) + (6765 * msg.value / 100)
                                            else:
                                                if msg.value < 20 * 10^18:
                                                    require soldTokensOnIco + (2255 * msg.value) >= soldTokensOnIco
                                                    require soldTokensOnIco + (2255 * msg.value) <= 487500000 * 10^18
                                                    require soldTokensOnIco + (2255 * msg.value) >= soldTokensOnIco
                                                    soldTokensOnIco += 2255 * msg.value
                                                    require ext_code.size(cartaxiTokenAddress)
                                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, 2255 * msg.value
                                                else:
                                                    if 2255 * msg.value:
                                                        require 2255 * msg.value
                                                        require 2 * 2255 * msg.value / 2255 * msg.value == 2
                                                    require 2 * 2255 * msg.value == (100 * 2 * 2255 * msg.value / 100) + (2 * 2255 * msg.value % 100)
                                                    require soldTokensOnIco + (2255 * msg.value) + (2 * 2255 * msg.value / 100) >= soldTokensOnIco
                                                    require soldTokensOnIco + (2255 * msg.value) + (2 * 2255 * msg.value / 100) <= 487500000 * 10^18
                                                    require soldTokensOnIco + (2255 * msg.value) + (2 * 2255 * msg.value / 100) >= soldTokensOnIco
                                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (2 * 2255 * msg.value / 100)
                                                    require ext_code.size(cartaxiTokenAddress)
                                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (2255 * msg.value) + (2 * 2255 * msg.value / 100)
                        else:
                            if msg.value >= 1000 * 10^18:
                                if 2255 * msg.value:
                                    require 2255 * msg.value
                                    require 45100 * msg.value / 2255 * msg.value == 20
                                require 45100 * msg.value == (100 * 45100 * msg.value / 100) + (45100 * msg.value % 100)
                                require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                                require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) <= 487500000 * 10^18
                                require soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100) >= soldTokensOnIco
                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (45100 * msg.value / 100)
                                require ext_code.size(cartaxiTokenAddress)
                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (2255 * msg.value) + (45100 * msg.value / 100)
                            else:
                                if msg.value >= 500 * 10^18:
                                    if 2255 * msg.value:
                                        require 2255 * msg.value
                                        require 33825 * msg.value / 2255 * msg.value == 15
                                    require 33825 * msg.value == (100 * 33825 * msg.value / 100) + (33825 * msg.value % 100)
                                    require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                    require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) <= 487500000 * 10^18
                                    require soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100) >= soldTokensOnIco
                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (33825 * msg.value / 100)
                                    require ext_code.size(cartaxiTokenAddress)
                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (2255 * msg.value) + (33825 * msg.value / 100)
                                else:
                                    if msg.value >= 300 * 10^18:
                                        if 2255 * msg.value:
                                            require 2255 * msg.value
                                            require 27060 * msg.value / 2255 * msg.value == 12
                                        require 27060 * msg.value == (100 * 27060 * msg.value / 100) + (27060 * msg.value % 100)
                                        require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                        require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) <= 487500000 * 10^18
                                        require soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100) >= soldTokensOnIco
                                        soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (27060 * msg.value / 100)
                                        require ext_code.size(cartaxiTokenAddress)
                                        call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (2255 * msg.value) + (27060 * msg.value / 100)
                                    else:
                                        if msg.value >= 100 * 10^18:
                                            if 2255 * msg.value:
                                                require 2255 * msg.value
                                                require 22550 * msg.value / 2255 * msg.value == 10
                                            require 22550 * msg.value == (100 * 22550 * msg.value / 100) + (22550 * msg.value % 100)
                                            require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                            require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) <= 487500000 * 10^18
                                            require soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100) >= soldTokensOnIco
                                            soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (22550 * msg.value / 100)
                                            require ext_code.size(cartaxiTokenAddress)
                                            call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (2255 * msg.value) + (22550 * msg.value / 100)
                                        else:
                                            if msg.value >= 50 * 10^18:
                                                if 2255 * msg.value:
                                                    require 2255 * msg.value
                                                    require 8 * 2255 * msg.value / 2255 * msg.value == 8
                                                require 8 * 2255 * msg.value == (100 * 8 * 2255 * msg.value / 100) + (8 * 2255 * msg.value % 100)
                                                require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) >= soldTokensOnIco
                                                require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) <= 487500000 * 10^18
                                                require soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100) >= soldTokensOnIco
                                                soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (8 * 2255 * msg.value / 100)
                                                require ext_code.size(cartaxiTokenAddress)
                                                call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (2255 * msg.value) + (8 * 2255 * msg.value / 100)
                                            else:
                                                if msg.value < 20 * 10^18:
                                                    if 2255 * msg.value:
                                                        require 2255 * msg.value
                                                        require 11275 * msg.value / 2255 * msg.value == 5
                                                    require 11275 * msg.value == (100 * 11275 * msg.value / 100) + (11275 * msg.value % 100)
                                                    require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) >= soldTokensOnIco
                                                    require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) <= 487500000 * 10^18
                                                    require soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100) >= soldTokensOnIco
                                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (11275 * msg.value / 100)
                                                    require ext_code.size(cartaxiTokenAddress)
                                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (2255 * msg.value) + (11275 * msg.value / 100)
                                                else:
                                                    if 2255 * msg.value:
                                                        require 2255 * msg.value
                                                        require 15785 * msg.value / 2255 * msg.value == 7
                                                    require 15785 * msg.value == (100 * 15785 * msg.value / 100) + (15785 * msg.value % 100)
                                                    require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) >= soldTokensOnIco
                                                    require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) <= 487500000 * 10^18
                                                    require soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100) >= soldTokensOnIco
                                                    soldTokensOnIco = soldTokensOnIco + (2255 * msg.value) + (15785 * msg.value / 100)
                                                    require ext_code.size(cartaxiTokenAddress)
                                                    call cartaxiTokenAddress.emitTokens(address rg1, uint256 rg2) with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (2255 * msg.value) + (15785 * msg.value / 100)
    require ext_call.success
    require etherRaised + msg.value >= etherRaised
    etherRaised += msg.value
}



}

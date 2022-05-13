contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;
uint256 stor11;
uint256 stor12;

function _fallback() payable {
    uint8(stor0.field_160) = 18
    stor4 = 0
    stor6 = 0
    stor12 = 5 * 10^17
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[5716 len 20]
    stor2 = code.data[5716 len 20]
    stor9 = code.data[5684 len 20]
    stor10 = code.data[5748 len 20]
    stor3 = 5 * 10^10 * 10^uint8(stor0.field_160)
    stor5 = 10^10 * 10^uint8(stor0.field_160)
    stor1 = stor3 + stor5
    stor7 = block.timestamp
    stor8 = 1534780799
    stor11 = 0
    return code.data[557 len 5115]
}



// =====================  Runtime code  =====================


const name = ''

const totalAmount = 0

const symbol = ''

const getAllRates = Array(len=137, data=0x7b313532363832313230303a33353236312c313532383132383030303a33303834392c313532393037383430303a32373431392c313533303032383830303a32343637352c313533303937393230303a32323433312c313533313932393630303a32303536302c313533323838303030303a31383937382c313533333833303430303a313736323200, mem[297 len 23] >> 768, mem[343 len 9])


uint8 decimals; offset 160
address owner;
uint256 totalSupply_;
address tokenContractAddress;
uint256 totalSale;
uint256 totalSaled;
uint256 totalAirdrop;
uint256 sub_cee2e667;
uint256 crowdsaleStartTime;
uint256 crowdsaleEndTime;
address walletAddress;
address airdropAddress;
uint256 fundRaised;
uint256 sub_be6b9571;

function stopTime() {
    return crowdsaleEndTime
}

function totalSupply() {
    return totalSupply_
}

function crowdsaleEndTime() {
    return crowdsaleEndTime
}

function decimals() {
    return decimals
}

function totalSupply_() {
    return totalSupply_
}

function airdrop() {
    return airdropAddress
}

function weiRaised() {
    return fundRaised
}

function wallet() {
    return walletAddress
}

function tokenContract() {
    return tokenContractAddress
}

function totalAirdrop() {
    return totalAirdrop
}

function totalSaled() {
    return totalSaled
}

function startTime() {
    return crowdsaleStartTime
}

function owner() {
    return owner
}

function sub_be6b9571(?) {
    return sub_be6b9571
}

function fundRaised() {
    return fundRaised
}

function sub_cee2e667(?) {
    return sub_cee2e667
}

function crowdsaleStartTime() {
    return crowdsaleStartTime
}

function totalSale() {
    return totalSale
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function issueTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == airdropAddress
    require arg1
    if msg.sender == owner:
        require totalSaled + arg2 >= totalSaled
        totalSaled += arg2
        require totalSaled <= totalSale
    else:
        require msg.sender == airdropAddress
        require totalAirdrop + arg2 >= totalAirdrop
        sub_cee2e667 = totalAirdrop + arg2
        require sub_cee2e667 <= totalAirdrop
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function getRate() {
    if block.timestamp < crowdsaleStartTime:
        return 0
    if block.timestamp < crowdsaleStartTime + (384 * 24 * 3600):
        return 35261
    if block.timestamp < crowdsaleStartTime + (648 * 24 * 3600):
        return 30849
    if block.timestamp < crowdsaleStartTime + (912 * 24 * 3600):
        return 27419
    if block.timestamp < crowdsaleStartTime + (1176 * 24 * 3600):
        return 24675
    if block.timestamp < crowdsaleStartTime + (1440 * 24 * 3600):
        return 22431
    if block.timestamp < crowdsaleStartTime + (1704 * 24 * 3600):
        return 20560
    if block.timestamp < crowdsaleStartTime + (1968 * 24 * 3600):
        return 18978
    if block.timestamp > crowdsaleEndTime:
        return 0
    return 17622
}

function buyTokens(address arg1) payable {
    require block.timestamp >= crowdsaleStartTime
    require block.timestamp <= crowdsaleEndTime
    require msg.value >= sub_be6b9571
    require arg1
    if block.timestamp < crowdsaleStartTime:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require totalSaled >= totalSaled
        require totalSaled <= totalSale
        require fundRaised + msg.value >= fundRaised
        fundRaised += msg.value
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        if block.timestamp < crowdsaleStartTime + (384 * 24 * 3600):
            if not msg.value:
                require totalSaled >= totalSaled
                require totalSaled <= totalSale
                require fundRaised + msg.value >= fundRaised
                fundRaised += msg.value
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                require msg.value
                require 35261 * msg.value / msg.value == 35261
                require totalSaled + (35261 * msg.value) >= totalSaled
                totalSaled += 35261 * msg.value
                require totalSaled <= totalSale
                require fundRaised + msg.value >= fundRaised
                fundRaised += msg.value
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 35261 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 35261 * msg.value, msg.sender, arg1);
        else:
            if block.timestamp < crowdsaleStartTime + (648 * 24 * 3600):
                if not msg.value:
                    require totalSaled >= totalSaled
                    require totalSaled <= totalSale
                    require fundRaised + msg.value >= fundRaised
                    fundRaised += msg.value
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    require msg.value
                    require 30849 * msg.value / msg.value == 30849
                    require totalSaled + (30849 * msg.value) >= totalSaled
                    totalSaled += 30849 * msg.value
                    require totalSaled <= totalSale
                    require fundRaised + msg.value >= fundRaised
                    fundRaised += msg.value
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 30849 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 30849 * msg.value, msg.sender, arg1);
            else:
                if block.timestamp < crowdsaleStartTime + (912 * 24 * 3600):
                    if not msg.value:
                        require totalSaled >= totalSaled
                        require totalSaled <= totalSale
                        require fundRaised + msg.value >= fundRaised
                        fundRaised += msg.value
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    else:
                        require msg.value
                        require 27419 * msg.value / msg.value == 27419
                        require totalSaled + (27419 * msg.value) >= totalSaled
                        totalSaled += 27419 * msg.value
                        require totalSaled <= totalSale
                        require fundRaised + msg.value >= fundRaised
                        fundRaised += msg.value
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 27419 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 27419 * msg.value, msg.sender, arg1);
                else:
                    if block.timestamp < crowdsaleStartTime + (1176 * 24 * 3600):
                        if not msg.value:
                            require totalSaled >= totalSaled
                            require totalSaled <= totalSale
                            require fundRaised + msg.value >= fundRaised
                            fundRaised += msg.value
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                        else:
                            require msg.value
                            require 24675 * msg.value / msg.value == 24675
                            require totalSaled + (24675 * msg.value) >= totalSaled
                            totalSaled += 24675 * msg.value
                            require totalSaled <= totalSale
                            require fundRaised + msg.value >= fundRaised
                            fundRaised += msg.value
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 24675 * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, 24675 * msg.value, msg.sender, arg1);
                    else:
                        if block.timestamp < crowdsaleStartTime + (1440 * 24 * 3600):
                            if not msg.value:
                                require totalSaled >= totalSaled
                                require totalSaled <= totalSale
                                require fundRaised + msg.value >= fundRaised
                                fundRaised += msg.value
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                            else:
                                require msg.value
                                require 22431 * msg.value / msg.value == 22431
                                require totalSaled + (22431 * msg.value) >= totalSaled
                                totalSaled += 22431 * msg.value
                                require totalSaled <= totalSale
                                require fundRaised + msg.value >= fundRaised
                                fundRaised += msg.value
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 22431 * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, 22431 * msg.value, msg.sender, arg1);
                        else:
                            if block.timestamp < crowdsaleStartTime + (1704 * 24 * 3600):
                                if not msg.value:
                                    require totalSaled >= totalSaled
                                    require totalSaled <= totalSale
                                    require fundRaised + msg.value >= fundRaised
                                    fundRaised += msg.value
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                else:
                                    require msg.value
                                    require 20560 * msg.value / msg.value == 20560
                                    require totalSaled + (20560 * msg.value) >= totalSaled
                                    totalSaled += 20560 * msg.value
                                    require totalSaled <= totalSale
                                    require fundRaised + msg.value >= fundRaised
                                    fundRaised += msg.value
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 20560 * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 20560 * msg.value, msg.sender, arg1);
                            else:
                                if block.timestamp < crowdsaleStartTime + (1968 * 24 * 3600):
                                    if not msg.value:
                                        require totalSaled >= totalSaled
                                        require totalSaled <= totalSale
                                        require fundRaised + msg.value >= fundRaised
                                        fundRaised += msg.value
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    else:
                                        require msg.value
                                        require 18978 * msg.value / msg.value == 18978
                                        require totalSaled + (18978 * msg.value) >= totalSaled
                                        totalSaled += 18978 * msg.value
                                        require totalSaled <= totalSale
                                        require fundRaised + msg.value >= fundRaised
                                        fundRaised += msg.value
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 18978 * msg.value
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 18978 * msg.value, msg.sender, arg1);
                                else:
                                    if block.timestamp > crowdsaleEndTime:
                                        if msg.value:
                                            require msg.value
                                            require not 0 / msg.value
                                        require totalSaled >= totalSaled
                                        require totalSaled <= totalSale
                                        require fundRaised + msg.value >= fundRaised
                                        fundRaised += msg.value
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                    else:
                                        if not msg.value:
                                            require totalSaled >= totalSaled
                                            require totalSaled <= totalSale
                                            require fundRaised + msg.value >= fundRaised
                                            fundRaised += msg.value
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 0
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                                        else:
                                            require msg.value
                                            require 17622 * msg.value / msg.value == 17622
                                            require totalSaled + (17622 * msg.value) >= totalSaled
                                            totalSaled += 17622 * msg.value
                                            require totalSaled <= totalSale
                                            require fundRaised + msg.value >= fundRaised
                                            fundRaised += msg.value
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 17622 * msg.value
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 17622 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require block.timestamp >= crowdsaleStartTime
    require block.timestamp <= crowdsaleEndTime
    require msg.value >= sub_be6b9571
    require msg.sender
    if block.timestamp < crowdsaleStartTime:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require totalSaled >= totalSaled
        require totalSaled <= totalSale
        require fundRaised + msg.value >= fundRaised
        fundRaised += msg.value
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
        require ext_call.success
        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        if block.timestamp < crowdsaleStartTime + (384 * 24 * 3600):
            if not msg.value:
                require totalSaled >= totalSaled
                require totalSaled <= totalSale
                require fundRaised + msg.value >= fundRaised
                fundRaised += msg.value
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require msg.value
                require 35261 * msg.value / msg.value == 35261
                require totalSaled + (35261 * msg.value) >= totalSaled
                totalSaled += 35261 * msg.value
                require totalSaled <= totalSale
                require fundRaised + msg.value >= fundRaised
                fundRaised += msg.value
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 35261 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 35261 * msg.value, msg.sender, msg.sender);
        else:
            if block.timestamp < crowdsaleStartTime + (648 * 24 * 3600):
                if not msg.value:
                    require totalSaled >= totalSaled
                    require totalSaled <= totalSale
                    require fundRaised + msg.value >= fundRaised
                    fundRaised += msg.value
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    require msg.value
                    require 30849 * msg.value / msg.value == 30849
                    require totalSaled + (30849 * msg.value) >= totalSaled
                    totalSaled += 30849 * msg.value
                    require totalSaled <= totalSale
                    require fundRaised + msg.value >= fundRaised
                    fundRaised += msg.value
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 30849 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 30849 * msg.value, msg.sender, msg.sender);
            else:
                if block.timestamp < crowdsaleStartTime + (912 * 24 * 3600):
                    if not msg.value:
                        require totalSaled >= totalSaled
                        require totalSaled <= totalSale
                        require fundRaised + msg.value >= fundRaised
                        fundRaised += msg.value
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        require msg.value
                        require 27419 * msg.value / msg.value == 27419
                        require totalSaled + (27419 * msg.value) >= totalSaled
                        totalSaled += 27419 * msg.value
                        require totalSaled <= totalSale
                        require fundRaised + msg.value >= fundRaised
                        fundRaised += msg.value
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 27419 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 27419 * msg.value, msg.sender, msg.sender);
                else:
                    if block.timestamp < crowdsaleStartTime + (1176 * 24 * 3600):
                        if not msg.value:
                            require totalSaled >= totalSaled
                            require totalSaled <= totalSale
                            require fundRaised + msg.value >= fundRaised
                            fundRaised += msg.value
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                        else:
                            require msg.value
                            require 24675 * msg.value / msg.value == 24675
                            require totalSaled + (24675 * msg.value) >= totalSaled
                            totalSaled += 24675 * msg.value
                            require totalSaled <= totalSale
                            require fundRaised + msg.value >= fundRaised
                            fundRaised += msg.value
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 24675 * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, 24675 * msg.value, msg.sender, msg.sender);
                    else:
                        if block.timestamp < crowdsaleStartTime + (1440 * 24 * 3600):
                            if not msg.value:
                                require totalSaled >= totalSaled
                                require totalSaled <= totalSale
                                require fundRaised + msg.value >= fundRaised
                                fundRaised += msg.value
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                            else:
                                require msg.value
                                require 22431 * msg.value / msg.value == 22431
                                require totalSaled + (22431 * msg.value) >= totalSaled
                                totalSaled += 22431 * msg.value
                                require totalSaled <= totalSale
                                require fundRaised + msg.value >= fundRaised
                                fundRaised += msg.value
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 22431 * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, 22431 * msg.value, msg.sender, msg.sender);
                        else:
                            if block.timestamp < crowdsaleStartTime + (1704 * 24 * 3600):
                                if not msg.value:
                                    require totalSaled >= totalSaled
                                    require totalSaled <= totalSale
                                    require fundRaised + msg.value >= fundRaised
                                    fundRaised += msg.value
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 0
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                else:
                                    require msg.value
                                    require 20560 * msg.value / msg.value == 20560
                                    require totalSaled + (20560 * msg.value) >= totalSaled
                                    totalSaled += 20560 * msg.value
                                    require totalSaled <= totalSale
                                    require fundRaised + msg.value >= fundRaised
                                    fundRaised += msg.value
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, 20560 * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 20560 * msg.value, msg.sender, msg.sender);
                            else:
                                if block.timestamp < crowdsaleStartTime + (1968 * 24 * 3600):
                                    if not msg.value:
                                        require totalSaled >= totalSaled
                                        require totalSaled <= totalSale
                                        require fundRaised + msg.value >= fundRaised
                                        fundRaised += msg.value
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        require msg.value
                                        require 18978 * msg.value / msg.value == 18978
                                        require totalSaled + (18978 * msg.value) >= totalSaled
                                        totalSaled += 18978 * msg.value
                                        require totalSaled <= totalSale
                                        require fundRaised + msg.value >= fundRaised
                                        fundRaised += msg.value
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 18978 * msg.value
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 18978 * msg.value, msg.sender, msg.sender);
                                else:
                                    if block.timestamp > crowdsaleEndTime:
                                        if msg.value:
                                            require msg.value
                                            require not 0 / msg.value
                                        require totalSaled >= totalSaled
                                        require totalSaled <= totalSale
                                        require fundRaised + msg.value >= fundRaised
                                        fundRaised += msg.value
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, 0
                                        require ext_call.success
                                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                    else:
                                        if not msg.value:
                                            require totalSaled >= totalSaled
                                            require totalSaled <= totalSale
                                            require fundRaised + msg.value >= fundRaised
                                            fundRaised += msg.value
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 0
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                                        else:
                                            require msg.value
                                            require 17622 * msg.value / msg.value == 17622
                                            require totalSaled + (17622 * msg.value) >= totalSaled
                                            totalSaled += 17622 * msg.value
                                            require totalSaled <= totalSale
                                            require fundRaised + msg.value >= fundRaised
                                            fundRaised += msg.value
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, 17622 * msg.value
                                            require ext_call.success
                                            emit TokenPurchase(msg.value, 17622 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}

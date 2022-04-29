contract main {


// =======================  Init code  ======================


uint128 stor0; offset 168
uint128 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() {
    address(stor0.field_0) = msg.sender
    require 421008 * 24 * 3600 >= block.timestamp
    stor1 = code.data[6512 len 20]
    stor2 = code.data[6480 len 20]
    Mask(96, 0, stor0.field_160) = 0
    Mask(88, 0, stor0.field_168) = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    return code.data[668 len 5800]
}



// =====================  Runtime code  =====================


const preSaleStartTime = (419976 * 24 * 3600)

const discountICO = 60

const mainSaleEndTime = (423888 * 24 * 3600)

const rate = 540

const preSaleMaxTokens = 51000000 * 10^18

const bountyMaxTokens = 25500000 * 10^18

const mainSaleStartTime = (421008 * 24 * 3600)

const preSaleEndTime = 1515628799

const discountRate = 1350

const maxTokens = 510000000 * 10^18


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address YRXAddress;
address walletAddress;
uint256 weiRaised;
uint256 preSaleTotalSupply;
uint256 mainSaleTotalSupply;
uint256 bountyTotalSupply;
uint256 stor7;

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function preSaleTotalSupply() {
    return preSaleTotalSupply
}

function isFinalised() {
    return bool(uint8(stor0.field_168))
}

function owner() {
    return owner
}

function mainSaleTotalSupply() {
    return mainSaleTotalSupply
}

function YRX() {
    return YRXAddress
}

function isPreSaleFinalised() {
    return bool(uint8(stor0.field_160))
}

function bountyTotalSupply() {
    return bountyTotalSupply
}

function mainSaleMaxTokens() {
    return (stor7 + 433500000 * 10^18)
}

function preSaleTokenLeft() {
    return (-preSaleTotalSupply + 51000000 * 10^18)
}

function changeWalletAddress(address arg1) {
    require msg.sender == owner
    walletAddress = arg1
    emit WalletAddressChanged(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isInPreSale() {
    if block.timestamp < 419976 * 24 * 3600:
        return block.timestamp >= 419976 * 24 * 3600
    return block.timestamp <= 1515628799
}

function isInMainSale() {
    if block.timestamp < 421008 * 24 * 3600:
        return block.timestamp >= 421008 * 24 * 3600
    return block.timestamp <= 423888 * 24 * 3600
}

function totalSupply() {
    require ext_code.size(YRXAddress)
    call YRXAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function finalise() {
    require msg.sender == owner
    require not uint8(stor0.field_168)
    require block.timestamp >= 421008 * 24 * 3600
    emit AmountRaised(walletAddress, weiRaised);
    Mask(88, 0, stor0.field_168) = 1
    return 1
}

function finalisePreSale() {
    require msg.sender == owner
    require not uint8(stor0.field_168)
    require not uint8(stor0.field_160)
    require block.timestamp >= 419976 * 24 * 3600
    if -preSaleTotalSupply + 51000000 * 10^18 > 0:
        stor7 = -preSaleTotalSupply + 51000000 * 10^18
    Mask(96, 0, stor0.field_160) = 1
}

function mintBounty(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor0.field_168)
    require block.timestamp >= 419976 * 24 * 3600
    if block.timestamp > 1515628799:
        require block.timestamp >= 421008 * 24 * 3600
        require block.timestamp <= 423888 * 24 * 3600
    require arg1
    require arg2 > 0
    require arg2 <= -bountyTotalSupply + 25500000 * 10^18
    bountyTotalSupply += arg2
    require ext_code.size(YRXAddress)
    call YRXAddress.0x1109ef92 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Mint(arg2, arg1);
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor0.field_168)
    require block.timestamp >= 419976 * 24 * 3600
    if block.timestamp > 1515628799:
        require block.timestamp >= 421008 * 24 * 3600
        require block.timestamp <= 423888 * 24 * 3600
    require arg1
    require arg2 > 0
    if block.timestamp < 419976 * 24 * 3600:
        if block.timestamp >= 419976 * 24 * 3600:
            require not uint8(stor0.field_160)
            require arg2 <= -preSaleTotalSupply + 51000000 * 10^18
            if block.timestamp >= 421008 * 24 * 3600:
                require arg2 <= stor7 + -mainSaleTotalSupply + 433500000 * 10^18
        if block.timestamp >= 419976 * 24 * 3600:
            preSaleTotalSupply += arg2
            if block.timestamp >= 421008 * 24 * 3600:
                mainSaleTotalSupply += arg2
    else:
        if block.timestamp <= 1515628799:
            require not uint8(stor0.field_160)
            require arg2 <= -preSaleTotalSupply + 51000000 * 10^18
        if block.timestamp < 421008 * 24 * 3600:
            if block.timestamp >= 421008 * 24 * 3600:
                require arg2 <= stor7 + -mainSaleTotalSupply + 433500000 * 10^18
            if block.timestamp <= 1515628799:
                preSaleTotalSupply += arg2
            if block.timestamp >= 421008 * 24 * 3600:
                mainSaleTotalSupply += arg2
        else:
            if block.timestamp <= 423888 * 24 * 3600:
                require arg2 <= stor7 + -mainSaleTotalSupply + 433500000 * 10^18
            if block.timestamp <= 1515628799:
                preSaleTotalSupply += arg2
            if block.timestamp <= 423888 * 24 * 3600:
                mainSaleTotalSupply += arg2
    require ext_code.size(YRXAddress)
    call YRXAddress.0x1109ef92 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Mint(arg2, arg1);
}

function buyTokens(address arg1) payable {
    require not uint8(stor0.field_168)
    require block.timestamp >= 419976 * 24 * 3600
    if block.timestamp > 1515628799:
        require block.timestamp >= 421008 * 24 * 3600
        require block.timestamp <= 423888 * 24 * 3600
    require arg1
    require msg.value > 0
    if block.timestamp < 419976 * 24 * 3600:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if block.timestamp >= 419976 * 24 * 3600:
            if block.timestamp <= 1515628799:
                preSaleTotalSupply += 540 * msg.value
            if block.timestamp >= 421008 * 24 * 3600:
                if block.timestamp <= 423888 * 24 * 3600:
                    mainSaleTotalSupply += 540 * msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(YRXAddress)
        call YRXAddress.0x1109ef92 with:
             gas gas_remaining - 710 wei
            args address(arg1), 540 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 540 * msg.value, msg.sender, arg1);
    else:
        if block.timestamp > 1515628799:
            if block.timestamp < 421008 * 24 * 3600:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                if block.timestamp >= 419976 * 24 * 3600:
                    if block.timestamp <= 1515628799:
                        preSaleTotalSupply += 540 * msg.value
                    if block.timestamp >= 421008 * 24 * 3600:
                        if block.timestamp <= 423888 * 24 * 3600:
                            mainSaleTotalSupply += 540 * msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(YRXAddress)
                call YRXAddress.0x1109ef92 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 540 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 540 * msg.value, msg.sender, arg1);
            else:
                if block.timestamp > 423888 * 24 * 3600:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    if block.timestamp >= 419976 * 24 * 3600:
                        if block.timestamp <= 1515628799:
                            preSaleTotalSupply += 540 * msg.value
                        if block.timestamp >= 421008 * 24 * 3600:
                            if block.timestamp <= 423888 * 24 * 3600:
                                mainSaleTotalSupply += 540 * msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(YRXAddress)
                    call YRXAddress.0x1109ef92 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 540 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 540 * msg.value, msg.sender, arg1);
                else:
                    require mainSaleTotalSupply + (1350 * msg.value) <= stor7 + 433500000 * 10^18
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    if block.timestamp >= 419976 * 24 * 3600:
                        if block.timestamp <= 1515628799:
                            preSaleTotalSupply += 1350 * msg.value
                        if block.timestamp >= 421008 * 24 * 3600:
                            if block.timestamp <= 423888 * 24 * 3600:
                                mainSaleTotalSupply += 1350 * msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(YRXAddress)
                    call YRXAddress.0x1109ef92 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1350 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 1350 * msg.value, msg.sender, arg1);
        else:
            require not uint8(stor0.field_160)
            require 1350 * msg.value <= -preSaleTotalSupply + 51000000 * 10^18
            if block.timestamp >= 421008 * 24 * 3600:
                if block.timestamp <= 423888 * 24 * 3600:
                    require mainSaleTotalSupply + (1350 * msg.value) <= stor7 + 433500000 * 10^18
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            if block.timestamp >= 419976 * 24 * 3600:
                if block.timestamp <= 1515628799:
                    preSaleTotalSupply += 1350 * msg.value
                if block.timestamp >= 421008 * 24 * 3600:
                    if block.timestamp <= 423888 * 24 * 3600:
                        mainSaleTotalSupply += 1350 * msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(YRXAddress)
            call YRXAddress.0x1109ef92 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 1350 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 1350 * msg.value, msg.sender, arg1);
}

function _fallback() payable {
    require not uint8(stor0.field_168)
    require block.timestamp >= 419976 * 24 * 3600
    if block.timestamp > 1515628799:
        require block.timestamp >= 421008 * 24 * 3600
        require block.timestamp <= 423888 * 24 * 3600
    require msg.sender
    require msg.value > 0
    if block.timestamp < 419976 * 24 * 3600:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if block.timestamp >= 419976 * 24 * 3600:
            if block.timestamp <= 1515628799:
                preSaleTotalSupply += 540 * msg.value
            if block.timestamp >= 421008 * 24 * 3600:
                if block.timestamp <= 423888 * 24 * 3600:
                    mainSaleTotalSupply += 540 * msg.value
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(YRXAddress)
        call YRXAddress.0x1109ef92 with:
             gas gas_remaining - 710 wei
            args msg.sender, 540 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        emit TokenPurchase(msg.value, 540 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp > 1515628799:
            if block.timestamp < 421008 * 24 * 3600:
                require weiRaised + msg.value >= weiRaised
                weiRaised += msg.value
                if block.timestamp >= 419976 * 24 * 3600:
                    if block.timestamp <= 1515628799:
                        preSaleTotalSupply += 540 * msg.value
                    if block.timestamp >= 421008 * 24 * 3600:
                        if block.timestamp <= 423888 * 24 * 3600:
                            mainSaleTotalSupply += 540 * msg.value
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                require ext_code.size(YRXAddress)
                call YRXAddress.0x1109ef92 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 540 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 540 * msg.value, msg.sender, msg.sender);
            else:
                if block.timestamp > 423888 * 24 * 3600:
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    if block.timestamp >= 419976 * 24 * 3600:
                        if block.timestamp <= 1515628799:
                            preSaleTotalSupply += 540 * msg.value
                        if block.timestamp >= 421008 * 24 * 3600:
                            if block.timestamp <= 423888 * 24 * 3600:
                                mainSaleTotalSupply += 540 * msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(YRXAddress)
                    call YRXAddress.0x1109ef92 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 540 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 540 * msg.value, msg.sender, msg.sender);
                else:
                    require mainSaleTotalSupply + (1350 * msg.value) <= stor7 + 433500000 * 10^18
                    require weiRaised + msg.value >= weiRaised
                    weiRaised += msg.value
                    if block.timestamp >= 419976 * 24 * 3600:
                        if block.timestamp <= 1515628799:
                            preSaleTotalSupply += 1350 * msg.value
                        if block.timestamp >= 421008 * 24 * 3600:
                            if block.timestamp <= 423888 * 24 * 3600:
                                mainSaleTotalSupply += 1350 * msg.value
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require ext_code.size(YRXAddress)
                    call YRXAddress.0x1109ef92 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1350 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 1350 * msg.value, msg.sender, msg.sender);
        else:
            require not uint8(stor0.field_160)
            require 1350 * msg.value <= -preSaleTotalSupply + 51000000 * 10^18
            if block.timestamp >= 421008 * 24 * 3600:
                if block.timestamp <= 423888 * 24 * 3600:
                    require mainSaleTotalSupply + (1350 * msg.value) <= stor7 + 433500000 * 10^18
            require weiRaised + msg.value >= weiRaised
            weiRaised += msg.value
            if block.timestamp >= 419976 * 24 * 3600:
                if block.timestamp <= 1515628799:
                    preSaleTotalSupply += 1350 * msg.value
                if block.timestamp >= 421008 * 24 * 3600:
                    if block.timestamp <= 423888 * 24 * 3600:
                        mainSaleTotalSupply += 1350 * msg.value
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require ext_code.size(YRXAddress)
            call YRXAddress.0x1109ef92 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1350 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 1350 * msg.value, msg.sender, msg.sender);
}



}

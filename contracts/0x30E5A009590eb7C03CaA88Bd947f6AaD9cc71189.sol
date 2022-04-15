contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint8 stor5;

function _fallback() payable {
    stor3 = 0
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[9506 len 20]
    create contract with 0 wei
                    code: code.data[6039 len 3455]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = code.data[9506 len 20]
    return code.data[247 len 5792]
}



// =====================  Runtime code  =====================


const minRequired = 10^18

const maxLimit = 1500 * 10^18

const rate = 1000

const sub_e95aee36(?) = 150 * 10^18


address owner;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
mapping of uint8 stor4;
uint8 stor5;

function whiteList(address arg1) {
    return bool(stor4[arg1])
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function isFinalized() {
    return bool(stor5)
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function addToWhiteList(address arg1) {
    require owner == msg.sender
    stor4[address(arg1)] = 1
}

function removeFromWhiteList(address arg1) {
    require owner == msg.sender
    stor4[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function finalizePresale() {
    require owner == msg.sender
    require not stor5
    stor5 = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require not stor5
    require arg1
    require msg.value >= 10^18
    require msg.value <= 150 * 10^18
    require weiRaised < 1500 * 10^18
    require stor4[address(msg.sender)]
    if msg.value >= 75 * 10^18:
        if msg.value:
            require msg.value
            require 1666 * msg.value / msg.value == 1666
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 1666 * msg.value / 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, 1666 * msg.value / 10^18, msg.sender, arg1);
    else:
        if msg.value >= 40 * 10^18:
            if msg.value:
                require msg.value
                require 1428 * msg.value / msg.value == 1428
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 1428 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 1428 * msg.value / 10^18, msg.sender, arg1);
        else:
            if msg.value >= 5 * 10^18:
                if msg.value:
                    require msg.value
                    require 1250 * msg.value / msg.value == 1250
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 1250 * msg.value / 10^18
                require ext_call.success
                emit TokenPurchase(msg.value, 1250 * msg.value / 10^18, msg.sender, arg1);
            else:
                if msg.value < 10^18:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require 1176 * msg.value / msg.value == 1176
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 1176 * msg.value / 10^18
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1176 * msg.value / 10^18, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor5
    require msg.sender
    require msg.value >= 10^18
    require msg.value <= 150 * 10^18
    require weiRaised < 1500 * 10^18
    require stor4[address(msg.sender)]
    if msg.value >= 75 * 10^18:
        if msg.value:
            require msg.value
            require 1666 * msg.value / msg.value == 1666
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 1666 * msg.value / 10^18
        require ext_call.success
        emit TokenPurchase(msg.value, 1666 * msg.value / 10^18, msg.sender, msg.sender);
    else:
        if msg.value >= 40 * 10^18:
            if msg.value:
                require msg.value
                require 1428 * msg.value / msg.value == 1428
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1428 * msg.value / 10^18
            require ext_call.success
            emit TokenPurchase(msg.value, 1428 * msg.value / 10^18, msg.sender, msg.sender);
        else:
            if msg.value >= 5 * 10^18:
                if msg.value:
                    require msg.value
                    require 1250 * msg.value / msg.value == 1250
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1250 * msg.value / 10^18
                require ext_call.success
                emit TokenPurchase(msg.value, 1250 * msg.value / 10^18, msg.sender, msg.sender);
            else:
                if msg.value < 10^18:
                    if msg.value:
                        require msg.value
                        require not 0 / msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 1176 * msg.value / msg.value == 1176
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1176 * msg.value / 10^18
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1176 * msg.value / 10^18, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}

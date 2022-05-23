contract main {




// =====================  Runtime code  =====================


const sub_17516164(?) = 12000000 * 10^18

const sub_1f4411c5(?) = 40000000 * 10^18

const sub_27359989(?) = 2000000 * 10^18

const sub_9b94233c(?) = 15000000 * 10^18

const sub_b1ffb2af(?) = 15000000 * 10^18

const sub_e3750c1a(?) = 14000000 * 10^18

const DECIMALS = 10^18

const MILLION = 10^6

const MAX_REFERRAL_TOKENS = 2000000 * 10^18


uint256 stor0;
address owner;
uint8 currentState; offset 160
address newOwner;
address tokenAddress;
uint256 totalTokenSale;
uint256 sub_d6302908;
uint256 sub_e588911f;
uint256 sub_b52fd5d6;
uint256 sub_1caa5ad3;
uint256 totalBounty;

function currentState() {
    require currentState <= 3
    return currentState
}

function sub_1caa5ad3(?) {
    return sub_1caa5ad3
}

function totalTokenSale() {
    return totalTokenSale
}

function owner() {
    return owner
}

function sub_b52fd5d6(?) {
    return sub_b52fd5d6
}

function newOwner() {
    return newOwner
}

function sub_d6302908(?) {
    return sub_d6302908
}

function sub_e588911f(?) {
    return sub_e588911f
}

function totalBounty() {
    return totalBounty
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    require currentState > 3
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
}

function initialize(address arg1, address arg2) {
    require msg.sender == owner
    require currentState <= 3
    require not currentState
    require arg1
    tokenAddress = arg1
    require stor0 <= 0
    stor0 = -1
    require arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg2), 14000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sendBounty(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentState <= 3
    require currentState == 1
    require stor0 <= 0
    stor0 = -1
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require (10^18 * arg2) + totalBounty >= totalBounty
    require (10^18 * arg2) + totalBounty <= 2000000 * 10^18
    require (10^18 * arg2) + totalBounty >= totalBounty
    totalBounty += 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Bounty((10^18 * arg2), arg1);
}

function sendReferral(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentState <= 3
    require currentState == 1
    require stor0 <= 0
    stor0 = -1
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require (10^18 * arg2) + sub_1caa5ad3 >= sub_1caa5ad3
    require (10^18 * arg2) + sub_1caa5ad3 <= 2000000 * 10^18
    require (10^18 * arg2) + sub_1caa5ad3 >= sub_1caa5ad3
    sub_1caa5ad3 += 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Referral((10^18 * arg2), arg1);
}

function sendAdvisory(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentState <= 3
    require currentState == 1
    require stor0 <= 0
    stor0 = -1
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require (10^18 * arg2) + sub_d6302908 >= sub_d6302908
    require (10^18 * arg2) + sub_d6302908 <= 12000000 * 10^18
    require (10^18 * arg2) + sub_d6302908 >= sub_d6302908
    sub_d6302908 += 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Advisory((10^18 * arg2), arg1);
}

function sendLiquidityFund(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentState <= 3
    require currentState == 1
    require stor0 <= 0
    stor0 = -1
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require (10^18 * arg2) + sub_b52fd5d6 >= sub_b52fd5d6
    require (10^18 * arg2) + sub_b52fd5d6 <= 15000000 * 10^18
    require (10^18 * arg2) + sub_b52fd5d6 >= sub_b52fd5d6
    sub_b52fd5d6 += 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit LiquidityFund((10^18 * arg2), arg1);
}

function sendIncentivisation(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentState <= 3
    require currentState == 1
    require stor0 <= 0
    stor0 = -1
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require (10^18 * arg2) + sub_e588911f >= sub_e588911f
    require (10^18 * arg2) + sub_e588911f <= 15000000 * 10^18
    require (10^18 * arg2) + sub_e588911f >= sub_e588911f
    sub_e588911f += 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Incentivisation((10^18 * arg2), arg1);
}

function sendTokensSale(address arg1, uint256 arg2) {
    require msg.sender == owner
    require currentState <= 3
    require currentState == 1
    require stor0 <= 0
    stor0 = -1
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require (10^18 * arg2) + totalTokenSale >= totalTokenSale
    require (10^18 * arg2) + totalTokenSale <= 40000000 * 10^18
    require (10^18 * arg2) + totalTokenSale >= totalTokenSale
    totalTokenSale += 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), 10^18 * arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokenSale((10^18 * arg2), arg1);
}

function setState(uint8 arg1) {
    require msg.sender == owner
    require currentState <= 3
    if currentState:
        require currentState <= 3
        if currentState != 1:
            require currentState <= 3
            if currentState != 1:
                require currentState <= 3
                require currentState == 3
                require arg1 <= 3
                require arg1 == 1
            else:
                require arg1 <= 3
                if arg1 != 3:
                    require currentState <= 3
                    require currentState == 3
                    require arg1 <= 3
                    require arg1 == 1
        else:
            require arg1 <= 3
            if arg1 != 2:
                require currentState <= 3
                if currentState != 1:
                    require currentState <= 3
                    require currentState == 3
                    require arg1 <= 3
                    require arg1 == 1
                else:
                    require arg1 <= 3
                    if arg1 != 3:
                        require currentState <= 3
                        require currentState == 3
                        require arg1 <= 3
                        require arg1 == 1
    else:
        require arg1 <= 3
        if arg1 != 1:
            require currentState <= 3
            if currentState != 1:
                require currentState <= 3
                if currentState != 1:
                    require currentState <= 3
                    require currentState == 3
                    require arg1 <= 3
                    require arg1 == 1
                else:
                    require arg1 <= 3
                    if arg1 != 3:
                        require currentState <= 3
                        require currentState == 3
                        require arg1 <= 3
                        require arg1 == 1
            else:
                require arg1 <= 3
                if arg1 != 2:
                    require currentState <= 3
                    if currentState != 1:
                        require currentState <= 3
                        require currentState == 3
                        require arg1 <= 3
                        require arg1 == 1
                    else:
                        require arg1 <= 3
                        if arg1 != 3:
                            require currentState <= 3
                            require currentState == 3
                            require arg1 <= 3
                            require arg1 == 1
    require arg1 <= 3
    if arg1 == 2:
        require stor0 <= 0
        stor0 = -1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xbe9a6555 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require arg1 <= 3
    currentState = arg1
}



}

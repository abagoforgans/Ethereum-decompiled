contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
address stor6;

function _fallback() payable {
    create contract with 0 wei
                    code: code.data[3667 len 1710]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = 417457 * 3600
    stor2 = 418177 * 3600
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor5 = code.data[5389 len 20]
    stor6 = code.data[5421 len 20]
    require ext_code.size(stor0)
    call stor0.createPricing() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return code.data[323 len 3344]
}



// =====================  Runtime code  =====================


const name = 'MAT Presale Token'

const decimals = 18

const symbol = 'MAPT'

const TOKEN_SUPPLY_LIMIT = 2000000 * 10^18


address stor0;
uint256 PRESALE_START_DATE;
uint256 PRESALE_END_DATE;
uint8 currentPhase;
uint256 stor3;
uint256 totalSupply;
address tokenManagerAddress;
address escrowAddress;
address crowdsaleManagerAddress;
mapping of uint256 balanceOf;

function currentPhase() {
    require uint8(currentPhase) <= 4
    return uint8(currentPhase)
}

function totalSupply() {
    return totalSupply
}

function tokenManager() {
    return tokenManagerAddress
}

function crowdsaleManager() {
    return crowdsaleManagerAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function PRESALE_END_DATE() {
    return PRESALE_END_DATE
}

function escrow() {
    return escrowAddress
}

function PRESALE_START_DATE() {
    return PRESALE_START_DATE
}

function setCrowdsaleManager(address arg1) {
    require tokenManagerAddress == msg.sender
    require uint8(currentPhase) <= 4
    require uint8(currentPhase) != 3
    crowdsaleManagerAddress = arg1
}

function setStartDate(uint256 arg1) {
    require tokenManagerAddress == msg.sender
    require uint8(currentPhase) <= 4
    require not uint8(currentPhase)
    PRESALE_START_DATE = arg1
    PRESALE_END_DATE = arg1 + (720 * 24 * 3600)
}

function withdrawEther(uint256 arg1) {
    require tokenManagerAddress == msg.sender
    emit LogEscrowReq(arg1);
    if eth.balance(this.address) < arg1:
        return 1
    call escrowAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogEscrow(arg1);
    return 0
}

function buyTokensForFiat(address arg1, uint256 arg2) {
    require tokenManagerAddress == msg.sender
    require uint8(currentPhase) <= 4
    require uint8(currentPhase) == 1
    require arg2 > 0
    require arg2 + totalSupply <= 2000000 * 10^18
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit LogBuyForFiat(arg2, arg1);
}

function burnTokens(address arg1) {
    require crowdsaleManagerAddress == msg.sender
    require uint8(currentPhase) <= 4
    if uint8(currentPhase) != 3:
        return 1
    if not balanceOf[address(arg1)]:
        return 2
    totalSupply -= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit LogBurn(balanceOf[address(arg1)], arg1);
    if not totalSupply:
        uint8(currentPhase) = 4
        emit LogPhaseSwitch(4);
        return 0
    else:
        return 0
}

function buyTokens(address arg1) payable {
    require uint8(currentPhase) <= 4
    require uint8(currentPhase) == 1
    require msg.value > 0
    require block.timestamp >= PRESALE_START_DATE
    require block.timestamp <= PRESALE_END_DATE
    require ext_code.size(stor0)
    call stor0.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.value, block.timestamp - PRESALE_START_DATE, 18
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + totalSupply <= 2000000 * 10^18
    totalSupply += ext_call.return_data[0]
    balanceOf[address(arg1)] += ext_call.return_data[0]
    emit LogBuy(msg.value, ext_call.return_data[0], arg1);
}

function _fallback() payable {
    require uint8(currentPhase) <= 4
    require uint8(currentPhase) == 1
    require msg.value > 0
    require block.timestamp >= PRESALE_START_DATE
    require block.timestamp <= PRESALE_END_DATE
    require ext_code.size(stor0)
    call stor0.calculatePrice(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args msg.value, block.timestamp - PRESALE_START_DATE, 18
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + totalSupply <= 2000000 * 10^18
    totalSupply += ext_call.return_data[0]
    balanceOf[address(msg.sender)] += ext_call.return_data[0]
    emit LogBuy(msg.value, ext_call.return_data[0], msg.sender);
}

function setPresalePhase(uint8 arg1) {
    require tokenManagerAddress == msg.sender
    require uint8(currentPhase) <= 4
    if uint8(currentPhase):
        require uint8(currentPhase) <= 4
        if uint8(currentPhase) != 1:
            require uint8(currentPhase) <= 4
            if uint8(currentPhase) == 1:
                require arg1 <= 4
                if arg1 != 3:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) != 2:
                        require uint8(currentPhase) <= 4
                        require uint8(currentPhase) == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    if not crowdsaleManagerAddress:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
            else:
                require uint8(currentPhase) <= 4
                if uint8(currentPhase) != 2:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) != 2:
                        require uint8(currentPhase) <= 4
                        require uint8(currentPhase) == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    require arg1 <= 4
                    if arg1 != 3:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
        else:
            require arg1 <= 4
            if arg1 != 2:
                require uint8(currentPhase) <= 4
                if uint8(currentPhase) == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) != 2:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require uint8(currentPhase) <= 4
                                if uint8(currentPhase) != 2:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
    else:
        require arg1 <= 4
        if arg1 != 1:
            require uint8(currentPhase) <= 4
            if uint8(currentPhase) != 1:
                require uint8(currentPhase) <= 4
                if uint8(currentPhase) == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) != 2:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require uint8(currentPhase) <= 4
                                if uint8(currentPhase) != 2:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
            else:
                require arg1 <= 4
                if arg1 != 2:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) == 1:
                        require arg1 <= 4
                        if arg1 != 3:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require uint8(currentPhase) <= 4
                                if uint8(currentPhase) != 2:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                    else:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 3:
                                require uint8(currentPhase) <= 4
                                if uint8(currentPhase) != 2:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                            else:
                                if not crowdsaleManagerAddress:
                                    require uint8(currentPhase) <= 4
                                    if uint8(currentPhase) != 2:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                                    else:
                                        require arg1 <= 4
                                        if arg1 != 1:
                                            require uint8(currentPhase) <= 4
                                            require uint8(currentPhase) == 3
                                            require arg1 <= 4
                                            require arg1 == 4
                                            require not totalSupply
    require arg1 <= 4
    uint8(currentPhase) = arg1
    emit LogPhaseSwitch(arg1);
}

function setPresalePhaseUInt(uint256 arg1) {
    require tokenManagerAddress == msg.sender
    require 4 >= arg1
    require arg1 >= 0
    require arg1 <= 4
    require tokenManagerAddress == msg.sender
    require uint8(currentPhase) <= 4
    if uint8(currentPhase):
        require uint8(currentPhase) <= 4
        if uint8(currentPhase) != 1:
            require uint8(currentPhase) <= 4
            if uint8(currentPhase) == 1:
                require arg1 <= 4
                if arg1 != 3:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) != 2:
                        require uint8(currentPhase) <= 4
                        require uint8(currentPhase) == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    if not crowdsaleManagerAddress:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
            else:
                require uint8(currentPhase) <= 4
                if uint8(currentPhase) != 2:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) != 2:
                        require uint8(currentPhase) <= 4
                        require uint8(currentPhase) == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    require arg1 <= 4
                    if arg1 != 3:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
        else:
            require arg1 <= 4
            if arg1 != 2:
                require uint8(currentPhase) <= 4
                if uint8(currentPhase) == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) != 2:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require uint8(currentPhase) <= 4
                                if uint8(currentPhase) != 2:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
    else:
        require arg1 <= 4
        if arg1 != 1:
            require uint8(currentPhase) <= 4
            if uint8(currentPhase) != 1:
                require uint8(currentPhase) <= 4
                if uint8(currentPhase) == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) != 2:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            require uint8(currentPhase) == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require uint8(currentPhase) <= 4
                                if uint8(currentPhase) != 2:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
            else:
                require arg1 <= 4
                if arg1 != 2:
                    require uint8(currentPhase) <= 4
                    if uint8(currentPhase) == 1:
                        require arg1 <= 4
                        if arg1 != 3:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require uint8(currentPhase) <= 4
                                if uint8(currentPhase) != 2:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                    else:
                        require uint8(currentPhase) <= 4
                        if uint8(currentPhase) != 2:
                            require uint8(currentPhase) <= 4
                            if uint8(currentPhase) != 2:
                                require uint8(currentPhase) <= 4
                                require uint8(currentPhase) == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 3:
                                require uint8(currentPhase) <= 4
                                if uint8(currentPhase) != 2:
                                    require uint8(currentPhase) <= 4
                                    require uint8(currentPhase) == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                            else:
                                if not crowdsaleManagerAddress:
                                    require uint8(currentPhase) <= 4
                                    if uint8(currentPhase) != 2:
                                        require uint8(currentPhase) <= 4
                                        require uint8(currentPhase) == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                                    else:
                                        require arg1 <= 4
                                        if arg1 != 1:
                                            require uint8(currentPhase) <= 4
                                            require uint8(currentPhase) == 3
                                            require arg1 <= 4
                                            require arg1 == 4
                                            require not totalSupply
    require arg1 <= 4
    uint256(stor3) = arg1 or Mask(248, 8, uint256(stor3))
    emit LogPhaseSwitch(uint8(arg1));
}



}

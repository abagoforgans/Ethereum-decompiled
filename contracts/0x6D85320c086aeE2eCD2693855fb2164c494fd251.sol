contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
address stor1;
uint256 stor3;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    stor3 = 0
    require not msg.value
    address(stor0.field_8) = code.data[2612 len 20]
    stor1 = code.data[2644 len 20]
    return code.data[143 len 2457]
}



// =====================  Runtime code  =====================


const name = 'ATL Presale Token'

const decimals = 18

const symbol = 'ATP'

const TOKEN_SUPPLY_LIMIT = (78125 * 10^16 * 3600)

const PRICE = 505


uint8 currentPhase;
address tokenManagerAddress; offset 8
address escrowAddress;
address crowdsaleManagerAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;

function currentPhase() {
    require currentPhase <= 4
    return currentPhase
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

function escrow() {
    return escrowAddress
}

function setCrowdsaleManager(address arg1) {
    require tokenManagerAddress == msg.sender
    require currentPhase <= 4
    require currentPhase != 3
    crowdsaleManagerAddress = arg1
}

function withdrawEther() {
    require tokenManagerAddress == msg.sender
    if eth.balance(this.address) <= 0:
    call escrowAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require currentPhase <= 4
    require currentPhase == 1
    require msg.value
    require (505 * msg.value) + totalSupply <= 78125 * 10^16 * 3600
    balanceOf[address(arg1)] += 505 * msg.value
    totalSupply += 505 * msg.value
    emit Buy((505 * msg.value), arg1);
}

function _fallback() payable {
    require currentPhase <= 4
    require currentPhase == 1
    require msg.value
    require (505 * msg.value) + totalSupply <= 78125 * 10^16 * 3600
    balanceOf[address(msg.sender)] += 505 * msg.value
    totalSupply += 505 * msg.value
    emit Buy((505 * msg.value), msg.sender);
}

function burnTokens(address arg1) {
    require crowdsaleManagerAddress == msg.sender
    require currentPhase <= 4
    require currentPhase == 3
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    totalSupply -= balanceOf[address(arg1)]
    emit Burn(balanceOf[address(arg1)], arg1);
    if not totalSupply:
        currentPhase = 4
        emit PhaseSwitch(4);
}

function setPresalePhase(uint8 arg1) {
    require tokenManagerAddress == msg.sender
    require currentPhase <= 4
    if currentPhase:
        require currentPhase <= 4
        if currentPhase != 1:
            require currentPhase <= 4
            if currentPhase == 1:
                require arg1 <= 4
                if arg1 != 3:
                    require currentPhase <= 4
                    if currentPhase != 2:
                        require currentPhase <= 4
                        require currentPhase == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    if not crowdsaleManagerAddress:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
            else:
                require currentPhase <= 4
                if currentPhase != 2:
                    require currentPhase <= 4
                    if currentPhase != 2:
                        require currentPhase <= 4
                        require currentPhase == 3
                        require arg1 <= 4
                        require arg1 == 4
                        require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 1:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                else:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
        else:
            require arg1 <= 4
            if arg1 != 2:
                require currentPhase <= 4
                if currentPhase == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require currentPhase <= 4
                    if currentPhase != 2:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentPhase <= 4
                                if currentPhase != 2:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
    else:
        require arg1 <= 4
        if arg1 != 1:
            require currentPhase <= 4
            if currentPhase != 1:
                require currentPhase <= 4
                if currentPhase == 1:
                    require arg1 <= 4
                    if arg1 != 3:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        if not crowdsaleManagerAddress:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                else:
                    require currentPhase <= 4
                    if currentPhase != 2:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            require currentPhase == 3
                            require arg1 <= 4
                            require arg1 == 4
                            require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 1:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                    else:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentPhase <= 4
                                if currentPhase != 2:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
            else:
                require arg1 <= 4
                if arg1 != 2:
                    require currentPhase <= 4
                    if currentPhase == 1:
                        require arg1 <= 4
                        if arg1 != 3:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            if not crowdsaleManagerAddress:
                                require currentPhase <= 4
                                if currentPhase != 2:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                    else:
                        require currentPhase <= 4
                        if currentPhase != 2:
                            require currentPhase <= 4
                            if currentPhase != 2:
                                require currentPhase <= 4
                                require currentPhase == 3
                                require arg1 <= 4
                                require arg1 == 4
                                require not totalSupply
                            else:
                                require arg1 <= 4
                                if arg1 != 1:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                        else:
                            require arg1 <= 4
                            if arg1 != 3:
                                require currentPhase <= 4
                                if currentPhase != 2:
                                    require currentPhase <= 4
                                    require currentPhase == 3
                                    require arg1 <= 4
                                    require arg1 == 4
                                    require not totalSupply
                                else:
                                    require arg1 <= 4
                                    if arg1 != 1:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                            else:
                                if not crowdsaleManagerAddress:
                                    require currentPhase <= 4
                                    if currentPhase != 2:
                                        require currentPhase <= 4
                                        require currentPhase == 3
                                        require arg1 <= 4
                                        require arg1 == 4
                                        require not totalSupply
                                    else:
                                        require arg1 <= 4
                                        if arg1 != 1:
                                            require currentPhase <= 4
                                            require currentPhase == 3
                                            require arg1 <= 4
                                            require arg1 == 4
                                            require not totalSupply
    require arg1 <= 4
    currentPhase = arg1
    emit PhaseSwitch(arg1);
}



}

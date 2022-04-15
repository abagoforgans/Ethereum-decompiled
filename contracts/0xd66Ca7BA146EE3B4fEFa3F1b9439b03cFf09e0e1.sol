contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor3;
address stor4;
uint128 stor5; offset 160
address stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    address(stor5.field_0) = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 1300000000 * 10^18
    stor19 = 200000000 * 10^18
    stor20 = 200000000 * 10^18
    stor21 = 300000000 * 10^18
    stor22 = 0
    stor23 = 5000
    stor24 = 4000
    stor25 = 3000
    stor26 = 0
    require not msg.value
    stor0 = 2000000000 * 10^18
    Mask(96, 0, stor5.field_160) = 0
    stor4 = msg.sender
    return code.data[684 len 8110]
}



// =====================  Runtime code  =====================


const name = 'Game.com Token'

const decimals = 18

const symbol = 'GTC'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address etherProceedsAccount;
uint8 stor5; offset 160
uint128 stor5; offset 160
address multiWalletAddress;
uint256 window0TotalSupply;
uint256 window1TotalSupply;
uint256 window2TotalSupply;
uint256 window3TotalSupply;
uint256 window0StartTime;
uint256 window0EndTime;
uint256 window1StartTime;
uint256 window1EndTime;
uint256 window2StartTime;
uint256 window2EndTime;
uint256 window3StartTime;
uint256 window3EndTime;
uint256 preservedTokens;
uint256 window0TokenCreationCap;
uint256 window1TokenCreationCap;
uint256 window2TokenCreationCap;
uint256 window3TokenCreationCap;
uint256 window0TokenExchangeRate;
uint256 window1TokenExchangeRate;
uint256 window2TokenExchangeRate;
uint256 window3TokenExchangeRate;

function window0TotalSupply() {
    return window0TotalSupply
}

function preservedTokens() {
    return preservedTokens
}

function window3EndTime() {
    return window3EndTime
}

function window3TotalSupply() {
    return window3TotalSupply
}

function window2StartTime() {
    return window2StartTime
}

function totalSupply() {
    return totalSupply
}

function window2TokenExchangeRate() {
    return window2TokenExchangeRate
}

function window2TokenCreationCap() {
    return window2TokenCreationCap
}

function window3TokenCreationCap() {
    return window3TokenCreationCap
}

function window3StartTime() {
    return window3StartTime
}

function multiWallet() {
    return multiWalletAddress
}

function version() {
    return version[0 len version.length]
}

function window2EndTime() {
    return window2EndTime
}

function window1TotalSupply() {
    return window1TotalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function window1TokenCreationCap() {
    return window1TokenCreationCap
}

function isFinalized() {
    return bool(uint8(stor5.field_160))
}

function window1TokenExchangeRate() {
    return window1TokenExchangeRate
}

function window1StartTime() {
    return window1StartTime
}

function window2TotalSupply() {
    return window2TotalSupply
}

function window0StartTime() {
    return window0StartTime
}

function window1EndTime() {
    return window1EndTime
}

function window3TokenExchangeRate() {
    return window3TokenExchangeRate
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function window0TokenCreationCap() {
    return window0TokenCreationCap
}

function window0EndTime() {
    return window0EndTime
}

function window0TokenExchangeRate() {
    return window0TokenExchangeRate
}

function etherProceedsAccount() {
    return etherProceedsAccount
}

function setMultiWallet(address arg1) {
    require msg.sender == etherProceedsAccount
    multiWalletAddress = arg1
}

function setProceedsAccount(address arg1) {
    require msg.sender == etherProceedsAccount
    etherProceedsAccount = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function adjustRate(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == etherProceedsAccount
    window0TokenExchangeRate = arg1
    window1TokenExchangeRate = arg2
    window2TokenExchangeRate = arg3
}

function adjustSupply(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == etherProceedsAccount
    window0TotalSupply = 10^18 * arg1
    window1TotalSupply = 10^18 * arg2
    window2TotalSupply = 10^18 * arg3
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function adjustCap(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require msg.sender == etherProceedsAccount
    preservedTokens = 10^18 * arg1
    window0TokenCreationCap = 10^18 * arg2
    window1TokenCreationCap = 10^18 * arg3
    window2TokenCreationCap = 10^18 * arg4
}

function adjustTime(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require msg.sender == etherProceedsAccount
    window0StartTime = arg1
    window0EndTime = arg2
    window1StartTime = arg3
    window1EndTime = arg4
    window2StartTime = arg5
    window2EndTime = arg6
}

function preICOPush(address arg1, uint256 arg2) {
    require msg.sender == etherProceedsAccount
    require window0TotalSupply + arg2 >= window0TotalSupply
    require window0TotalSupply + arg2 >= arg2
    require window0TokenCreationCap >= window0TotalSupply + arg2
    window0TotalSupply += arg2
    emit PreICOTokenPushed(arg2, arg1);
}

function withDraw(uint256 arg1) {
    require msg.sender == etherProceedsAccount
    if not multiWalletAddress:
        call etherProceedsAccount with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call multiWalletAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function finalize() {
    require not uint8(stor5.field_160)
    require msg.sender == etherProceedsAccount
    Mask(96, 0, stor5.field_160) = 1
    balanceOf[stor4] = balanceOf[stor4] + preservedTokens + window0TokenCreationCap - window0TotalSupply + window1TokenCreationCap - window1TotalSupply + window2TokenCreationCap - window2TotalSupply
    call etherProceedsAccount with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor5.field_160)
    require msg.value > 10^16
    if not window0StartTime:
        if not window1StartTime:
            require window2StartTime
            require window2EndTime
            require block.timestamp >= window2StartTime
            require block.timestamp <= window2EndTime
            if msg.value:
                require msg.value
                require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
            require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
            require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
            require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
            balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
            window2TotalSupply += msg.value * window2TokenExchangeRate
            emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
        else:
            if not window1EndTime:
                require window2StartTime
                require window2EndTime
                require block.timestamp >= window2StartTime
                require block.timestamp <= window2EndTime
                if msg.value:
                    require msg.value
                    require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                window2TotalSupply += msg.value * window2TokenExchangeRate
                emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
            else:
                if block.timestamp < window1StartTime:
                    require window2StartTime
                    require window2EndTime
                    require block.timestamp >= window2StartTime
                    require block.timestamp <= window2EndTime
                    if msg.value:
                        require msg.value
                        require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                    require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                    require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                    require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                    balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                    window2TotalSupply += msg.value * window2TokenExchangeRate
                    emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                else:
                    if block.timestamp <= window1EndTime:
                        if msg.value:
                            require msg.value
                            require msg.value * window1TokenExchangeRate / msg.value == window1TokenExchangeRate
                        require window1TotalSupply + (msg.value * window1TokenExchangeRate) >= window1TotalSupply
                        require window1TotalSupply + (msg.value * window1TokenExchangeRate) >= msg.value * window1TokenExchangeRate
                        require window1TokenCreationCap >= window1TotalSupply + (msg.value * window1TokenExchangeRate)
                        balanceOf[address(msg.sender)] += msg.value * window1TokenExchangeRate
                        window1TotalSupply += msg.value * window1TokenExchangeRate
                        emit CreateGameIco((msg.value * window1TokenExchangeRate), msg.sender);
                    else:
                        require window2StartTime
                        require window2EndTime
                        require block.timestamp >= window2StartTime
                        require block.timestamp <= window2EndTime
                        if msg.value:
                            require msg.value
                            require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                        require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                        require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                        require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                        balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                        window2TotalSupply += msg.value * window2TokenExchangeRate
                        emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
    else:
        if not window0EndTime:
            if not window1StartTime:
                require window2StartTime
                require window2EndTime
                require block.timestamp >= window2StartTime
                require block.timestamp <= window2EndTime
                if msg.value:
                    require msg.value
                    require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                window2TotalSupply += msg.value * window2TokenExchangeRate
                emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
            else:
                if not window1EndTime:
                    require window2StartTime
                    require window2EndTime
                    require block.timestamp >= window2StartTime
                    require block.timestamp <= window2EndTime
                    if msg.value:
                        require msg.value
                        require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                    require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                    require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                    require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                    balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                    window2TotalSupply += msg.value * window2TokenExchangeRate
                    emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                else:
                    if block.timestamp < window1StartTime:
                        require window2StartTime
                        require window2EndTime
                        require block.timestamp >= window2StartTime
                        require block.timestamp <= window2EndTime
                        if msg.value:
                            require msg.value
                            require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                        require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                        require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                        require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                        balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                        window2TotalSupply += msg.value * window2TokenExchangeRate
                        emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                    else:
                        if block.timestamp <= window1EndTime:
                            if msg.value:
                                require msg.value
                                require msg.value * window1TokenExchangeRate / msg.value == window1TokenExchangeRate
                            require window1TotalSupply + (msg.value * window1TokenExchangeRate) >= window1TotalSupply
                            require window1TotalSupply + (msg.value * window1TokenExchangeRate) >= msg.value * window1TokenExchangeRate
                            require window1TokenCreationCap >= window1TotalSupply + (msg.value * window1TokenExchangeRate)
                            balanceOf[address(msg.sender)] += msg.value * window1TokenExchangeRate
                            window1TotalSupply += msg.value * window1TokenExchangeRate
                            emit CreateGameIco((msg.value * window1TokenExchangeRate), msg.sender);
                        else:
                            require window2StartTime
                            require window2EndTime
                            require block.timestamp >= window2StartTime
                            require block.timestamp <= window2EndTime
                            if msg.value:
                                require msg.value
                                require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                            require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                            require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                            require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                            balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                            window2TotalSupply += msg.value * window2TokenExchangeRate
                            emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
        else:
            if block.timestamp < window0StartTime:
                if not window1StartTime:
                    require window2StartTime
                    require window2EndTime
                    require block.timestamp >= window2StartTime
                    require block.timestamp <= window2EndTime
                    if msg.value:
                        require msg.value
                        require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                    require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                    require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                    require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                    balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                    window2TotalSupply += msg.value * window2TokenExchangeRate
                    emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                else:
                    if not window1EndTime:
                        require window2StartTime
                        require window2EndTime
                        require block.timestamp >= window2StartTime
                        require block.timestamp <= window2EndTime
                        if msg.value:
                            require msg.value
                            require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                        require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                        require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                        require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                        balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                        window2TotalSupply += msg.value * window2TokenExchangeRate
                        emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                    else:
                        if block.timestamp < window1StartTime:
                            require window2StartTime
                            require window2EndTime
                            require block.timestamp >= window2StartTime
                            require block.timestamp <= window2EndTime
                            if msg.value:
                                require msg.value
                                require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                            require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                            require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                            require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                            balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                            window2TotalSupply += msg.value * window2TokenExchangeRate
                            emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                        else:
                            if block.timestamp <= window1EndTime:
                                if msg.value:
                                    require msg.value
                                    require msg.value * window1TokenExchangeRate / msg.value == window1TokenExchangeRate
                                require window1TotalSupply + (msg.value * window1TokenExchangeRate) >= window1TotalSupply
                                require window1TotalSupply + (msg.value * window1TokenExchangeRate) >= msg.value * window1TokenExchangeRate
                                require window1TokenCreationCap >= window1TotalSupply + (msg.value * window1TokenExchangeRate)
                                balanceOf[address(msg.sender)] += msg.value * window1TokenExchangeRate
                                window1TotalSupply += msg.value * window1TokenExchangeRate
                                emit CreateGameIco((msg.value * window1TokenExchangeRate), msg.sender);
                            else:
                                require window2StartTime
                                require window2EndTime
                                require block.timestamp >= window2StartTime
                                require block.timestamp <= window2EndTime
                                if msg.value:
                                    require msg.value
                                    require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                                require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                                require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                                require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                                balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                                window2TotalSupply += msg.value * window2TokenExchangeRate
                                emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
            else:
                if block.timestamp <= window0EndTime:
                    if msg.value:
                        require msg.value
                        require msg.value * window0TokenExchangeRate / msg.value == window0TokenExchangeRate
                    require window0TotalSupply + (msg.value * window0TokenExchangeRate) >= window0TotalSupply
                    require window0TotalSupply + (msg.value * window0TokenExchangeRate) >= msg.value * window0TokenExchangeRate
                    require window0TokenCreationCap >= window0TotalSupply + (msg.value * window0TokenExchangeRate)
                    balanceOf[address(msg.sender)] += msg.value * window0TokenExchangeRate
                    window0TotalSupply += msg.value * window0TokenExchangeRate
                    emit CreateGameIco((msg.value * window0TokenExchangeRate), msg.sender);
                else:
                    if not window1StartTime:
                        require window2StartTime
                        require window2EndTime
                        require block.timestamp >= window2StartTime
                        require block.timestamp <= window2EndTime
                        if msg.value:
                            require msg.value
                            require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                        require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                        require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                        require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                        balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                        window2TotalSupply += msg.value * window2TokenExchangeRate
                        emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                    else:
                        if not window1EndTime:
                            require window2StartTime
                            require window2EndTime
                            require block.timestamp >= window2StartTime
                            require block.timestamp <= window2EndTime
                            if msg.value:
                                require msg.value
                                require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                            require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                            require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                            require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                            balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                            window2TotalSupply += msg.value * window2TokenExchangeRate
                            emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                        else:
                            if block.timestamp < window1StartTime:
                                require window2StartTime
                                require window2EndTime
                                require block.timestamp >= window2StartTime
                                require block.timestamp <= window2EndTime
                                if msg.value:
                                    require msg.value
                                    require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                                require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                                require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                                require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                                balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                                window2TotalSupply += msg.value * window2TokenExchangeRate
                                emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
                            else:
                                if block.timestamp <= window1EndTime:
                                    if msg.value:
                                        require msg.value
                                        require msg.value * window1TokenExchangeRate / msg.value == window1TokenExchangeRate
                                    require window1TotalSupply + (msg.value * window1TokenExchangeRate) >= window1TotalSupply
                                    require window1TotalSupply + (msg.value * window1TokenExchangeRate) >= msg.value * window1TokenExchangeRate
                                    require window1TokenCreationCap >= window1TotalSupply + (msg.value * window1TokenExchangeRate)
                                    balanceOf[address(msg.sender)] += msg.value * window1TokenExchangeRate
                                    window1TotalSupply += msg.value * window1TokenExchangeRate
                                    emit CreateGameIco((msg.value * window1TokenExchangeRate), msg.sender);
                                else:
                                    require window2StartTime
                                    require window2EndTime
                                    require block.timestamp >= window2StartTime
                                    require block.timestamp <= window2EndTime
                                    if msg.value:
                                        require msg.value
                                        require msg.value * window2TokenExchangeRate / msg.value == window2TokenExchangeRate
                                    require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= window2TotalSupply
                                    require window2TotalSupply + (msg.value * window2TokenExchangeRate) >= msg.value * window2TokenExchangeRate
                                    require window2TokenCreationCap >= window2TotalSupply + (msg.value * window2TokenExchangeRate)
                                    balanceOf[address(msg.sender)] += msg.value * window2TokenExchangeRate
                                    window2TotalSupply += msg.value * window2TokenExchangeRate
                                    emit CreateGameIco((msg.value * window2TokenExchangeRate), msg.sender);
}



}

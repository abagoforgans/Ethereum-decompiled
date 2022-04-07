contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
uint256 stor7;
array of uint256 stor8;

function _fallback() {
    stor4 = msg.sender
    stor3 = msg.sender
    stor7 = 2
    uint8(stor8.length) = 10
    stor8.length.field_8 = 'E4ROW' / 256
    idx = 0
    while stor8.length + 31 / 32 > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[326 len 6560]
}



// =====================  Runtime code  =====================


const totalSupply = 576200000


uint256 numToksSwitchedOver;
uint256 holdoverBalance;
uint256 totalFeesReceived;
address developersAddress;
address owner;
address oldE4Address;
address oldE4RecycleBinAddress;
uint256 decimals;
array of uint256 symbol;
mapping of struct balanceOf;
mapping of address stor10;
mapping of uint256 allowance;
uint256 numAccounts;
uint256 payoutThreshold;
uint256 vestTime;
uint256 rwGas;
uint256 optInGas;
uint8 settingsState;

function numToksSwitchedOver() {
    return numToksSwitchedOver
}

function developers() {
    return developersAddress
}

function decimals() {
    return decimals
}

function TotalFeesReceived() {
    return totalFeesReceived
}

function vestTime() {
    return vestTime
}

function rwGas() {
    return rwGas
}

function settingsState() {
    require settingsState <= 1
    return settingsState
}

function payoutThreshold() {
    return payoutThreshold
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_256
}

function numAccounts() {
    return numAccounts
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function optInGas() {
    return optInGas
}

function oldE4() {
    return oldE4Address
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function oldE4RecycleBin() {
    return oldE4RecycleBinAddress
}

function holdoverBalance() {
    return holdoverBalance
}

function haraKiri() {
    require settingsState <= 1
    require not settingsState
    require owner == msg.sender
    selfdestruct(developersAddress)
}

function blackHole() payable {
    emit StatEventI(Array(len=8, data='adjusted'), msg.value);
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require settingsState <= 1
    require settingsState != 1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setDeveloper(address arg1) {
    require owner == msg.sender
    require settingsState <= 1
    require settingsState != 1
    developersAddress = arg1
}

function _fallback() payable {
    holdoverBalance += msg.value
    totalFeesReceived += msg.value
    emit StatEventI(Array(len=7, data='Payment'), msg.value);
}

function setOldE4(address arg1, address arg2) {
    require owner == msg.sender
    require settingsState <= 1
    require settingsState != 1
    oldE4Address = arg1
    oldE4RecycleBinAddress = arg2
}

function setOpGas(uint256 arg1, uint256 arg2) {
    if owner == msg.sender:
        rwGas = arg1
        optInGas = arg2
    else:
        if developersAddress == msg.sender:
            rwGas = arg1
            optInGas = arg2
}

function checkDividends(address arg1) {
    if not balanceOf[address(arg1)].field_0:
        return 0
    return ((totalFeesReceived * balanceOf[address(arg1)].field_256) - (balanceOf[address(arg1)].field_768 * balanceOf[address(arg1)].field_256) + balanceOf[address(arg1)].field_512 / 576200000)
}

function calcCurPointsForAcct(address arg1) {
    balanceOf[address(arg1)].field_512 = (totalFeesReceived * balanceOf[address(arg1)].field_256) - (balanceOf[address(arg1)].field_768 * balanceOf[address(arg1)].field_256) + balanceOf[address(arg1)].field_512
    balanceOf[address(arg1)].field_768 = totalFeesReceived
}

function withdrawDividends() {
    balanceOf[address(msg.sender)].field_512 = (totalFeesReceived * balanceOf[address(msg.sender)].field_256) - (balanceOf[address(msg.sender)].field_768 * balanceOf[address(msg.sender)].field_256) + balanceOf[address(msg.sender)].field_512
    balanceOf[address(msg.sender)].field_768 = totalFeesReceived
    if balanceOf[address(msg.sender)].field_512 / 576200000 <= payoutThreshold:
        emit StatEventI(Array(len=11, data='low Balance'), balanceOf[address(msg.sender)].field_512 / 576200000);
    else:
        if developersAddress == msg.sender:
            if block.timestamp < vestTime:
                emit StatEvent(Array(len=22, data='Tokens not yet vested.'));
                return 0
        balanceOf[address(msg.sender)].field_512 += -576200000 * balanceOf[address(msg.sender)].field_512 / 576200000
        holdoverBalance -= balanceOf[address(msg.sender)].field_512 / 576200000
        call msg.sender with:
           value balanceOf[address(msg.sender)].field_512 / 576200000 wei
             gas rwGas wei
        require ext_call.success
    return (balanceOf[address(msg.sender)].field_512 / 576200000)
}

function transfer(address arg1, uint256 arg2) {
    if developersAddress == msg.sender:
        if block.timestamp < vestTime:
            return 0
    if balanceOf[address(msg.sender)].field_256 < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)].field_512 = (totalFeesReceived * balanceOf[address(msg.sender)].field_256) - (balanceOf[address(msg.sender)].field_768 * balanceOf[address(msg.sender)].field_256) + balanceOf[address(msg.sender)].field_512
    balanceOf[address(msg.sender)].field_768 = totalFeesReceived
    balanceOf[address(msg.sender)].field_256 -= arg2
    if not balanceOf[arg1].field_0:
        balanceOf[address(arg1)].field_0 = 1
        balanceOf[address(arg1)].field_256 = 0
        balanceOf[address(arg1)].field_512 = 0
        balanceOf[address(arg1)].field_768 = totalFeesReceived
        numAccounts++
        stor10[stor12] = arg1
    balanceOf[address(arg1)].field_512 = (totalFeesReceived * balanceOf[address(arg1)].field_256) - (balanceOf[address(arg1)].field_768 * balanceOf[address(arg1)].field_256) + balanceOf[address(arg1)].field_512
    balanceOf[address(arg1)].field_768 = totalFeesReceived
    balanceOf[address(arg1)].field_256 += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferDividends(address arg1) {
    if developersAddress == msg.sender:
        if block.timestamp < vestTime:
            return 0
    balanceOf[address(msg.sender)].field_512 = (totalFeesReceived * balanceOf[address(msg.sender)].field_256) - (balanceOf[address(msg.sender)].field_768 * balanceOf[address(msg.sender)].field_256) + balanceOf[address(msg.sender)].field_512
    balanceOf[address(msg.sender)].field_768 = totalFeesReceived
    if not balanceOf[address(msg.sender)].field_512:
        emit StatEvent(Array(len=12, data='Zero balance'));
        return 0
    if not balanceOf[address(arg1)].field_0:
        balanceOf[address(arg1)].field_0 = 1
        balanceOf[address(arg1)].field_256 = 0
        balanceOf[address(arg1)].field_512 = 0
        balanceOf[address(arg1)].field_768 = totalFeesReceived
        numAccounts++
        stor10[stor12] = arg1
    balanceOf[address(arg1)].field_512 = (totalFeesReceived * balanceOf[address(arg1)].field_256) - (balanceOf[address(arg1)].field_768 * balanceOf[address(arg1)].field_256) + balanceOf[address(arg1)].field_512
    balanceOf[address(arg1)].field_768 = totalFeesReceived
    balanceOf[arg1].field_512 += balanceOf[address(msg.sender)].field_512
    balanceOf[address(msg.sender)].field_512 = 0
    emit StatEvent(Array(len=20, data='Trasnfered Dividends'));
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if developersAddress == arg1:
        if block.timestamp < vestTime:
            return 0
    if balanceOf[address(arg1)].field_256 < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg1)].field_512 = (totalFeesReceived * balanceOf[address(arg1)].field_256) - (balanceOf[address(arg1)].field_768 * balanceOf[address(arg1)].field_256) + balanceOf[address(arg1)].field_512
    balanceOf[address(arg1)].field_768 = totalFeesReceived
    balanceOf[address(arg1)].field_256 -= arg3
    if not balanceOf[arg2].field_0:
        balanceOf[address(arg2)].field_0 = 1
        balanceOf[address(arg2)].field_256 = 0
        balanceOf[address(arg2)].field_512 = 0
        balanceOf[address(arg2)].field_768 = totalFeesReceived
        numAccounts++
        stor10[stor12] = arg2
    balanceOf[address(arg2)].field_512 = (totalFeesReceived * balanceOf[address(arg2)].field_256) - (balanceOf[address(arg2)].field_768 * balanceOf[address(arg2)].field_256) + balanceOf[address(arg2)].field_512
    balanceOf[address(arg2)].field_768 = totalFeesReceived
    balanceOf[address(arg2)].field_256 += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function applySettings(uint8 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    if owner == msg.sender:
        payoutThreshold = arg2
        rwGas = arg4
        optInGas = arg5
        require settingsState <= 1
        if settingsState != 1:
            require arg1 <= 1
            settingsState = arg1
            if arg1 == 1:
                emit StatEvent(Array(len=8, data='Locking!'));
            else:
                s = 0
                idx = 0
                while idx < numAccounts:
                    mem[0] = idx
                    mem[32] = 10
                    if stor10[idx]:
                        mem[0] = stor10[idx]
                        mem[32] = 9
                        balanceOf[stor10[idx]].field_256 = 0
                        balanceOf[stor10[idx]].field_512 = 0
                        balanceOf[stor10[idx]].field_768 = 0
                    s = stor10[idx]
                    idx = idx + 1
                    continue 
                vestTime = arg3
                numToksSwitchedOver = 0
                if eth.balance(this.address) > 0:
                    call owner with:
                       value eth.balance(this.address) wei
                         gas rwGas wei
                    if not ext_call.success:
                        emit StatEvent(Array(len=6, data='ERROR!'));
                emit StatEvent(Array(len=2, data='ok'));
}

function optInFromClassic() {
    if not oldE4Address:
        emit StatEvent(Array(len=10, data='config err'));
    else:
        if balanceOf[address(msg.sender)].field_256:
            emit StatEvent('Account has already been allocd!');
        else:
            require ext_code.size(oldE4Address)
            call oldE4Address.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[0]:
                emit StatEvent(Array(len=13, data='Nothing to do'));
            else:
                require ext_code.size(oldE4Address)
                call oldE4Address.0xdd62ed3e with:
                     gas gas_remaining - 710 wei
                    args msg.sender, this.address
                require ext_call.success
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    emit StatEvent(Array(len=40, data='Please approve this contract to ', 'transfer'));
                else:
                    require ext_code.size(oldE4Address)
                    call oldE4Address.0x23b872dd with:
                         gas optInGas wei
                        args msg.sender, oldE4RecycleBinAddress, ext_call.return_data[0]
                    require ext_call.success
                    require ext_code.size(oldE4Address)
                    call oldE4Address.0x70a08231 with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if ext_call.return_data[0]:
                        emit StatEvent(Array(len=40, data='Transfer Error! please contact D', 'ev team!'));
                    else:
                        if not balanceOf[address(msg.sender)].field_0:
                            balanceOf[address(msg.sender)].field_0 = 1
                            balanceOf[address(msg.sender)].field_256 = 0
                            balanceOf[address(msg.sender)].field_512 = 0
                            balanceOf[address(msg.sender)].field_768 = totalFeesReceived
                            numAccounts++
                            stor10[stor12] = msg.sender
                        balanceOf[address(msg.sender)].field_256 = 100000 * ext_call.return_data[0]
                        balanceOf[address(msg.sender)].field_768 = 0
                        balanceOf[address(msg.sender)].field_512 = (totalFeesReceived * balanceOf[address(msg.sender)].field_256) - (balanceOf[address(msg.sender)].field_768 * balanceOf[address(msg.sender)].field_256) + balanceOf[address(msg.sender)].field_512
                        balanceOf[address(msg.sender)].field_768 = totalFeesReceived
                        numToksSwitchedOver += ext_call.return_data[0]
                        emit StatEvent(Array(len=21, data='Success Switched Over'));
}



}

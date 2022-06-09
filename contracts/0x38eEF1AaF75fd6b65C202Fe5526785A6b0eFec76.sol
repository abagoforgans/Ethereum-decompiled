contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
address stor9;
uint128 stor10; offset 176
uint128 stor10; offset 168
uint128 stor10; offset 160
address stor10;
uint256 stor11;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 0
    stor0.length.field_8 = mem[128 len 31]
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 0
    stor1.length.field_8 = mem[160 len 31]
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    stor9 = 0
    address(stor10.field_0) = 0
    Mask(96, 0, stor10.field_160) = 0
    Mask(88, 0, stor10.field_168) = 0
    Mask(80, 0, stor10.field_176) = 0
    stor11 = 0
    require not msg.value
    address(stor10.field_0) = code.data[8081 len 20]
    return code.data[704 len 7365]
}



// =====================  Runtime code  =====================


const decimals = 18

const ICOFactoryVersion = '1.0'

const TimeNow = block.timestamp


array of uint256 symbol;
array of uint256 name;
uint256 totalSupply;
uint256 oneEtherEqualsInWei;
uint256 maxICOpublicSupply;
uint256 ownerICOsupply;
uint256 currentICOpublicSupply;
uint256 blockICOdatetime;
address iCOfundsReceiverAddress;
address remainingTokensReceiverAddress;
uint8 stor10; offset 160
uint8 stor10; offset 168
uint8 stor10; offset 176
uint128 stor10; offset 176
uint128 stor10; offset 168
uint128 stor10; offset 160
address owner;
uint256 iCOoverTimeStamp;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function OneEtherEqualsInWei() {
    return oneEtherEqualsInWei
}

function ICOoverTimeStamp() {
    return iCOoverTimeStamp
}

function MaxICOpublicSupply() {
    return maxICOpublicSupply
}

function OwnerICOsupply() {
    return ownerICOsupply
}

function IsICOrunning() {
    return bool(uint8(stor10.field_168))
}

function ICOfundsReceiverAddress() {
    return iCOfundsReceiverAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function IsICOstarted() {
    return bool(uint8(stor10.field_176))
}

function CurrentICOpublicSupply() {
    return currentICOpublicSupply
}

function symbol() {
    return symbol[0 len symbol.length]
}

function Owner() {
    return owner
}

function BlockICOdatetime() {
    return blockICOdatetime
}

function SetupDone() {
    return bool(uint8(stor10.field_160))
}

function RemainingTokensReceiverAddress() {
    return remainingTokensReceiverAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function StartICO() {
    require msg.sender == owner
    require not uint8(stor10.field_176)
    require uint8(stor10.field_160)
    Mask(80, 0, stor10.field_176) = 1
    Mask(88, 0, stor10.field_168) = 1
    return 1
}

function BurnTokens(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function StopICO() {
    require msg.sender == owner
    require uint8(stor10.field_168)
    if remainingTokensReceiverAddress:
        if maxICOpublicSupply > 0:
            if maxICOpublicSupply - currentICOpublicSupply > 0:
                balanceOf[stor9] = balanceOf[stor9] + maxICOpublicSupply - currentICOpublicSupply
                totalSupply = totalSupply + maxICOpublicSupply - currentICOpublicSupply
                emit Transfer((maxICOpublicSupply - currentICOpublicSupply), this.address, remainingTokensReceiverAddress);
    Mask(88, 0, stor10.field_168) = 0
    iCOoverTimeStamp = block.timestamp
    return 1
}

function _fallback() payable {
    require uint8(stor10.field_168)
    if blockICOdatetime:
        require uint8(stor10.field_168)
        require blockICOdatetime > 0
        require block.timestamp <= blockICOdatetime
    if currentICOpublicSupply + (msg.value * oneEtherEqualsInWei / 10^18) > maxICOpublicSupply:
        require maxICOpublicSupply <= 0
    call iCOfundsReceiverAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    currentICOpublicSupply += msg.value * oneEtherEqualsInWei / 10^18
    balanceOf[address(msg.sender)] += msg.value * oneEtherEqualsInWei / 10^18
    totalSupply += msg.value * oneEtherEqualsInWei / 10^18
    emit Transfer((msg.value * oneEtherEqualsInWei / 10^18), this.address, msg.sender);
}

function SetupToken(string arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, address arg6, address arg7, uint256 arg8) {
    if msg.sender == owner:
        if not uint8(stor10.field_160):
            symbol[] = Array(len=arg2.length, data=arg2[all])
            name[] = Array(len=arg1.length, data=arg1[all])
            oneEtherEqualsInWei = arg3
            maxICOpublicSupply = 10^18 * arg4
            if arg5 > 0:
                ownerICOsupply = 10^18 * arg5
                totalSupply = ownerICOsupply
                balanceOf[address(stor10.field_0)] = totalSupply
                emit Transfer(totalSupply, this.address, owner);
            iCOfundsReceiverAddress = arg7
            if not iCOfundsReceiverAddress:
                iCOfundsReceiverAddress = owner
            remainingTokensReceiverAddress = arg6
            blockICOdatetime = arg8
            Mask(96, 0, stor10.field_160) = 1
}



}

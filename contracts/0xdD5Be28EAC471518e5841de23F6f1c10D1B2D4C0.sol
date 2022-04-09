contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
array of uint256 stor3;
array of uint256 stor4;
address stor5;
array of address stor6;
mapping of struct stor7;
uint8 stor8;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '0.1' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 6
    stor4.length.field_8 = 'bancor' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = code.data[10116 len 20]
    stor5 = code.data[10148 len 20]
    if code.data[10180 len 20]:
        stor7[code.data[10180 len 20]].field_0 = 0
        stor7[address(code.data[10168 len 32])].field_256 = code.data[10231 len 1]
        stor7[address(code.data[10168 len 32])].field_264 = 0
        stor7[address(code.data[10168 len 32])].field_272 = 1
        stor7[address(code.data[10168 len 32])].field_280 = 1
        stor6.length++
        if not stor6.length <= stor6.length + 1:
            idx = stor6.length + 1
            while stor6.length > idx:
                uint256(stor6[idx]) = 0
                idx = idx + 1
                continue 
        address(stor6[stor6.length]) = code.data[10180 len 20]
        stor8 = uint8(stor8 + code.data[10200 len 32])
    return code.data[1366 len 8738]
}



// =====================  Runtime code  =====================


const getReserveBalance(address arg1) = 898998998


address owner;
address newOwner;
address tokenAddress;
array of uint256 version;
array of uint256 changerType;
address formulaAddress;
array of address reserveTokens;
mapping of struct reserves;
uint8 stor8;

function changerType() {
    return changerType[0 len changerType.length]
}

function formula() {
    return formulaAddress
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function reserveTokenCount() {
    return uint16(reserveTokens.length)
}

function reserveTokens(uint256 arg1) {
    require arg1 < reserveTokens.length
    return address(reserveTokens[arg1])
}

function newOwner() {
    return newOwner
}

function reserves(address arg1) {
    return reserves[arg1].field_0, 
           reserves[arg1].field_256,
           bool(reserves[arg1].field_264),
           bool(reserves[arg1].field_272),
           bool(reserves[arg1].field_280)
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setFormula(address arg1) {
    formulaAddress = arg1
}

function transferOwnership(address arg1) {
    newOwner = arg1
}

function changeableTokenCount() {
    return uint16(reserveTokens.length + 1)
}

function acceptOwnership() {
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function disableReservePurchases(address arg1, bool arg2) {
    reserves[address(arg1)].field_272 = Mask(240, 0, not arg2)
}

function sell(address arg1, uint256 arg2, uint256 arg3) {
    emit Change(10^13, 10^15, tokenAddress, arg1, msg.sender);
    return 0
}

function buy(address arg1, uint256 arg2, uint256 arg3) {
    emit Change(1, 10000000 * 10^18, arg1, tokenAddress, msg.sender);
    return 0
}

function acceptTokenOwnership() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x79ba5097 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function changeableToken(uint16 arg1) {
    if not arg1:
        return tokenAddress
    require uint16(arg1 - 1) < reserveTokens.length
    return address(reserveTokens[uint16(arg1 - 1)])
}

function transferTokenOwnership(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function disableTokenTransfers(bool arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.disableTransfers(bool rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function issueTokens(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.issue(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function destroyTokens(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.destroy(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function withdrawFromToken(address arg1, address arg2, uint256 arg3) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x5e35359e with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
}

function updateReserve(address arg1, uint8 arg2, bool arg3, uint256 arg4) {
    stor8 = uint8(stor8 - reserves[address(arg1)].field_256 + arg2)
    reserves[address(arg1)].field_256 = arg2
    reserves[address(arg1)].field_264 = Mask(248, 0, arg3)
    reserves[address(arg1)].field_0 = arg4
}

function getPurchaseReturn(address arg1, uint256 arg2) {
    require ext_code.size(formulaAddress)
    call formulaAddress.0xa78e887c with:
         gas gas_remaining - 710 wei
        args 0, 1898585868, 798978687, reserves[address(arg1)].field_256, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function change(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require arg1 != arg2
    if arg2 == tokenAddress:
        emit Change(1, 10000000 * 10^18, arg1, tokenAddress, msg.sender);
    else:
        if arg1 != tokenAddress:
            emit Change(1, 10000000 * 10^18, arg1, tokenAddress, msg.sender);
        emit Change(10^13, 10^15, tokenAddress, arg2, msg.sender);
    return 0
}

function getSaleReturn(address arg1, uint256 arg2) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(formulaAddress)
    call formulaAddress.0xd39cce1c with:
         gas gas_remaining - 710 wei
        args 0, ext_call.return_data[28 len 4], 898998998, reserves[address(arg1)].field_256, arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function addReserve(address arg1, uint8 arg2, bool arg3) {
    reserves[address(arg1)].field_0 = 0
    reserves[address(arg1)].field_256 = arg2
    reserves[address(arg1)].field_264 = Mask(248, 0, arg3)
    reserves[address(arg1)].field_272 = 1
    reserves[address(arg1)].field_280 = 1
    reserveTokens.length++
    if not reserveTokens.length <= reserveTokens.length + 1:
        idx = reserveTokens.length + 1
        while reserveTokens.length > idx:
            uint256(reserveTokens[idx]) = 0
            idx = idx + 1
            continue 
    address(reserveTokens[reserveTokens.length]) = arg1
    stor8 = uint8(stor8 + arg2)
}

function getReturn(address arg1, address arg2, uint256 arg3) {
    require arg1 != arg2
    if arg2 == tokenAddress:
        if ext_code.size(formulaAddress):
            call formulaAddress.0xa78e887c with:
                 gas gas_remaining - 710 wei
                args 0, 1898585868, 798978687, reserves[address(arg1)].field_256, arg3
            if ext_call.success:
                return ext_call.return_data[0]
    else:
        if arg1 == tokenAddress:
            if ext_code.size(tokenAddress):
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if ext_code.size(formulaAddress):
                        call formulaAddress.0xd39cce1c with:
                             gas gas_remaining - 710 wei
                            args 0, ext_call.return_data[28 len 4], 898998998, reserves[address(arg2)].field_256, arg3
                        if ext_call.success:
                            return ext_call.return_data[0]
        else:
            if ext_code.size(tokenAddress):
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    if ext_call.return_data[0] + 100000 >= ext_call.return_data[0]:
                        if ext_code.size(formulaAddress):
                            call formulaAddress.0xd39cce1c with:
                                 gas gas_remaining - 710 wei
                                args 0, uint32(ext_call.return_data[0] + 100000), 898998998, reserves[address(arg2)].field_256, 100000
                            if ext_call.success:
                                return ext_call.return_data[0]
    revert
}



}

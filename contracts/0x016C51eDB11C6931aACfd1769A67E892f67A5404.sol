contract main {




// =====================  Runtime code  =====================


#
#  - transferFromParent(address arg1, uint256 arg2, address arg3, uint256 arg4, bytes arg5)
#  - composeNewLand(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#  - decomposeLand(uint256 arg1)
#  - transferAsChild(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, bytes arg6)
#  - composeLand(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4)
#
uint8 stor0;
uint256 totalSupply;
mapping of struct ownerOf;
array of struct tokenOfOwnerByIndex;
mapping of uint256 stor3;
mapping of address stor4;
array of uint256 childTokenByIndex;
mapping of uint256 stor6;
mapping of uint8 stor7;
array of uint256 name;
array of uint256 symbol;
array of struct stor10;
mapping of uint8 stor11;
address ownerPrimary;
address ownerSecondary;
address ownerWallet;
address cryptoRomeWalletAddress;
mapping of uint8 otherOperators;
uint8 paused; offset 160
address improvementContractAddress;
address newContractAddress;
mapping of struct landImprovementData;
array of struct stor20;
mapping of uint256 landTypeCount;
uint256 stor2773;
array of uint256 stor93369884277498597659590946175997448338802118867485977633968544981113634346220;

function supportsInterface(bytes4 arg1) {
    return bool(stor11[Mask(32, 224, arg1)])
}

function childTokenByIndex(address arg1, uint256 arg2, uint256 arg3) {
    require arg3 < childTokenByIndex[address(arg1)][arg2]
    require arg3 < childTokenByIndex[address(arg1)][arg2]
    return childTokenByIndex[address(arg1)][arg2][arg3]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return uint256(totalSupply)
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    require arg2 < tokenOfOwnerByIndex[address(arg1)].field_0
    return tokenOfOwnerByIndex[address(arg1)][arg2].field_0
}

function cryptoRomeWallet() {
    return cryptoRomeWalletAddress
}

function paused() {
    return bool(paused)
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1].field_0
    return ownerOf[arg1].field_0
}

function newContractAddress() {
    return newContractAddress
}

function otherOperators(address arg1) {
    return otherOperators[arg1]
}

function balanceOf(address arg1) {
    require arg1
    return tokenOfOwnerByIndex[address(arg1)].field_0
}

function totalChildTokens(address arg1, uint256 arg2) {
    return childTokenByIndex[address(arg1)][arg2]
}

function ownerWallet() {
    return ownerWallet
}

function ownerPrimary() {
    return ownerPrimary
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getLandTypeCount(uint256 arg1) {
    return landTypeCount[arg1]
}

function getLandImprovementData(uint256 arg1) {
    return landImprovementData[arg1].field_256
}

function ownerSecondary() {
    return ownerSecondary
}

function improvementContract() {
    return improvementContractAddress
}

function isApprovedForAll(address arg1, address arg2) {
    require arg1
    require arg2
    return bool(stor7[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return (uint256(totalSupply) > arg1)
}

function tokenByIndex(uint256 arg1) {
    require arg1 < uint256(totalSupply)
    return arg1
}

function unpause() {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    require paused
    paused = 0
}

function pause() {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    require not paused
    paused = 1
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1
    stor7[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function transferOwnerWalletOwnership(address arg1) {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    require arg1
    ownerWallet = arg1
}

function setNewAddress(address arg1) {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    newContractAddress = arg1
    emit ContractUpgrade(arg1);
}

function transferCryptoRomeWalletOwnership(address arg1) {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    require arg1
    cryptoRomeWalletAddress = arg1
}

function setOtherOperator(address arg1, uint8 arg2) {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    require arg1
    otherOperators[address(arg1)] = arg2
}

function updateLandImprovementData(uint256 arg1, uint256 arg2) {
    require msg.sender == improvementContractAddress
    require arg1 <= uint256(totalSupply)
    landImprovementData[arg1].field_256 = arg2
}

function setPrimaryOwner(address arg1) {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    require arg1
    emit OwnershipTransferred(ownerPrimary, arg1);
    ownerPrimary = arg1
}

function setSecondaryOwner(address arg1) {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    require arg1
    emit OwnershipTransferred(ownerSecondary, arg1);
    ownerSecondary = arg1
}

function getLand(uint256 arg1) {
    return ownerOf[arg1].field_0, 
           ownerOf[arg1].field_256,
           landImprovementData[arg1].field_0,
           landImprovementData[arg1].field_256,
           landImprovementData[arg1].field_512
}

function setImprovementContract(address arg1) {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    require arg1
    emit OwnershipTransferred(improvementContractAddress, arg1);
    improvementContractAddress = arg1
}

function tokenOwnerOf(uint256 arg1) {
    require ownerOf[arg1].field_0
    if ownerOf[arg1].field_256 <= 0:
        return 3446934965, 0, ownerOf[arg1].field_0, ownerOf[arg1].field_256, 0
    return 3446934965, 0, ownerOf[arg1].field_0, ownerOf[arg1].field_256 - 1, 1
}

function withdrawBalance() {
    if ownerPrimary != msg.sender:
        require msg.sender == ownerSecondary
    call ownerWallet with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function cancelLandSale(uint256 arg1) {
    require not paused
    require msg.sender == ownerOf[arg1].field_0
    landImprovementData[arg1].field_512 = 0
    require arg1 / 256 < stor20.length
    require arg1 / 256 < stor20.length
    stor20[0.00390625 / arg1].field_0 = stor20[0.00390625 / arg1].field_0 and !2^uint8(arg1)
}

function sellLand(uint256 arg1, uint256 arg2) {
    require not paused
    require msg.sender == ownerOf[arg1].field_0
    require not ownerOf[arg1].field_256
    require arg2 > 0
    landImprovementData[arg1].field_512 = arg2
    require arg1 / 256 < stor20.length
    require arg1 / 256 < stor20.length
    stor20[0.00390625 / arg1].field_0 = stor20[0.00390625 / arg1].field_0 or 2^uint8(arg1)
}

function setTokenURI(string arg1) {
    if ownerPrimary != msg.sender:
        if ownerSecondary != msg.sender:
            require 1 == otherOperators[msg.sender]
    stor10.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        stor10[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function getAllForSaleStatus() {
    if not stor20.length:
        mem[(32 * stor20.length) + 128] = 32
        mem[(32 * stor20.length) + 160] = stor20.length
        mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
        return memory
          from (32 * stor20.length) + 128
           len (96 * stor20.length) + 64
    mem[128] = uint256(stor20.field_0)
    idx = 128
    s = 0
    while (32 * stor20.length) + 96 > idx:
        mem[idx + 32] = stor20[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor20.length) + 192 len floor32(stor20.length)] = mem[128 len floor32(stor20.length)]
    return Array(len=stor20.length, data=mem[128 len floor32(stor20.length)], mem[(32 * stor20.length) + floor32(stor20.length) + 192 len (32 * stor20.length) - floor32(stor20.length)]), 
}

function createLand(address arg1, uint256 arg2, uint256 arg3) {
    if ownerPrimary != msg.sender:
        if ownerSecondary != msg.sender:
            require 1 == otherOperators[msg.sender]
    require not paused
    require arg1
    require 50000 > stor2773
    landImprovementData[uint256(stor0)].field_0 = arg2
    landImprovementData[uint256(stor0)].field_256 = arg3
    landImprovementData[uint256(stor0)].field_512 = 0
    landTypeCount[arg2]++
    if not uint8(stor0):
        stor20.length++
        storCE6D[stor20.length] = 0
    require arg1
    require not ownerOf[uint256(stor0)].field_0
    ownerOf[uint256(stor0)].field_0 = arg1
    stor3[uint256(stor0)] = tokenOfOwnerByIndex[address(arg1)].field_0
    tokenOfOwnerByIndex[address(arg1)].field_0++
    tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 = uint256(totalSupply)
    uint256(totalSupply)++
    emit Transfer(0, arg1, uint256(totalSupply));
    return uint256(totalSupply)
}

function tokensOfOwner(address arg1) {
    if not tokenOfOwnerByIndex[address(arg1)].field_0:
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128] = 32
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 160] = tokenOfOwnerByIndex[address(arg1)].field_0
        mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
        return memory
          from (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 128
           len (96 * tokenOfOwnerByIndex[address(arg1)].field_0) + 64
    mem[128] = tokenOfOwnerByIndex[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = tokenOfOwnerByIndex[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)] = mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]
    return Array(len=tokenOfOwnerByIndex[address(arg1)].field_0, data=mem[128 len floor32(tokenOfOwnerByIndex[address(arg1)].field_0)], mem[(32 * tokenOfOwnerByIndex[address(arg1)].field_0) + floor32(tokenOfOwnerByIndex[address(arg1)].field_0) + 192 len (32 * tokenOfOwnerByIndex[address(arg1)].field_0) - floor32(tokenOfOwnerByIndex[address(arg1)].field_0)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    require arg1
    require arg2
    require ownerOf[arg3].field_0 == arg1
    require not ownerOf[arg3].field_256
    if arg1 != msg.sender:
        staticcall arg1.rootOwnerOfChild(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, arg3
        if ext_call.success:
            if bool(ext_call.success) == 1:
                require Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965
        if not stor7[address(arg1)][msg.sender]:
            require msg.sender == stor4[address(arg1)][arg3]
    if stor4[address(arg1)][arg3]:
        stor4[address(arg1)][arg3] = 0
        emit Approval(arg1, 0, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    if tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 != arg3:
        require stor3[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor3[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor3[stor2[address(arg1)][stor2[address(arg1)].field_0].field_0] = stor3[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownerOf[arg3].field_0 = arg2
    stor3[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    emit Transfer(arg1, arg2, arg3);
}

function tokenURI(uint256 arg1) {
    require uint256(totalSupply) > arg1
    mem[96] = stor10.length
    mem[0] = 10
    mem[128] = uint256(stor10.field_0)
    idx = 128
    s = 0
    while stor10.length + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor10.length) + 128] = 100
    mem[ceil32(stor10.length) + 160 len 3200] = code.data[12534 len 3200]
    s = 0
    s = 0
    idx = arg1
    while idx:
        require s < 100
        mem[ceil32(stor10.length) + s + 160 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        s = idx % 10
        s = s + 1
        idx = idx / 10
        continue 
    mem[ceil32(stor10.length) + 288] = stor10.length + s
    mem[64] = ceil32(stor10.length) + floor32(stor10.length + s + 31) + 320
    if stor10.length + s:
        mem[ceil32(stor10.length) + 320 len 32 * stor10.length + s] = code.data[12534 len 32 * stor10.length + s]
    idx = 0
    while idx < stor10.length:
        require idx < stor10.length
        require idx < stor10.length + s
        mem[ceil32(stor10.length) + idx + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        continue 
    t = 0
    while t < s:
        require s + -t - 1 < 100
        require t < s
        mem[ceil32(stor10.length) + t + stor10.length + 320 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 159, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'stor10', 10))))), ('var', 1), ('mul', -1, ('var', 2))), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 159, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'stor10', 10))))), ('var', 1), ('mul', -1, ('var', 2))), 32))), 0) - 256
        t = t + 1
        continue 
    mem[ceil32(stor10.length) + floor32(stor10.length + s + 31) + 384 len floor32(stor10.length + s + 31)] = mem[ceil32(stor10.length) + 320 len floor32(stor10.length + s + 31)]
    return Array(len=stor10.length + s, data=mem[ceil32(stor10.length) + floor32(stor10.length + s + 31) + 384 len stor10.length + s]), 
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1
    require arg2
    require ownerOf[arg3].field_0 == arg1
    require not ownerOf[arg3].field_256
    if arg1 != msg.sender:
        staticcall arg1.rootOwnerOfChild(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, arg3
        if ext_call.success:
            if bool(ext_call.success) == 1:
                require Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965
        if not stor7[address(arg1)][msg.sender]:
            require msg.sender == stor4[address(arg1)][arg3]
    if stor4[address(arg1)][arg3]:
        stor4[address(arg1)][arg3] = 0
        emit Approval(arg1, 0, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    if tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 != arg3:
        require stor3[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor3[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor3[stor2[address(arg1)][stor2[address(arg1)].field_0].field_0] = stor3[arg3]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownerOf[arg3].field_0 = arg2
    stor3[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
    emit Transfer(arg1, arg2, arg3);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function transferToParent(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require arg1
    require arg2
    require ownerOf[arg4].field_0 == arg1
    require not ownerOf[arg4].field_256
    if arg1 != msg.sender:
        staticcall arg1.rootOwnerOfChild(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, arg4
        if ext_call.success:
            if bool(ext_call.success) == 1:
                require Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965
        if not stor7[address(arg1)][msg.sender]:
            require msg.sender == stor4[address(arg1)][arg4]
    if stor4[address(arg1)][arg4]:
        stor4[address(arg1)][arg4] = 0
        emit Approval(arg1, 0, arg4);
    require arg3 + 1 >= arg3
    ownerOf[arg4].field_256 = arg3 + 1
    childTokenByIndex[address(arg2)][arg3]++
    childTokenByIndex[address(arg2)][arg3][childTokenByIndex[address(arg2)][arg3]] = arg4
    stor6[arg4] = childTokenByIndex[address(arg2)][arg3]
    require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
    require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
    if tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 != arg4:
        require stor3[arg4] < tokenOfOwnerByIndex[address(arg1)].field_0
        tokenOfOwnerByIndex[address(arg1)][stor3[arg4]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
        stor3[stor2[address(arg1)][stor2[address(arg1)].field_0].field_0] = stor3[arg4]
    tokenOfOwnerByIndex[address(arg1)].field_0--
    if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
        idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
        while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
            tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownerOf[arg4].field_0 = arg2
    stor3[arg4] = tokenOfOwnerByIndex[address(arg2)].field_0
    tokenOfOwnerByIndex[address(arg2)].field_0++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg4
    emit Transfer(arg1, arg2, arg4);
    require ext_code.size(arg2)
    call arg2.0x6352211e with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    emit TransferToParent(arg4, arg2, arg3);
}

function purchaseLand(uint256 arg1) payable {
    require not paused
    require landImprovementData[arg1].field_512 <= msg.value
    landImprovementData[arg1].field_512 = 0
    require arg1 / 256 < stor20.length
    require arg1 / 256 < stor20.length
    stor20[0.00390625 / arg1].field_0 = stor20[0.00390625 / arg1].field_0 and !2^uint8(arg1)
    if not landImprovementData[arg1].field_512:
        require 0 <= msg.value
        call cryptoRomeWalletAddress with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require landImprovementData[arg1].field_512 <= msg.value
        call msg.sender with:
           value msg.value - landImprovementData[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ownerOf[arg1].field_0 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
    else:
        require 3 * landImprovementData[arg1].field_512 / landImprovementData[arg1].field_512 == 3
        require 3 * landImprovementData[arg1].field_512 / 100 <= msg.value
        call cryptoRomeWalletAddress with:
           value 3 * landImprovementData[arg1].field_512 / 100 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require landImprovementData[arg1].field_512 <= msg.value
        call msg.sender with:
           value msg.value - landImprovementData[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call ownerOf[arg1].field_0 with:
           value msg.value - (3 * landImprovementData[arg1].field_512 / 100) wei
             gas 2300 * is_zero(value) wei
    require 1 <= tokenOfOwnerByIndex[stor1[arg1].field_0].field_0
    require tokenOfOwnerByIndex[stor1[arg1].field_0].field_0 - 1 < tokenOfOwnerByIndex[stor1[arg1].field_0].field_0
    if tokenOfOwnerByIndex[stor1[arg1].field_0][tokenOfOwnerByIndex[stor1[arg1].field_0].field_0].field_0 != arg1:
        require stor3[arg1] < tokenOfOwnerByIndex[stor1[arg1].field_0].field_0
        tokenOfOwnerByIndex[stor1[arg1].field_0][stor3[arg1]].field_0 = tokenOfOwnerByIndex[stor1[arg1].field_0][tokenOfOwnerByIndex[stor1[arg1].field_0].field_0].field_0
        stor3[stor2[stor1[arg1].field_0][stor2[stor1[arg1].field_0].field_0].field_0] = stor3[arg1]
    tokenOfOwnerByIndex[stor1[arg1].field_0].field_0--
    if tokenOfOwnerByIndex[stor1[arg1].field_0].field_0 > tokenOfOwnerByIndex[stor1[arg1].field_0].field_0 - 1:
        idx = tokenOfOwnerByIndex[stor1[arg1].field_0].field_0 - 1
        while tokenOfOwnerByIndex[stor1[arg1].field_0].field_0 > idx:
            tokenOfOwnerByIndex[stor1[arg1].field_0][idx].field_0 = 0
            idx = idx + 1
            continue 
    ownerOf[arg1].field_0 = msg.sender
    stor3[arg1] = tokenOfOwnerByIndex[address(msg.sender)].field_0
    tokenOfOwnerByIndex[address(msg.sender)].field_0++
    tokenOfOwnerByIndex[address(msg.sender)][tokenOfOwnerByIndex[address(msg.sender)].field_0].field_0 = arg1
    emit Transfer(ownerOf[arg1].field_0, msg.sender, arg1);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require ownerOf[arg3].field_0 == arg1
    require not ownerOf[arg3].field_256
    if msg.sender == arg1:
        if stor4[address(arg1)][arg3]:
            stor4[address(arg1)][arg3] = 0
            emit Approval(arg1, 0, arg3);
        require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        if tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 != arg3:
            require stor3[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][stor3[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            stor3[stor2[address(arg1)][stor2[address(arg1)].field_0].field_0] = stor3[arg3]
        tokenOfOwnerByIndex[address(arg1)].field_0--
        if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
            idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
            while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        ownerOf[arg3].field_0 = arg2
        stor3[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
        tokenOfOwnerByIndex[address(arg2)].field_0++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
    else:
        staticcall arg1.rootOwnerOfChild(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args this.address, arg3
        if ext_call.success:
            if bool(ext_call.success) == 1:
                require Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965
        if not stor7[address(arg1)][msg.sender]:
            require msg.sender == stor4[address(arg1)][arg3]
        if stor4[address(arg1)][arg3]:
            stor4[address(arg1)][arg3] = 0
            emit Approval(arg1, 0, arg3);
        require 1 <= tokenOfOwnerByIndex[address(arg1)].field_0
        require tokenOfOwnerByIndex[address(arg1)].field_0 - 1 < tokenOfOwnerByIndex[address(arg1)].field_0
        if tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0 != arg3:
            require stor3[arg3] < tokenOfOwnerByIndex[address(arg1)].field_0
            tokenOfOwnerByIndex[address(arg1)][stor3[arg3]].field_0 = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)].field_0].field_0
            stor3[stor2[address(arg1)][stor2[address(arg1)].field_0].field_0] = stor3[arg3]
        tokenOfOwnerByIndex[address(arg1)].field_0--
        if tokenOfOwnerByIndex[address(arg1)].field_0 > tokenOfOwnerByIndex[address(arg1)].field_0 - 1:
            idx = tokenOfOwnerByIndex[address(arg1)].field_0 - 1
            while tokenOfOwnerByIndex[address(arg1)].field_0 > idx:
                tokenOfOwnerByIndex[address(arg1)][idx].field_0 = 0
                idx = idx + 1
                continue 
        ownerOf[arg3].field_0 = arg2
        stor3[arg3] = tokenOfOwnerByIndex[address(arg2)].field_0
        tokenOfOwnerByIndex[address(arg2)].field_0++
        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)].field_0].field_0 = arg3
        emit Transfer(arg1, arg2, arg3);
        if ext_code.size(arg2) > 0:
            require ext_code.size(arg2)
            call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function rootOwnerOf(uint256 arg1) {
    require ownerOf[arg1].field_0
    mem[0] = arg1
    mem[32] = 1
    if ownerOf[arg1].field_256 <= 0:
        if this.address == ownerOf[arg1].field_0:
            idx = ownerOf[sha3(mem[0 len 64])].field_0 > 0
            s = ownerOf[sha3(mem[0 len 64])].field_0
            t = ownerOf[arg1].field_0
            while idx:
                require ownerOf[s].field_0
                mem[0] = s
                mem[32] = 1
                if ownerOf[s].field_256 <= 0:
                    if this.address == ownerOf[s].field_0:
                        idx = 0
                        s = ownerOf[s].field_256
                        t = ownerOf[s].field_0
                        continue 
                    staticcall ownerOf[s].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 0 or Mask(224, 32, this.address) >> 32, uint32(this.address), ownerOf[s].field_256
                    if not ext_call.success:
                        return (ownerOf[s].field_0 or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                    if bool(ext_call.success) != 1:
                        return (ownerOf[s].field_0 or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                        return (ownerOf[s].field_0 or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                else:
                    if this.address == ownerOf[s].field_0:
                        idx = 1
                        s = ownerOf[s].field_256 - 1
                        t = ownerOf[s].field_0
                        continue 
                    staticcall ownerOf[s].field_0.0x43a61a8e with:
                            gas gas_remaining wei
                           args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                    if not ext_call.success:
                        staticcall ownerOf[s].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                        if bool(ext_call.success) != 1:
                            return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                    else:
                        if bool(ext_call.success) != 1:
                            staticcall ownerOf[s].field_0.0x6352211e with:
                                    gas gas_remaining wei
                                   args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                            require ext_call.success
                            require ext_call.success
                            staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                            if bool(ext_call.success) != 1:
                                return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                return ext_call.return_data[0]
            return 3446934965, 0, address(t)
        if ownerOf[arg1].field_256 <= 0:
            staticcall ownerOf[arg1].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args this.address, arg1
            if not ext_call.success:
                return 3446934965, 0, ownerOf[arg1].field_0
            if bool(ext_call.success) != 1:
                return 3446934965, 0, ownerOf[arg1].field_0
            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                return 3446934965, 0, ownerOf[arg1].field_0
        else:
            staticcall ownerOf[arg1].field_0.0x43a61a8e with:
                    gas gas_remaining wei
                   args ownerOf[arg1].field_288, ownerOf[arg1].field_256
            if not ext_call.success:
                staticcall ownerOf[arg1].field_0.0x6352211e with:
                        gas gas_remaining wei
                       args ownerOf[arg1].field_288, ownerOf[arg1].field_256
                require ext_call.success
                require ext_call.success
                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256
                if bool(ext_call.success) != 1:
                    return 3446934965, 0, address(ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                    return 3446934965, 0, address(ext_call.return_data[0])
            else:
                if bool(ext_call.success) != 1:
                    staticcall ownerOf[arg1].field_0.0x6352211e with:
                            gas gas_remaining wei
                           args ownerOf[arg1].field_288, ownerOf[arg1].field_256
                    require ext_call.success
                    require ext_call.success
                    staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256
                    if bool(ext_call.success) != 1:
                        return 3446934965, 0, address(ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                        return 3446934965, 0, address(ext_call.return_data[0])
                else:
                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                        staticcall ownerOf[arg1].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_288, ownerOf[arg1].field_256
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256
                        if bool(ext_call.success) != 1:
                            return 3446934965, 0, address(ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            return 3446934965, 0, address(ext_call.return_data[0])
    else:
        if this.address == ownerOf[arg1].field_0:
            idx = ownerOf[sha3(mem[0 len 64])].field_0 > 0
            s = ownerOf[sha3(mem[0 len 64])].field_0 - 1
            t = ownerOf[arg1].field_0
            while idx:
                require ownerOf[s].field_0
                mem[0] = s
                mem[32] = 1
                if ownerOf[s].field_256 <= 0:
                    if this.address == ownerOf[s].field_0:
                        idx = 0
                        s = ownerOf[s].field_256
                        t = ownerOf[s].field_0
                        continue 
                    staticcall ownerOf[s].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args 0 or Mask(224, 32, this.address) >> 32, uint32(this.address), ownerOf[s].field_256
                    if not ext_call.success:
                        return (ownerOf[s].field_0 or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                    if bool(ext_call.success) != 1:
                        return (ownerOf[s].field_0 or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                        return (ownerOf[s].field_0 or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                else:
                    if this.address == ownerOf[s].field_0:
                        idx = 1
                        s = ownerOf[s].field_256 - 1
                        t = ownerOf[s].field_0
                        continue 
                    staticcall ownerOf[s].field_0.0x43a61a8e with:
                            gas gas_remaining wei
                           args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                    if not ext_call.success:
                        staticcall ownerOf[s].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                        if bool(ext_call.success) != 1:
                            return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                    else:
                        if bool(ext_call.success) != 1:
                            staticcall ownerOf[s].field_0.0x6352211e with:
                                    gas gas_remaining wei
                                   args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                            require ext_call.success
                            require ext_call.success
                            staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                            if bool(ext_call.success) != 1:
                                return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    return (address(ext_call.return_data[0]) or 0xcd740db500000000000000000000000000000000000000000000000000000000)
                return ext_call.return_data[0]
            return 3446934965, 0, address(t)
        if ownerOf[arg1].field_256 <= 0:
            staticcall ownerOf[arg1].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args this.address, arg1
            if not ext_call.success:
                return 3446934965, 0, ownerOf[arg1].field_0
            if bool(ext_call.success) != 1:
                return 3446934965, 0, ownerOf[arg1].field_0
            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                return 3446934965, 0, ownerOf[arg1].field_0
        else:
            staticcall ownerOf[arg1].field_0.0x43a61a8e with:
                    gas gas_remaining wei
                   args (ownerOf[arg1].field_256 - 1)
            if not ext_call.success:
                staticcall ownerOf[arg1].field_0.0x6352211e with:
                        gas gas_remaining wei
                       args (ownerOf[arg1].field_256 - 1)
                require ext_call.success
                require ext_call.success
                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256 - 1
                if bool(ext_call.success) != 1:
                    return 3446934965, 0, address(ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                    return 3446934965, 0, address(ext_call.return_data[0])
            else:
                if bool(ext_call.success) != 1:
                    staticcall ownerOf[arg1].field_0.0x6352211e with:
                            gas gas_remaining wei
                           args (ownerOf[arg1].field_256 - 1)
                    require ext_call.success
                    require ext_call.success
                    staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                            gas gas_remaining wei
                           args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256 - 1
                    if bool(ext_call.success) != 1:
                        return 3446934965, 0, address(ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                        return 3446934965, 0, address(ext_call.return_data[0])
                else:
                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                        staticcall ownerOf[arg1].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args (ownerOf[arg1].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256 - 1
                        if bool(ext_call.success) != 1:
                            return 3446934965, 0, address(ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            return 3446934965, 0, address(ext_call.return_data[0])
    return ext_call.return_data[0]
}

function getApproved(uint256 arg1) {
    require ownerOf[arg1].field_0
    mem[0] = arg1
    mem[32] = 1
    if ownerOf[arg1].field_256 <= 0:
        if ownerOf[arg1].field_0 != this.address:
            if ownerOf[arg1].field_256 > 0:
                staticcall ownerOf[arg1].field_0.0x43a61a8e with:
                        gas gas_remaining wei
                       args ownerOf[arg1].field_288, ownerOf[arg1].field_256
                if not ext_call.success:
                    if bool(ext_call.success) != 1:
                        staticcall ownerOf[arg1].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_288, ownerOf[arg1].field_256
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256
                        if bool(ext_call.success) != 1:
                            return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                return stor4[address(ext_call.return_data[0])][arg1]
                    else:
                        staticcall ownerOf[arg1].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_288, ownerOf[arg1].field_256
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256
                        if bool(ext_call.success) != 1:
                            return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                return stor4[address(ext_call.return_data[0])][arg1]
                else:
                    if bool(ext_call.success) != 1:
                        staticcall ownerOf[arg1].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_288, ownerOf[arg1].field_256
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256
                        if bool(ext_call.success) != 1:
                            return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                return stor4[address(ext_call.return_data[0])][arg1]
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            staticcall ownerOf[arg1].field_0.0x6352211e with:
                                    gas gas_remaining wei
                                   args ownerOf[arg1].field_288, ownerOf[arg1].field_256
                            require ext_call.success
                            require ext_call.success
                            staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256
                            if bool(ext_call.success) != 1:
                                return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            return stor4[address(ext_call.return_data[0])][arg1]
            else:
                staticcall ownerOf[arg1].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                if not ext_call.success:
                    if bool(ext_call.success) != 1:
                        return stor4[stor1[arg1].field_0][arg1]
                    else:
                        return stor4[stor1[arg1].field_0][arg1]
                else:
                    if bool(ext_call.success) != 1:
                        return stor4[stor1[arg1].field_0][arg1]
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            return stor4[stor1[arg1].field_0][arg1]
                        else:
                            return stor4[address(ext_call.return_data[0])][arg1]
        else:
            idx = ownerOf[sha3(mem[0 len 64])].field_0 > 0
            s = ownerOf[sha3(mem[0 len 64])].field_0
            t = ownerOf[arg1].field_0
            while idx:
                require ownerOf[s].field_0
                mem[0] = s
                mem[32] = 1
                if ownerOf[s].field_256 <= 0:
                    if ownerOf[s].field_0 != this.address:
                        staticcall ownerOf[s].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, this.address) >> 32, uint32(this.address), ownerOf[s].field_256
                        if not ext_call.success:
                            if bool(ext_call.success) != 1:
                                return stor4[stor1[s].field_0][arg1]
                            else:
                                return stor4[stor1[s].field_0][arg1]
                        else:
                            if bool(ext_call.success) != 1:
                                return stor4[stor1[s].field_0][arg1]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    return stor4[stor1[s].field_0][arg1]
                                else:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                    else:
                        idx = 0
                        s = ownerOf[s].field_256
                        t = ownerOf[s].field_0
                        continue 
                else:
                    if ownerOf[s].field_0 != this.address:
                        staticcall ownerOf[s].field_0.0x43a61a8e with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                        if not ext_call.success:
                            if bool(ext_call.success) != 1:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                                    else:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                                    else:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            if bool(ext_call.success) != 1:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                                    else:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    staticcall ownerOf[s].field_0.0x6352211e with:
                                            gas gas_remaining wei
                                           args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                    require ext_call.success
                                    require ext_call.success
                                    staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                    if bool(ext_call.success) != 1:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                                    else:
                                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                            return stor4[address(ext_call.return_data[0])][arg1]
                                        else:
                                            return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                    else:
                        idx = 1
                        s = ownerOf[s].field_256 - 1
                        t = ownerOf[s].field_0
                        continue 
            return stor4[address(t)][arg1]
    else:
        if ownerOf[arg1].field_0 != this.address:
            if ownerOf[arg1].field_256 > 0:
                staticcall ownerOf[arg1].field_0.0x43a61a8e with:
                        gas gas_remaining wei
                       args (ownerOf[arg1].field_256 - 1)
                if not ext_call.success:
                    if bool(ext_call.success) != 1:
                        staticcall ownerOf[arg1].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args (ownerOf[arg1].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256 - 1
                        if bool(ext_call.success) != 1:
                            return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                return stor4[address(ext_call.return_data[0])][arg1]
                    else:
                        staticcall ownerOf[arg1].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args (ownerOf[arg1].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256 - 1
                        if bool(ext_call.success) != 1:
                            return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                return stor4[address(ext_call.return_data[0])][arg1]
                else:
                    if bool(ext_call.success) != 1:
                        staticcall ownerOf[arg1].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args (ownerOf[arg1].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256 - 1
                        if bool(ext_call.success) != 1:
                            return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                return stor4[address(ext_call.return_data[0])][arg1]
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            staticcall ownerOf[arg1].field_0.0x6352211e with:
                                    gas gas_remaining wei
                                   args (ownerOf[arg1].field_256 - 1)
                            require ext_call.success
                            require ext_call.success
                            staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args ownerOf[arg1].field_0, ownerOf[arg1].field_0, ownerOf[arg1].field_256 - 1
                            if bool(ext_call.success) != 1:
                                return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            return stor4[address(ext_call.return_data[0])][arg1]
            else:
                staticcall ownerOf[arg1].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg1
                if not ext_call.success:
                    if bool(ext_call.success) != 1:
                        return stor4[stor1[arg1].field_0][arg1]
                    else:
                        return stor4[stor1[arg1].field_0][arg1]
                else:
                    if bool(ext_call.success) != 1:
                        return stor4[stor1[arg1].field_0][arg1]
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            return stor4[stor1[arg1].field_0][arg1]
                        else:
                            return stor4[address(ext_call.return_data[0])][arg1]
        else:
            idx = ownerOf[sha3(mem[0 len 64])].field_0 > 0
            s = ownerOf[sha3(mem[0 len 64])].field_0 - 1
            t = ownerOf[arg1].field_0
            while idx:
                require ownerOf[s].field_0
                mem[0] = s
                mem[32] = 1
                if ownerOf[s].field_256 <= 0:
                    if ownerOf[s].field_0 != this.address:
                        staticcall ownerOf[s].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, this.address) >> 32, uint32(this.address), ownerOf[s].field_256
                        if not ext_call.success:
                            if bool(ext_call.success) != 1:
                                return stor4[stor1[s].field_0][arg1]
                            else:
                                return stor4[stor1[s].field_0][arg1]
                        else:
                            if bool(ext_call.success) != 1:
                                return stor4[stor1[s].field_0][arg1]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    return stor4[stor1[s].field_0][arg1]
                                else:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                    else:
                        idx = 0
                        s = ownerOf[s].field_256
                        t = ownerOf[s].field_0
                        continue 
                else:
                    if ownerOf[s].field_0 != this.address:
                        staticcall ownerOf[s].field_0.0x43a61a8e with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                        if not ext_call.success:
                            if bool(ext_call.success) != 1:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                                    else:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                                    else:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                        else:
                            if bool(ext_call.success) != 1:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                                    else:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    staticcall ownerOf[s].field_0.0x6352211e with:
                                            gas gas_remaining wei
                                           args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                    require ext_call.success
                                    require ext_call.success
                                    staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                    if bool(ext_call.success) != 1:
                                        return stor4[address(ext_call.return_data[0])][arg1]
                                    else:
                                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                            return stor4[address(ext_call.return_data[0])][arg1]
                                        else:
                                            return stor4[address(ext_call.return_data[0])][arg1]
                                else:
                                    return stor4[address(ext_call.return_data[0])][arg1]
                    else:
                        idx = 1
                        s = ownerOf[s].field_256 - 1
                        t = ownerOf[s].field_0
                        continue 
            return stor4[address(t)][arg1]
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2].field_0
    require ownerOf[arg2].field_0
    mem[0] = arg2
    mem[32] = 1
    if ownerOf[arg2].field_256 <= 0:
        if ownerOf[arg2].field_0 != this.address:
            if ownerOf[arg2].field_256 > 0:
                staticcall ownerOf[arg2].field_0.0x43a61a8e with:
                        gas gas_remaining wei
                       args ownerOf[arg2].field_288, ownerOf[arg2].field_256
                if not ext_call.success:
                    if bool(ext_call.success) != 1:
                        staticcall ownerOf[arg2].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_288, ownerOf[arg2].field_256
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_0, ownerOf[arg2].field_0, ownerOf[arg2].field_256
                        if bool(ext_call.success) != 1:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                    else:
                        staticcall ownerOf[arg2].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_288, ownerOf[arg2].field_256
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_0, ownerOf[arg2].field_0, ownerOf[arg2].field_256
                        if bool(ext_call.success) != 1:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                else:
                    if bool(ext_call.success) != 1:
                        staticcall ownerOf[arg2].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_288, ownerOf[arg2].field_256
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_0, ownerOf[arg2].field_0, ownerOf[arg2].field_256
                        if bool(ext_call.success) != 1:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            staticcall ownerOf[arg2].field_0.0x6352211e with:
                                    gas gas_remaining wei
                                   args ownerOf[arg2].field_288, ownerOf[arg2].field_256
                            require ext_call.success
                            require ext_call.success
                            staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args ownerOf[arg2].field_0, ownerOf[arg2].field_0, ownerOf[arg2].field_256
                            if bool(ext_call.success) != 1:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
            else:
                staticcall ownerOf[arg2].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg2
                if not ext_call.success:
                    if bool(ext_call.success) != 1:
                        if msg.sender == ownerOf[arg2].field_0:
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                        else:
                            require stor7[stor1[arg2].field_0][msg.sender]
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                    else:
                        if msg.sender == ownerOf[arg2].field_0:
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                        else:
                            require stor7[stor1[arg2].field_0][msg.sender]
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                else:
                    if bool(ext_call.success) != 1:
                        if msg.sender == ownerOf[arg2].field_0:
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                        else:
                            require stor7[stor1[arg2].field_0][msg.sender]
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            if msg.sender == ownerOf[arg2].field_0:
                                stor4[stor1[arg2].field_0][arg2] = arg1
                                emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                            else:
                                require stor7[stor1[arg2].field_0][msg.sender]
                                stor4[stor1[arg2].field_0][arg2] = arg1
                                emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                        else:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
        else:
            idx = ownerOf[sha3(mem[0 len 64])].field_0 > 0
            s = ownerOf[sha3(mem[0 len 64])].field_0
            t = ownerOf[arg2].field_0
            while idx:
                require ownerOf[s].field_0
                mem[0] = s
                mem[32] = 1
                if ownerOf[s].field_256 <= 0:
                    if ownerOf[s].field_0 != this.address:
                        staticcall ownerOf[s].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, this.address) >> 32, uint32(this.address), ownerOf[s].field_256
                        if not ext_call.success:
                            if bool(ext_call.success) != 1:
                                if msg.sender == ownerOf[s].field_0:
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                                else:
                                    require stor7[stor1[s].field_0][msg.sender]
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                            else:
                                if msg.sender == ownerOf[s].field_0:
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                                else:
                                    require stor7[stor1[s].field_0][msg.sender]
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                        else:
                            if bool(ext_call.success) != 1:
                                if msg.sender == ownerOf[s].field_0:
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                                else:
                                    require stor7[stor1[s].field_0][msg.sender]
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    if msg.sender == ownerOf[s].field_0:
                                        stor4[stor1[s].field_0][arg2] = arg1
                                        emit Approval(ownerOf[s].field_0, arg1, arg2);
                                    else:
                                        require stor7[stor1[s].field_0][msg.sender]
                                        stor4[stor1[s].field_0][arg2] = arg1
                                        emit Approval(ownerOf[s].field_0, arg1, arg2);
                                else:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                    else:
                        idx = 0
                        s = ownerOf[s].field_256
                        t = ownerOf[s].field_0
                        continue 
                else:
                    if ownerOf[s].field_0 != this.address:
                        staticcall ownerOf[s].field_0.0x43a61a8e with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                        if not ext_call.success:
                            if bool(ext_call.success) != 1:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if bool(ext_call.success) != 1:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    staticcall ownerOf[s].field_0.0x6352211e with:
                                            gas gas_remaining wei
                                           args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                    require ext_call.success
                                    require ext_call.success
                                    staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                    if bool(ext_call.success) != 1:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                            if msg.sender == address(ext_call.return_data[0]):
                                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                            else:
                                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            if msg.sender == address(ext_call.return_data[0]):
                                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                            else:
                                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                    else:
                        idx = 1
                        s = ownerOf[s].field_256 - 1
                        t = ownerOf[s].field_0
                        continue 
            if msg.sender == address(t):
                stor4[address(t)][arg2] = arg1
                emit Approval(address(t), arg1, arg2);
            else:
                require stor7[address(t)][msg.sender]
                stor4[address(t)][arg2] = arg1
                emit Approval(address(t), arg1, arg2);
    else:
        if ownerOf[arg2].field_0 != this.address:
            if ownerOf[arg2].field_256 > 0:
                staticcall ownerOf[arg2].field_0.0x43a61a8e with:
                        gas gas_remaining wei
                       args (ownerOf[arg2].field_256 - 1)
                if not ext_call.success:
                    if bool(ext_call.success) != 1:
                        staticcall ownerOf[arg2].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args (ownerOf[arg2].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_0, ownerOf[arg2].field_0, ownerOf[arg2].field_256 - 1
                        if bool(ext_call.success) != 1:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                    else:
                        staticcall ownerOf[arg2].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args (ownerOf[arg2].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_0, ownerOf[arg2].field_0, ownerOf[arg2].field_256 - 1
                        if bool(ext_call.success) != 1:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                else:
                    if bool(ext_call.success) != 1:
                        staticcall ownerOf[arg2].field_0.0x6352211e with:
                                gas gas_remaining wei
                               args (ownerOf[arg2].field_256 - 1)
                        require ext_call.success
                        require ext_call.success
                        staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args ownerOf[arg2].field_0, ownerOf[arg2].field_0, ownerOf[arg2].field_256 - 1
                        if bool(ext_call.success) != 1:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            staticcall ownerOf[arg2].field_0.0x6352211e with:
                                    gas gas_remaining wei
                                   args (ownerOf[arg2].field_256 - 1)
                            require ext_call.success
                            require ext_call.success
                            staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args ownerOf[arg2].field_0, ownerOf[arg2].field_0, ownerOf[arg2].field_256 - 1
                            if bool(ext_call.success) != 1:
                                if msg.sender == address(ext_call.return_data[0]):
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    require stor7[address(ext_call.return_data[0])][msg.sender]
                                    stor4[address(ext_call.return_data[0])][arg2] = arg1
                                    emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
            else:
                staticcall ownerOf[arg2].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args this.address, arg2
                if not ext_call.success:
                    if bool(ext_call.success) != 1:
                        if msg.sender == ownerOf[arg2].field_0:
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                        else:
                            require stor7[stor1[arg2].field_0][msg.sender]
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                    else:
                        if msg.sender == ownerOf[arg2].field_0:
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                        else:
                            require stor7[stor1[arg2].field_0][msg.sender]
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                else:
                    if bool(ext_call.success) != 1:
                        if msg.sender == ownerOf[arg2].field_0:
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                        else:
                            require stor7[stor1[arg2].field_0][msg.sender]
                            stor4[stor1[arg2].field_0][arg2] = arg1
                            emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                    else:
                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                            if msg.sender == ownerOf[arg2].field_0:
                                stor4[stor1[arg2].field_0][arg2] = arg1
                                emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                            else:
                                require stor7[stor1[arg2].field_0][msg.sender]
                                stor4[stor1[arg2].field_0][arg2] = arg1
                                emit Approval(ownerOf[arg2].field_0, arg1, arg2);
                        else:
                            if msg.sender == address(ext_call.return_data[0]):
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
        else:
            idx = ownerOf[sha3(mem[0 len 64])].field_0 > 0
            s = ownerOf[sha3(mem[0 len 64])].field_0 - 1
            t = ownerOf[arg2].field_0
            while idx:
                require ownerOf[s].field_0
                mem[0] = s
                mem[32] = 1
                if ownerOf[s].field_256 <= 0:
                    if ownerOf[s].field_0 != this.address:
                        staticcall ownerOf[s].field_0.rootOwnerOfChild(address arg1, uint256 arg2) with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, this.address) >> 32, uint32(this.address), ownerOf[s].field_256
                        if not ext_call.success:
                            if bool(ext_call.success) != 1:
                                if msg.sender == ownerOf[s].field_0:
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                                else:
                                    require stor7[stor1[s].field_0][msg.sender]
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                            else:
                                if msg.sender == ownerOf[s].field_0:
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                                else:
                                    require stor7[stor1[s].field_0][msg.sender]
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                        else:
                            if bool(ext_call.success) != 1:
                                if msg.sender == ownerOf[s].field_0:
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                                else:
                                    require stor7[stor1[s].field_0][msg.sender]
                                    stor4[stor1[s].field_0][arg2] = arg1
                                    emit Approval(ownerOf[s].field_0, arg1, arg2);
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    if msg.sender == ownerOf[s].field_0:
                                        stor4[stor1[s].field_0][arg2] = arg1
                                        emit Approval(ownerOf[s].field_0, arg1, arg2);
                                    else:
                                        require stor7[stor1[s].field_0][msg.sender]
                                        stor4[stor1[s].field_0][arg2] = arg1
                                        emit Approval(ownerOf[s].field_0, arg1, arg2);
                                else:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                    else:
                        idx = 0
                        s = ownerOf[s].field_256
                        t = ownerOf[s].field_0
                        continue 
                else:
                    if ownerOf[s].field_0 != this.address:
                        staticcall ownerOf[s].field_0.0x43a61a8e with:
                                gas gas_remaining wei
                               args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                        if not ext_call.success:
                            if bool(ext_call.success) != 1:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                        else:
                            if bool(ext_call.success) != 1:
                                staticcall ownerOf[s].field_0.0x6352211e with:
                                        gas gas_remaining wei
                                       args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                require ext_call.success
                                require ext_call.success
                                staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                if bool(ext_call.success) != 1:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                            else:
                                if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                    staticcall ownerOf[s].field_0.0x6352211e with:
                                            gas gas_remaining wei
                                           args 0 or Mask(224, 32, ownerOf[s].field_256 - 1) >> 32, uint32(ownerOf[s].field_256 - 1)
                                    require ext_call.success
                                    require ext_call.success
                                    staticcall ext_call.return_data[0].rootOwnerOfChild(address arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 0 or ownerOf[s].field_0, ownerOf[s].field_0, ownerOf[s].field_256 - 1
                                    if bool(ext_call.success) != 1:
                                        if msg.sender == address(ext_call.return_data[0]):
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            require stor7[address(ext_call.return_data[0])][msg.sender]
                                            stor4[address(ext_call.return_data[0])][arg2] = arg1
                                            emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        if Mask(32, 224, ext_call.return_data[0]) >> 224 != 3446934965:
                                            if msg.sender == address(ext_call.return_data[0]):
                                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                            else:
                                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                        else:
                                            if msg.sender == address(ext_call.return_data[0]):
                                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                            else:
                                                require stor7[address(ext_call.return_data[0])][msg.sender]
                                                stor4[address(ext_call.return_data[0])][arg2] = arg1
                                                emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                else:
                                    if msg.sender == address(ext_call.return_data[0]):
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                                    else:
                                        require stor7[address(ext_call.return_data[0])][msg.sender]
                                        stor4[address(ext_call.return_data[0])][arg2] = arg1
                                        emit Approval(address(ext_call.return_data[0]), arg1, arg2);
                    else:
                        idx = 1
                        s = ownerOf[s].field_256 - 1
                        t = ownerOf[s].field_0
                        continue 
            if msg.sender == address(t):
                stor4[address(t)][arg2] = arg1
                emit Approval(address(t), arg1, arg2);
            else:
                require stor7[address(t)][msg.sender]
                stor4[address(t)][arg2] = arg1
                emit Approval(address(t), arg1, arg2);
}



}

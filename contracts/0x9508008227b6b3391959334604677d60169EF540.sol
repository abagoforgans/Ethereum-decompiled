contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
uint256 stor6;
uint8 stor7; offset 160
uint128 stor7; offset 176
uint128 stor7; offset 168
address stor7;
uint256 stor8;
uint256 stor9;
mapping of uint256 stor11;
array of uint256 stor16;

function _fallback() payable {
    mem[128] = 'e055fe5eb1d95ea4e42b24d1038db13c'
    mem[160] = '24667c494ce721375bdd827d34c59059'
    stor0.length = 129
    s = 0
    idx = 128
    while 192 > idx:
        stor0[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor0.length + 31 / 32 > idx:
        stor0[idx] = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 10
    stor2.length.field_8 = 'CryptoCats' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    address(stor7.field_0) = 0xa185b9e63fb83a5a1a13a4460b8e8605672b6020
    Mask(80, 0, stor7.field_176) = 0
    stor8 = 0
    stor1 = msg.sender
    stor6 = 189
    stor8 = stor6
    bool(stor3.length) = 0
    stor3.length.field_1 = 10
    stor3.length.field_8 = 'CRYPTOCATS' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'CCAT' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    uint8(stor7.field_160) = 2
    stor9 = 189
    Mask(88, 0, stor7.field_168) = 0
    stor16.length++
    if not stor16.length > stor16.length + 1:
        stor16[stor16.length] = 12
        stor16.length++
    else:
        idx = stor16.length + 1
        while stor16.length > idx:
            stor16[idx] = 0
            idx = idx + 1
            continue 
        stor16[stor16.length] = 12
        stor16.length++
        if not stor16.length <= stor16.length + 1:
            idx = stor16.length + 1
            while stor16.length > idx:
                stor16[idx] = 0
                idx = idx + 1
                continue 
    stor16[stor16.length] = stor6
    stor11[0] = 0
    stor11[1] = 0
    return code.data[1041 len 12006]
}



// =====================  Runtime code  =====================


array of uint256 imageHash;
address contractOwner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _totalSupply;
uint8 contractVersion; offset 160
uint8 stor7; offset 168
uint8 stor7; offset 176
uint128 stor7; offset 168
address previousContractAddress;
uint256 catsRemainingToAssign;
uint256 currentReleaseCeiling;
mapping of address catOwner;
mapping of uint256 catReleaseToPrice;
mapping of uint256 catIndexToPriceException;
mapping of uint256 balanceOf;
array of struct attributeType;
array of uint256 catAttributes;
array of uint256 releaseCatIndexUpperBound;
mapping of struct catsForSale;
mapping of uint256 pendingWithdrawals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function catIndexToAddress(uint256 arg1) {
    return catOwner[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function releaseCatIndexUpperBound(uint256 arg1) {
    require arg1 < releaseCatIndexUpperBound.length
    return releaseCatIndexUpperBound[arg1]
}

function getContractOwner() {
    return contractOwner
}

function imageHash() {
    return imageHash[0 len imageHash.length]
}

function attributeType(uint256 arg1) {
    return attributeType[arg1][0 len attributeType[arg1].length].field_0
}

function standard() {
    return standard[0 len standard.length]
}

function totalSupplyIsLocked() {
    return bool(uint8(stor7.field_168))
}

function balanceOf(address arg1) {
    require balanceOf[address(arg1)]
    return balanceOf[address(arg1)]
}

function catReleaseToPrice(uint32 arg1) {
    return catReleaseToPrice[arg1]
}

function previousContractAddress() {
    return previousContractAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function catsForSale(uint256 arg1) {
    return bool(catsForSale[arg1].field_0), 
           catsForSale[arg1].field_256,
           catsForSale[arg1].field_512,
           catsForSale[arg1].field_768,
           catsForSale[arg1].field_1024
}

function allCatsAssigned() {
    return bool(uint8(stor7.field_176))
}

function contractVersion() {
    return contractVersion
}

function currentReleaseCeiling() {
    return currentReleaseCeiling
}

function getCatOwner(uint256 arg1) {
    require catOwner[arg1]
    return catOwner[arg1]
}

function catIndexToPriceException(uint256 arg1) {
    return catIndexToPriceException[arg1]
}

function catsRemainingToAssign() {
    return catsRemainingToAssign
}

function pendingWithdrawals(address arg1) {
    return pendingWithdrawals[arg1]
}

function catAttributes(uint256 arg1, uint256 arg2) {
    return catAttributes[arg1][arg2][0 len catAttributes[arg1][arg2].length]
}

function _fallback() payable {
    revert
}

function lockTotalSupply() {
    require msg.sender == contractOwner
    Mask(88, 0, stor7.field_168) = 1
}

function setCatPrice(uint256 arg1, uint256 arg2) {
    require msg.sender == contractOwner
    require arg1 < _totalSupply
    require arg2 > 0
    catIndexToPriceException[arg1] = arg2
}

function setAttributeType(uint256 arg1, string arg2) {
    require msg.sender == contractOwner
    require arg1 >= 0
    require arg1 < 6
    attributeType[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function withdraw() {
    pendingWithdrawals[address(msg.sender)] = 0
    call msg.sender with:
       value pendingWithdrawals[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function updateCatReleasePrice(uint32 arg1, uint256 arg2) {
    require msg.sender == contractOwner
    require arg1 <= releaseCatIndexUpperBound.length
    catReleaseToPrice[arg1 << 224] = arg2
    emit UpdateReleasePrice(arg1 << 224, arg2);
}

function getCatRelease(uint256 arg1) {
    idx = 0
    while uint32(idx) < releaseCatIndexUpperBound.length:
        mem[0] = 16
        if releaseCatIndexUpperBound[uint32(idx)] <= arg1:
            idx = idx + 1
            continue 
        return uint32(idx)
    return 0
}

function transfer(address arg1, uint256 arg2) {
    if arg2 >= _totalSupply:
        return 0
    if catOwner[arg2] != msg.sender:
        return 0
    if balanceOf[address(msg.sender)] <= 0:
        return 0
    balanceOf[address(msg.sender)]--
    catOwner[arg2] = arg1
    balanceOf[address(arg1)]++
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function catNoLongerForSale(uint256 arg1) {
    require catOwner[arg1] == msg.sender
    require arg1 < _totalSupply
    catsForSale[arg1].field_0 = 0
    catsForSale[arg1].field_256 = arg1
    catsForSale[arg1].field_512 = msg.sender
    catsForSale[arg1].field_768 = 0
    catsForSale[arg1].field_1024 = 0
    catsForSale[arg1].field_1280 = 0
    emit CatNoLongerForSale(arg1);
}

function offerCatForSaleToAddress(uint256 arg1, uint256 arg2, address arg3) {
    require catOwner[arg1] == msg.sender
    require arg1 < _totalSupply
    catsForSale[arg1].field_0 = 1
    catsForSale[arg1].field_256 = arg1
    catsForSale[arg1].field_512 = msg.sender
    catsForSale[arg1].field_768 = arg2
    catsForSale[arg1].field_1024 = arg3
    emit CatOffered(arg2, arg1, arg3);
}

function offerCatForSale(uint256 arg1, uint256 arg2) {
    require catOwner[arg1] == msg.sender
    require arg1 < _totalSupply
    catsForSale[arg1].field_0 = 1
    catsForSale[arg1].field_256 = arg1
    catsForSale[arg1].field_512 = msg.sender
    catsForSale[arg1].field_768 = arg2
    catsForSale[arg1].field_1024 = 0
    catsForSale[arg1].field_1280 = 0
    emit CatOffered(arg2, arg1, 0);
}

function getCatPrice(uint256 arg1) {
    require arg1 < _totalSupply
    if catIndexToPriceException[arg1]:
        return catIndexToPriceException[arg1]
    idx = 0
    while uint32(idx) < releaseCatIndexUpperBound.length:
        mem[0] = 16
        if releaseCatIndexUpperBound[uint32(idx)] <= arg1:
            idx = idx + 1
            continue 
        return catReleaseToPrice[idx << 224]
    return catReleaseToPrice[0]
}

function setCatAttributeValue(uint256 arg1, uint256 arg2, string arg3) {
    require arg1 < _totalSupply
    require catOwner[arg1] == msg.sender
    require arg2 >= 0
    require arg2 < 6
    idx = ceil32(arg3.length) + 192
    s = 0
    while ceil32(arg3.length) + attributeType[arg2].length + 160 > idx:
        mem[idx + 32] = attributeType[arg2][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require attributeType[arg2].length
    require arg2 < 6
    catAttributes[arg1][arg2][] = Array(len=arg3.length, data=arg3[all])
}

function buyCat(uint256 arg1) payable {
    require arg1 < _totalSupply
    require catsForSale[arg1].field_0
    require msg.value >= catsForSale[arg1].field_768
    require catsForSale[arg1].field_512 == catOwner[arg1]
    if catsForSale[arg1].field_1024:
        require catsForSale[arg1].field_1024 == msg.sender
    catOwner[arg1] = msg.sender
    balanceOf[stor17[arg1].field_512]--
    balanceOf[address(msg.sender)]++
    emit Transfer(1, catsForSale[arg1].field_512, msg.sender);
    emit CatNoLongerForSale(arg1);
    pendingWithdrawals[stor17[arg1].field_512] += msg.value
    emit CatBought(msg.value, arg1, catsForSale[arg1].field_512, msg.sender);
}

function getCat(uint256 arg1) payable {
    require not uint8(stor7.field_176)
    require catsRemainingToAssign
    require not catOwner[arg1]
    require arg1 < _totalSupply
    require arg1 < currentReleaseCeiling
    require arg1 < _totalSupply
    if catIndexToPriceException[arg1]:
        require catIndexToPriceException[arg1] <= msg.value
    else:
        idx = 0
        while uint32(idx) < releaseCatIndexUpperBound.length:
            mem[0] = 16
            if releaseCatIndexUpperBound[uint32(idx)] <= arg1:
                idx = idx + 1
                continue 
            require catReleaseToPrice[idx << 224] <= msg.value
            catOwner[arg1] = msg.sender
            balanceOf[address(msg.sender)]++
            catsRemainingToAssign--
            emit Assign(arg1, msg.sender);
        require catReleaseToPrice[0] <= msg.value
    catOwner[arg1] = msg.sender
    balanceOf[address(msg.sender)]++
    catsRemainingToAssign--
    emit Assign(arg1, msg.sender);
}

function releaseCats(uint32 arg1, uint256 arg2, uint256 arg3, string arg4) {
    require msg.sender == contractOwner
    require not uint8(stor7.field_168)
    require arg2 > 0
    currentReleaseCeiling += arg2
    _totalSupply += arg2
    catsRemainingToAssign += arg2
    imageHash[] = Array(len=arg4.length, data=arg4[all])
    catReleaseToPrice[arg1 << 224] = arg3
    releaseCatIndexUpperBound.length++
    if not releaseCatIndexUpperBound.length > releaseCatIndexUpperBound.length + 1:
        releaseCatIndexUpperBound[releaseCatIndexUpperBound.length] = _totalSupply
        var26001 = ceil32(arg4.length)
    else:
        idx = releaseCatIndexUpperBound.length + 1
        while releaseCatIndexUpperBound.length > idx:
            releaseCatIndexUpperBound[idx] = 0
            idx = idx + 1
            continue 
        releaseCatIndexUpperBound[releaseCatIndexUpperBound.length] = _totalSupply
    emit ReleaseUpdate(_totalSupply, arg3, Array(len=arg4.length, data=arg4[all]), arg2);
    return _totalSupply
}

function migrateCatOwnersFromPreviousContract(uint256 arg1, uint256 arg2) {
    require msg.sender == contractOwner
    s = 0
    t = 0
    idx = arg1
    while idx <= arg2:
        mem[128] = 0
        mem[100] = idx
        require ext_code.size(previousContractAddress)
        call previousContractAddress.0x210fe93b with:
             gas gas_remaining - 710 wei
            args idx
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if not address(ext_call.return_data[0]):
            s = s
            t = ext_call.return_data[0]
            idx = idx + 1
            continue 
        catOwner[idx] = address(ext_call.return_data[0])
        mem[128] = 0
        mem[100] = address(ext_call.return_data[0])
        require ext_code.size(previousContractAddress)
        call previousContractAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        mem[0] = address(ext_call.return_data[0])
        mem[32] = 13
        balanceOf[address(ext_call.return_data[0])] = ext_call.return_data[0]
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        idx = idx + 1
        continue 
    require ext_code.size(previousContractAddress)
    call previousContractAddress.0xea341309 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    catsRemainingToAssign = ext_call.return_data[0]
}



}

contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


array of uint256 imageHash;
address contractOwner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _totalSupply;
uint8 allCatsAssigned;
uint256 catsRemainingToAssign;
mapping of address catOwner;
mapping of uint256 balanceOf;
mapping of struct sub_3cbb8613;

function name() {
    return name[0 len name.length]
}

function getCatDetail(uint256 arg1) {
    mem[160] = sub_3cbb8613[arg1][1].field_0
    idx = 160
    s = 0
    while sub_3cbb8613[arg1][1].length + 128 > idx:
        mem[idx + 32] = sub_3cbb8613[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_3cbb8613[arg1].field_0, 
           Array(len=sub_3cbb8613[arg1][1].length, data=mem[160 len sub_3cbb8613[arg1][1].length]),
           bool(sub_3cbb8613[arg1].field_512),
           sub_3cbb8613[arg1].field_512
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

function sub_3cbb8613(?) {
    mem[256] = sub_3cbb8613[arg1][1].field_0
    idx = 256
    s = 0
    while sub_3cbb8613[arg1][1].length + 256 > idx + 32:
        mem[idx + 32] = sub_3cbb8613[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_3cbb8613[arg1].field_0, 
           Array(len=sub_3cbb8613[arg1][1].length, data=mem[256 len sub_3cbb8613[arg1][1].length + (floor32(sub_3cbb8613[arg1][1].length - 1) + -sub_3cbb8613[arg1][1].length + 32 % 32)]),
           bool(sub_3cbb8613[arg1].field_512),
           sub_3cbb8613[arg1].field_512
}

function _totalSupply() {
    return _totalSupply
}

function getContractOwner() {
    return contractOwner
}

function imageHash() {
    return imageHash[0 len imageHash.length]
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    require balanceOf[address(arg1)]
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allCatsAssigned() {
    return bool(allCatsAssigned)
}

function getCatOwner(uint256 arg1) {
    require catOwner[arg1]
    return catOwner[arg1]
}

function catsRemainingToAssign() {
    return catsRemainingToAssign
}

function _fallback() payable {
    revert
}

function allInitialOwnersAssigned() {
    require contractOwner == msg.sender
    allCatsAssigned = 1
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
    sub_3cbb8613[arg2].field_520 = arg1
    balanceOf[address(arg1)]++
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function claimCat(uint256 arg1) {
    require not allCatsAssigned
    require catsRemainingToAssign
    require not catOwner[arg1]
    require arg1 < _totalSupply
    catOwner[arg1] = msg.sender
    balanceOf[address(msg.sender)]++
    catsRemainingToAssign--
    sub_3cbb8613[arg1].field_512 = 1
    sub_3cbb8613[arg1].field_520 = msg.sender
    sub_3cbb8613[arg1].field_768 = 0
    emit Assign(arg1, msg.sender);
}



}

contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;
address stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 7
    stor0.length.field_8 = 'Polaris' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'PLT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor3 = 850000000 * 10^18
    stor4 = 850000000 * 10^18
    stor5 = 0
    stor6 = 0
    stor9 = 0xe9e93e42e89dbd754b22447045ece22d1304c705
    stor10 = 2
    stor11 = block.timestamp + (73 * 3600 * 24 * 3600)
    require not msg.value
    return code.data[600 len 5024]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - TryUnLockCreatorBalance()
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 stor4;
uint256 creatorsLocked;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address creatorsAddress;
uint256 unLockIdx;
uint256 nextUnLockTime;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function creatorsAddress() {
    return creatorsAddress
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function nextUnLockTime() {
    return nextUnLockTime
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function creatorsLocked() {
    return creatorsLocked
}

function unLockIdx() {
    return unLockIdx
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function destruct() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_60716428(?) {
    owner = msg.sender
    balanceOf[stor9] = creatorsLocked
    balanceOf[stor6] = stor4
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function Save() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}

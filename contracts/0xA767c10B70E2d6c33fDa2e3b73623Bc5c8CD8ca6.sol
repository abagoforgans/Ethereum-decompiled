contract main {


// =======================  Init code  ======================


array of uint256 stor0;
mapping of uint256 stor1;
mapping of uint8 stor2;
address stor3;
uint8 stor5;
uint256 stor6;
array of struct stor7;
mapping of uint8 stor8;
uint256 stor9;

function _fallback() payable {
    stor5 = 0
    stor6 = 0
    stor9 = 0
    require not msg.value
    bool(stor0.length) = 0
    stor0.length.field_1 = 15
    stor0.length.field_8 = 'DFINITY Genesis' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = msg.sender
    stor1[0] = 469213710
    if stor3 != msg.sender:
        require bool(stor2[address(msg.sender)]) == 1
    require not stor5
    require 44575302 <= stor1[0]
    stor1[1] += 44575302
    stor1[0] -= 44575302
    if not stor8[1]:
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            idx = stor7.length + 1
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor7[stor7.length].field_0 = 1
        stor7[stor7.length].field_8 = 0
        stor8[1] = 1
        stor9++
    if stor3 != msg.sender:
        require bool(stor2[address(msg.sender)]) == 1
    require not stor5
    require 115986694 <= stor1[0]
    stor1[2] += 115986694
    stor1[0] -= 115986694
    if not stor8[2]:
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            idx = stor7.length + 1
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor7[stor7.length].field_0 = 2
        stor7[stor7.length].field_8 = 0
        stor8[2] = 1
        stor9++
    if stor3 != msg.sender:
        require bool(stor2[address(msg.sender)]) == 1
    require not stor5
    require 308651714 <= stor1[0]
    stor1[3] += 308651714
    stor1[0] -= 308651714
    if not stor8[3]:
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            idx = stor7.length + 1
            while stor7.length > idx:
                stor7[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor7[stor7.length].field_0 = 3
        stor7[stor7.length].field_8 = 0
        stor8[3] = 1
        stor9++
    return code.data[1363 len 3643]
}



// =====================  Runtime code  =====================


array of uint256 name;
mapping of uint256 balance;
mapping of uint8 stor2;
address owner;
array of uint256 notarizationList;
uint8 stor5;
uint256 freezeHeight;
array of address addrList;
mapping of uint8 stor8;
uint256 nAddresses;

function frozen() {
    return bool(stor5)
}

function name() {
    return name[0 len name.length]
}

function freezeHeight() {
    return freezeHeight
}

function notarizationList(uint256 arg1) {
    require arg1 < notarizationList.length
    return notarizationList[arg1]
}

function authorizedToTransfer(address arg1) {
    return bool(stor2[arg1])
}

function seen(address arg1) {
    return bool(stor8[arg1])
}

function addrList(uint256 arg1) {
    require arg1 < addrList.length
    return address(addrList[arg1])
}

function owner() {
    return owner
}

function nAddresses() {
    return nAddresses
}

function balance(address arg1) {
    return balance[arg1]
}

function _fallback() payable {
    revert
}

function AuthorizeToTransfer(address arg1) {
    require msg.sender == owner
    require not stor5
    stor2[address(arg1)] = 1
}

function UnauthorizeToTransfer(address arg1) {
    require msg.sender == owner
    require not stor5
    stor2[address(arg1)] = 0
}

function emptyTo(address arg1) {
    require msg.sender == owner
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function Freeze() {
    require msg.sender == owner
    require not stor5
    if freezeHeight > 0:
        if block.number < freezeHeight + 20:
            stor5 = 1
    freezeHeight = block.number
}

function Notarize(bytes32 arg1) {
    require msg.sender == owner
    require not stor5
    notarizationList.length++
    if not notarizationList.length <= notarizationList.length + 1:
        idx = notarizationList.length + 1
        while notarizationList.length > idx:
            notarizationList[idx] = 0
            idx = idx + 1
            continue 
    notarizationList[notarizationList.length] = arg1
}

function TransferDFN(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require bool(stor2[address(msg.sender)]) == 1
    require not stor5
    require 0 < arg3
    require arg3 <= balance[address(arg1)]
    balance[address(arg2)] += arg3
    balance[address(arg1)] -= arg3
    if not stor8[address(arg2)]:
        addrList.length++
        if not addrList.length <= addrList.length + 1:
            idx = addrList.length + 1
            while addrList.length > idx:
                uint256(addrList[idx]) = 0
                idx = idx + 1
                continue 
        address(addrList[addrList.length]) = arg2
        stor8[address(arg2)] = 1
        nAddresses++
}



}

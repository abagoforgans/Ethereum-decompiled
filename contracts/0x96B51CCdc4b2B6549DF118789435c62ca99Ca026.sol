contract main {




// =====================  Runtime code  =====================


#
#  - setData(string arg1, string arg2, string arg3)
#
mapping of uint256 uint;
array of uint256 string;
mapping of address address;
array of uint256 bytes;
mapping of uint8 stor4;
mapping of uint256 int;
address sub_882f6718Address;
uint256 sub_20a38760;
mapping of struct history;
mapping of uint256 sub_767ea128;

function sub_20a38760(?) {
    return sub_20a38760
}

function getAddress(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    return address[arg1]
}

function sub_767ea128(?) {
    require calldata.size - 4 >= 32
    return sub_767ea128[arg1]
}

function getBool(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    return bool(stor4[arg1])
}

function sub_882f6718(?) {
    return sub_882f6718Address
}

function getString(bytes32 arg1) {
    return string[arg1][0 len string[arg1].length]
}

function getUint(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    return uint[arg1]
}

function getBytes(bytes32 arg1) {
    return bytes[arg1][0 len bytes[arg1].length]
}

function getHistory(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    mem[128] = history[arg1][2].field_0
    idx = 128
    s = 0
    while history[arg1][2].length + 96 > idx:
        mem[idx + 32] = history[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return history[arg1].field_0, 
           history[arg1].field_256,
           Array(len=history[arg1][2].length, data=mem[128 len history[arg1][2].length])
}

function getInt(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    return int[arg1]
}

function _fallback() payable {
    revert
}

function setInt(bytes32 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    int[arg1] = arg2
}

function setUint(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    uint[arg1] = arg2
}

function sub_f2b23b32(?) {
    require calldata.size - 4 >= 32
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    sub_882f6718Address = arg1
    return 1
}

function removePayee(address arg1) {
    require calldata.size - 4 >= 32
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    sub_767ea128[address(arg1)] = 0
}

function setBool(bytes32 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    stor4[arg1] = uint8(arg2)
}

function setAddress(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if sub_882f6718Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only latest art certificate can access this'
    address[arg1] = arg2
}

function sub_f3b44745(?) {
    if sub_882f6718Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'This is not first deployment,In first deployment time latestArtCertificate shoud be empty'
    sub_882f6718Address = msg.sender
}

function addPayee(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0, 'Payee address can't be null'
    if arg2 <= 0:
        revert with 0, 'Shares can't be zero'
    if sub_767ea128[address(arg1)]:
        sub_767ea128[address(arg1)] += arg2
    else:
        sub_767ea128[address(arg1)] = arg2
    emit 0xc39e03ec: address(arg1), arg2
}

function setBytes(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if sub_882f6718Address != msg.sender:
        revert with 0, 'Only latest art certificate can access this'
    bytes[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function setString(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if sub_882f6718Address != msg.sender:
        revert with 0, 'Only latest art certificate can access this'
    string[arg1][] = Array(len=arg2.length, data=arg2[all])
}

function sub_280cf618(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if sub_882f6718Address != msg.sender:
        revert with 0, 'Only latest art certificate can access this'
    sub_20a38760++
    history[stor7].field_0 = block.timestamp
    history[stor7].field_256 = arg1
    history[stor7][2][].field_0 = Array(len=arg2.length, data=arg2[all])
    return sub_20a38760
}



}

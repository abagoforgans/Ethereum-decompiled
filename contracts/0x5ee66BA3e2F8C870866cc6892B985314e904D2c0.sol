contract main {




// =====================  Runtime code  =====================


const VERSION = 5


address owner;
mapping of uint8 stor1;
address sub_996107aaAddress;
array of uint256 symbol;
array of uint256 name;
array of uint256 maintainer;
uint256 decimals;
uint256 currency;
address tokenAddress;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function decimals() payable {
    return decimals
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function maintainer() payable {
    return maintainer[0 len maintainer.length]
}

function sub_996107aa(?) payable {
    return sub_996107aaAddress
}

function currency() payable {
    return currency
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_300ec434(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 30, 0xfe546865206f776e65722073686f756c64206265207468652073656e64657200
    sub_996107aaAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 30, 0xfe546865206f776e65722073686f756c64206265207468652073656e64657200
    if not arg1:
        revert with 0, '0x0 Is not a valid owner'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function readSample(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(sub_996107aaAddress)
    call sub_996107aaAddress.getRate(bytes32 arg1, bytes arg2) with:
         gas gas_remaining wei
        args currency, Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], 10^ext_call.return_data[32]
}

function setName(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 30, 0xfe546865206f776e65722073686f756c64206265207468652073656e64657200
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
}

function sub_d92714eb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 32, 30, 0xfe546865206f776e65722073686f756c64206265207468652073656e64657200
    maintainer.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        maintainer[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while maintainer.length + 31 / 32 > idx:
        maintainer[idx] = 0
        idx = idx + 1
        continue 
}

function url() payable {
    mem[96] = 0x5600f04f00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_996107aaAddress)
    staticcall sub_996107aaAddress.0x5600f04f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = 32
    mem[ceil32(return_data.size) + 128] = mem[_4 + 96]
    _8 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 160 len ceil32(mem[_4 + 96])] = mem[_4 + 128 len ceil32(mem[_4 + 96])]
    if not _8 % 32:
        return 32, mem[ceil32(return_data.size) + 128 len _8 + 32]
    mem[floor32(_8) + ceil32(return_data.size) + 160] = mem[floor32(_8) + ceil32(return_data.size) + -(_8 % 32) + 192 len _8 % 32]
    return 32, mem[ceil32(return_data.size) + 128 len floor32(_8) + 64]
}



}

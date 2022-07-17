contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
mapping of address addr;
array of uint256 contenthash;
mapping of address stor4;
array of uint256 name;
mapping of struct pubkey;
array of uint256 text;

function addr(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return addr[arg1]
}

function text(bytes32 arg1, string arg2) payable {
    return text[arg1][arg2[all]][0 len text[arg1][arg2[all]].length]
}

function name(bytes32 arg1) payable {
    return name[arg1][0 len name[arg1].length]
}

function owner() payable {
    return owner
}

function contenthash(bytes32 arg1) payable {
    return contenthash[arg1][0 len contenthash[arg1].length]
}

function pubkey(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return pubkey[arg1].field_0, pubkey[arg1].field_256
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setAddr(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    addr[arg1] = arg2
    emit AddrChanged(arg2, arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setInterface(bytes32 arg1, bytes4 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    stor4[arg1][Mask(32, 224, arg2)] = arg3
    emit InterfaceChanged(arg3, arg1, Mask(32, 224, arg2));
}

function setPubkey(bytes32 arg1, bytes32 arg2, bytes32 arg3) payable {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    pubkey[arg1].field_0 = arg2
    pubkey[arg1].field_256 = arg3
    emit PubkeyChanged(arg2, arg3, arg1);
}

function setName(bytes32 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    name[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        name[arg1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while name[arg1].length + 31 / 32 > idx:
        name[arg1][idx] = 0
        idx = idx + 1
        continue 
    emit NameChanged(Array(len=arg2.length, data=arg2[all]), arg1);
}

function interfaceImplementer(bytes32 arg1, bytes4 arg2) payable {
    require calldata.size - 4 >= 64
    if stor4[arg1][Mask(32, 224, arg2)]:
        return stor4[arg1][Mask(32, 224, arg2)]
    if not addr[arg1]:
        return 0
    staticcall addr[arg1] with:
         funct Mask(32, 224, supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000) >> 224
            gas gas_remaining wei
           args Mask(224, 0, supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000), mem[196 len 4]
    if not return_data.size:
        return 0
    if not ext_call.success:
        return 0
    if return_data.size < 32:
        return 0
    require 31 < return_data.size
    return 0
}

function setContenthash(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    contenthash[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        contenthash[arg1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while contenthash[arg1].length + 31 / 32 > idx:
        contenthash[arg1][idx] = 0
        idx = idx + 1
        continue 
    emit ContenthashChanged(Array(len=arg2.length, data=arg2[all]), arg1);
}

function setABI(bytes32 arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    require not arg2 - 1 or not arg2
    stor1[arg1][arg2] = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        stor1[arg1][arg2][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while stor1[arg1][arg2].length + 31 / 32 > idx:
        stor1[arg1][arg2][idx] = 0
        idx = idx + 1
        continue 
    emit ABIChanged(arg1, arg2);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x59d1d43c00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0xc869023300000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x691f343100000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == Mask(32, 224, sha3(0xfe696e74657266616365496d706c656d656e74657228627974657333322c627974657334)):
        return True
    if Mask(32, 224, arg1) == 0xbc1c58d100000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x3b3b57de00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x2203ab5600000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function setText(bytes32 arg1, string arg2, string arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == owner
    text[arg1][arg2[all]] = (2 * arg3.length) + 1
    s = 0
    idx = arg3 + 36
    while arg3 + arg3.length + 36 > idx:
        text[arg1][arg2[all]][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg3.length + 31) >> 5
    while text[arg1][arg2[all]].length + 31 / 32 > idx:
        text[arg1][arg2[all]][idx] = 0
        idx = idx + 1
        continue 
    mem[ceil32(arg2.length) + 192] = arg2.length
    mem[ceil32(arg2.length) + 224 len arg2.length] = arg2[all]
    emit TextChanged(bytes32 arg1, string arg2, string arg3):
                     64,
                     ceil32(arg2.length) + 96,
                     arg2.length,
                     arg2[all],
                     0,
                     mem[arg2.length + 224 len (2 * ceil32(arg2.length)) - arg2.length],
                     arg1,
}

function ABI(bytes32 arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[0] = arg1
    mem[32] = 1
    idx = 1
    while idx <= arg2:
        if not idx or not arg2:
            idx = 2 * idx
            continue 
        mem[0] = idx
        mem[32] = sha3(arg1, 1)
        if stor1[arg1][idx].length <= 0:
            idx = 2 * idx
            continue 
        mem[32] = sha3(arg1, 1)
        mem[64] = ceil32(stor1[arg1][idx].length) + 128
        mem[96] = stor1[arg1][idx].length
        mem[0] = sha3(idx, sha3(arg1, 1))
        mem[128] = stor1[arg1][idx]
        s = 128
        t = sha3(mem[0])
        while stor1[arg1][idx].length + 96 > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        _80 = mem[64]
        mem[mem[64]] = idx
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[96]
        _82 = mem[96]
        idx = 0
        while idx < _82:
            mem[mem[64] + idx + 96] = mem[idx + 128]
            idx = idx + 32
            continue 
        if not _82 % 32:
            return memory
              from mem[64]
               len _82 + _80 + -mem[64] + 96
        mem[floor32(_82) + _80 + 96] = mem[floor32(_82) + _80 + -(_82 % 32) + 128 len _82 % 32]
        return memory
          from mem[64]
           len floor32(_82) + _80 + -mem[64] + 128
    return 0, 64, 0
}



}

contract main {




// =====================  Runtime code  =====================


address newAddress;
uint256 genesis;
address owner;
array of struct sub_5d42b2b9;
mapping of uint8 stor4;

function sub_328a93e8(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_5d42b2b9(?) payable {
    require calldata.size - 4 >= 32
    mem[128] = sub_5d42b2b9[arg1][1].field_0
    idx = 128
    s = 0
    while sub_5d42b2b9[arg1][1].length + 96 > idx:
        mem[idx + 32] = sub_5d42b2b9[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(sub_5d42b2b9[arg1].field_0), 
           Array(len=sub_5d42b2b9[arg1][1].length, data=mem[128 len sub_5d42b2b9[arg1][1].length])
}

function owner() payable {
    return owner
}

function genesis() payable {
    return genesis
}

function newAddress() payable {
    return newAddress
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

function computeCertHash(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    return sha3(arg1, arg2)
}

function deprecate(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newAddress = arg1
}

function setCertifierStatus(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_5d42b2b9[address(arg1)].field_0 = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function revoke(bytes32 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        require sub_5d42b2b9[msg.sender].field_0
        require arg2 == msg.sender
        require arg3
    emit Revocation(arg3, sha3(arg2, arg1));
    stor4[arg2][arg1] = uint8(arg3)
}

function setCertifierId(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require msg.sender == owner
    sub_5d42b2b9[address(arg1)][1][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function certifyMany(bytes32[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[0] = msg.sender
    mem[32] = 3
    require sub_5d42b2b9[msg.sender].field_0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _14 = mem[(32 * idx) + 128]
        _15 = mem[64]
        mem[mem[64] + 32] = address(msg.sender)
        mem[mem[64] + 52] = _14
        _16 = mem[64]
        mem[mem[64]] = 52
        mem[64] = mem[64] + 84
        _18 = sha3(mem[_16 + 32 len mem[_16]])
        mem[_15 + 84] = _14
        emit Certificate(_14, _18, msg.sender);
        idx = idx + 1
        continue 
}



}

contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2231]




// =====================  Runtime code  =====================


uint128 stor0; offset 160
address owner;
uint256 stor0;
mapping of uint256 index;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
mapping of uint8 members;
array of uint256 requests;
array of address applicants;

function members(address arg1) payable {
    return members[arg1]
}

function index(address arg1) payable {
    return index[arg1]
}

function hashes(uint256 arg1) payable {
    require arg1 < stor4.length
    return stor[code.data[2199 len 32] + arg1]
}

function applicants(uint256 arg1) payable {
    require arg1 < stor3.length
    return address(applicants[arg1])
}

function requests(uint256 arg1) payable {
    require arg1 < stor2.length
    return requests[arg1]
}

function owner() payable {
    return owner
}

function isMember(address arg1) payable {
    return members[address(arg1)]
}

function _fallback() payable {
  stop
}

function sub_19179123(?) payable {
    if owner != msg.sender:
        if owner != tx.origin:
            return 0
    if not members[address(arg1)]:
        return 0
    members[address(arg1)] = 0
    emit Remove(arg1);
    return 1
}

function reject(address arg1) payable {
    if owner != msg.sender:
        if owner != tx.origin:
            return 0
    if not index[address(arg1)]:
        return 0
    index[address(arg1)] = 0
    require index[address(arg1)] < stor3.length
    address(applicants[stor1[address(arg1)]]) = 0
    require index[address(arg1)] < stor2.length
    requests[stor1[address(arg1)]] = 0
    require index[address(arg1)] < stor4.length
    stor[stor1[address(arg1)] + code.data[2199 len 32]] = 0
    emit Reject(arg1);
    return 1
}

function addMember(address arg1) payable {
    if owner != msg.sender:
        if owner != tx.origin:
            return 0
    if not index[address(arg1)]:
        return 0
    index[address(arg1)] = 0
    require index[address(arg1)] < stor3.length
    address(applicants[stor1[address(arg1)]]) = 0
    require index[address(arg1)] < stor2.length
    requests[stor1[address(arg1)]] = 0
    require index[address(arg1)] < stor4.length
    stor[stor1[address(arg1)] + code.data[2199 len 32]] = 0
    members[address(arg1)] = 1
    emit 0x5dbe2599: arg1
    return 1
}

function setOwner(address arg1) payable {
    if owner != 0:
        if owner != msg.sender:
            if owner != tx.origin:
                return 0
        uint256(stor0.field_0) = arg1 or Mask(96, 160, uint256(stor0.field_0))
    else:
        uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
        stor3.length++
        if not stor3.length <= stor3.length + 1:
            idx = stor3.length + 1
            while stor3.length > idx:
                stor3[idx] = 0
                idx = idx + 1
                continue 
        stor2.length++
        if not stor2.length <= stor2.length + 1:
            idx = stor2.length + 1
            while stor2.length > idx:
                stor2[idx] = 0
                idx = idx + 1
                continue 
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
    return 1
}

function sub_dfab9895(?) payable {
    if 0 > index[address(arg1)]:
        return 0
    idx = 1
    while idx < stor3.length:
        mem[0] = 3
        if address(applicants[idx]):
            idx = idx + 1
            continue 
        if idx != 0:
            require idx < stor3.length
            uint256(applicants[idx]) = arg1 or Mask(96, 160, uint256(applicants[idx]))
            require idx < stor2.length
            requests[idx] = arg2
            require idx < stor4.length
            stor[code.data[2199 len 32] + idx] = arg3
            index[address(arg1)] = idx
        else:
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = stor3.length - 0x313da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07
                while stor3.length - 0x313da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e08 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b
                while stor2.length + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = stor4.length + code.data[2199 len 32] + 1
                while code.data[2199 len 32] + stor4.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            require stor3.length < stor3.length
            uint256(applicants[stor3.length]) = arg1 or Mask(96, 160, uint256(applicants[stor3.length]))
            require stor3.length < stor2.length
            requests[stor3.length] = arg2
            require stor3.length < stor4.length
            stor[code.data[2199 len 32] + stor3.length] = arg3
            index[address(arg1)] = stor3.length
        emit 0xc6dc6a55: arg3, arg1, arg2
        return 1
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length - 0x313da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07
        while stor3.length - 0x313da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e08 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b
        while stor2.length + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + code.data[2199 len 32] + 1
        while code.data[2199 len 32] + stor4.length > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    require stor3.length < stor3.length
    uint256(applicants[stor3.length]) = arg1 or Mask(96, 160, uint256(applicants[stor3.length]))
    require stor3.length < stor2.length
    requests[stor3.length] = arg2
    require stor3.length < stor4.length
    stor[code.data[2199 len 32] + stor3.length] = arg3
    index[address(arg1)] = stor3.length
    emit 0xc6dc6a55: arg3, arg1, arg2
    return 1
}



}

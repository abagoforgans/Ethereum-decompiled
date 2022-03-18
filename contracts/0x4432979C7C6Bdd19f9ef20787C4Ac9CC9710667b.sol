contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = tx.origin or Mask(96, 160, stor0)
    stor3++
    if not stor3 <= stor3 + 1:
        idx = stor3 - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
        while stor3 - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor2++
    if not stor2 <= stor2 + 1:
        idx = stor2 + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5acf
        while stor2 + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor4++
    if not stor4 <= stor4 + 1:
        idx = stor4 - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64
        while stor4 - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    return code.data[301 len 2014]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 index;
uint256 stor2;
uint256 stor3;
uint256 stor4;
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
    require arg1 < stor4
    return stor[code.data[1982 len 32] + arg1]
}

function applicants(uint256 arg1) payable {
    require arg1 < stor3
    return address(applicants[arg1])
}

function requests(uint256 arg1) payable {
    require arg1 < stor2
    return requests[arg1]
}

function owner() payable {
    return address(owner)
}

function isMember(address arg1) payable {
    return members[address(arg1)]
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if address(owner) != msg.sender:
        if address(owner) != tx.origin:
            return 0
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function sub_19179123(?) payable {
    if address(owner) != msg.sender:
        if address(owner) != tx.origin:
            return 0
    if not members[address(arg1)]:
        return 0
    members[address(arg1)] = 0
    emit Remove(arg1);
    return 1
}

function reject(address arg1) payable {
    if address(owner) != msg.sender:
        if address(owner) != tx.origin:
            return 0
    if not index[address(arg1)]:
        return 0
    index[address(arg1)] = 0
    require index[address(arg1)] < stor3
    address(applicants[stor1[address(arg1)]]) = 0
    require index[address(arg1)] < stor2
    requests[stor1[address(arg1)]] = 0
    require index[address(arg1)] < stor4
    stor[stor1[address(arg1)] + code.data[1982 len 32]] = 0
    emit Reject(arg1);
    return 1
}

function addMember(address arg1) payable {
    if address(owner) != msg.sender:
        if address(owner) != tx.origin:
            return 0
    if not index[address(arg1)]:
        return 0
    index[address(arg1)] = 0
    require index[address(arg1)] < stor3
    address(applicants[stor1[address(arg1)]]) = 0
    require index[address(arg1)] < stor2
    requests[stor1[address(arg1)]] = 0
    require index[address(arg1)] < stor4
    stor[stor1[address(arg1)] + code.data[1982 len 32]] = 0
    members[address(arg1)] = 1
    emit 0x5dbe2599: arg1
    return 1
}

function sub_dfab9895(?) payable {
    if 0 > index[address(arg1)]:
        return 0
    idx = 1
    while idx < stor3:
        mem[0] = 3
        if address(applicants[idx]):
            idx = idx + 1
            continue 
        if idx != 0:
            require idx < stor3
            uint256(applicants[idx]) = arg1 or Mask(96, 160, uint256(applicants[idx]))
            require idx < stor2
            requests[idx] = arg2
            require idx < stor4
            stor[code.data[1982 len 32] + idx] = arg3
            index[address(arg1)] = idx
        else:
            stor3++
            if not stor3 <= stor3 + 1:
                idx = stor3 - 0x313da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07
                while stor3 - 0x313da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e08 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor2++
            if not stor2 <= stor2 + 1:
                idx = stor2 + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b
                while stor2 + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            stor4++
            if not stor4 <= stor4 + 1:
                idx = stor4 + code.data[1982 len 32] + 1
                while code.data[1982 len 32] + stor4 > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            require stor3 < stor3
            uint256(applicants[stor3]) = arg1 or Mask(96, 160, uint256(applicants[stor3]))
            require stor3 < stor2
            requests[stor3] = arg2
            require stor3 < stor4
            stor[code.data[1982 len 32] + stor3] = arg3
            index[address(arg1)] = stor3
        emit 0xc6dc6a55: arg3, arg1, arg2
        return 1
    stor3++
    if not stor3 <= stor3 + 1:
        idx = stor3 - 0x313da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07
        while stor3 - 0x313da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e08 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor2++
    if not stor2 <= stor2 + 1:
        idx = stor2 + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b
        while stor2 + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor4++
    if not stor4 <= stor4 + 1:
        idx = stor4 + code.data[1982 len 32] + 1
        while code.data[1982 len 32] + stor4 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    require stor3 < stor3
    uint256(applicants[stor3]) = arg1 or Mask(96, 160, uint256(applicants[stor3]))
    require stor3 < stor2
    requests[stor3] = arg2
    require stor3 < stor4
    stor[code.data[1982 len 32] + stor3] = arg3
    index[address(arg1)] = stor3
    emit 0xc6dc6a55: arg3, arg1, arg2
    return 1
}



}

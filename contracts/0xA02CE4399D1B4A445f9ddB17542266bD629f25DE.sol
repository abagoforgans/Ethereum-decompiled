contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[64 len 2016]
}



// =====================  Runtime code  =====================


address owner;
array of struct stor1;
array of struct stor2;

function owner() payable {
    return owner
}

function numTransactions() payable {
    return stor2.length
}

function _fallback() payable {
  stop
}

function removeMember(address arg1) payable {
    if msg.sender == owner:
        idx = 0
        while idx < stor1.length:
            mem[0] = 1
            if arg1 == address(stor1[idx].field_0):
                require idx < stor1.length
                mem[0] = 1
                address(stor1[idx].field_0) = 0
            idx = idx + 1
            continue 
}

function getMembers() payable {
    if owner != msg.sender:
        return ''
    if stor1.length:
        mem[160] = address(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = address(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len 32 * stor1.length])
}

function transactions(uint256 arg1) payable {
    require arg1 < stor2.length
    if stor2[arg1].field_0:
        mem[128] = stor2[arg1].field_0
        idx = 128
        s = 0
        while stor2[arg1].field_0 + 96 > idx:
            mem[idx + 32] = stor2[arg1 + s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor2[arg1].field_0, data=mem[128 len stor2[arg1].field_0])
}

function addMember(address arg1) payable {
    if msg.sender == owner:
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 1
            while stor1.length > idx:
                stor1[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor1.length < stor1.length
        stor1[stor1.length].field_0 = arg1 or Mask(96, 160, stor1[stor1.length].field_0)
}

function addTransaction(bytes arg1) payable {
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    idx = 0
    s = 0
    while idx < stor1.length:
        mem[0] = 1
        if address(stor1[idx].field_0) != msg.sender:
            idx = idx + 1
            s = s
            continue 
        stor2.length++
        if not stor2.length > stor2.length + 1:
            require stor2.length < stor2.length
            stor2[stor2.length].field_0 = arg1.length
            mem[0] = stor2.length + sha3(2)
            if not arg1.length:
                s = sha3(stor2.length + sha3(2))
                while sha3(stor2.length + sha3(2)) + (stor2[stor2.length].field_0 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            else:
                t = sha3(stor2.length + sha3(2))
                s = 128
                while arg1.length + 128 > s:
                    stor[t] = mem[s]
                    t = t + 1
                    s = s + 32
                    continue 
                s = sha3(stor2.length + sha3(2)) + (Mask(251, 0, arg1.length + 31) >> 5)
                while sha3(stor2.length + sha3(2)) + (stor2[stor2.length].field_0 + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[ceil32(arg1.length) + 128] = stor2.length
            emit NewTransaction(stor2.length);
            idx = idx + 1
            s = stor2.length
            continue 
        mem[0] = 2
        s = sha3(mem[0]) + stor2.length + 1
        while sha3(2) + stor2.length > s:
            stor[s] = 0
            mem[0] = s
            t = sha3(t)
            while sha3(t) + (stor[t] + 31 / 32) > t:
                stor[t] = 0
                t = t + 1
                continue 
            t = t + 1
            continue 
        require stor2.length < stor2.length
        stor2[stor2.length].field_0 = arg1.length
        mem[0] = stor2.length + sha3(2)
        if not arg1.length:
            s = sha3(stor2.length + sha3(2))
            while sha3(stor2.length + sha3(2)) + (stor2[stor2.length].field_0 + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            mem[ceil32(arg1.length) + 128] = stor2.length
            emit NewTransaction(stor2.length);
            idx = idx + 1
            s = stor2.length
            continue 
        t = sha3(stor2.length + sha3(2))
        s = 128
        while arg1.length + 128 > s:
            stor[t] = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(stor2.length + sha3(2)) + (Mask(251, 0, arg1.length + 31) >> 5)
        while sha3(stor2.length + sha3(2)) + (stor2[stor2.length].field_0 + 31 / 32) > s:
            stor[s] = 0
            s = s + 1
            continue 
        mem[ceil32(arg1.length) + 128] = stor2.length
        emit NewTransaction(stor2.length);
        s = sha3(stor2.length + sha3(2)) + (stor2[stor2.length].field_0 + 31 / 32) + 1
        s = stor2.length
        continue 
}



}

contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor4;
array of struct stor8;
array of uint256 stor9;
address storF3F7;

function _fallback() payable {
    mem[96 len -2224] = code.data[2748 len -2224]
    stor0 = mem[96]
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = 2 * stor8.length + 1
        while 2 * stor8.length > idx:
            address(stor8[idx].field_0) = 0
            address(stor8[idx].field_256) = 0
            idx = idx + 1
            continue 
    mem[64] = -2064
    require 0 < stor8.length
    address(stor8.field_0) = 0
    stor8.field_256 % 1 = 0
    storF3F7 = 0
    stor9.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
    while (stor9.length + 31 / 32) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor4 = -mem[160] + 100
    if -mem[160] + 100 > 100:
        stor4 = 100
    return code.data[524 len 2224]
}



// =====================  Runtime code  =====================


address votingTokenAddress;
array of uint256 stor1;
mapping of uint256 sub_4e897592;
mapping of uint256 sub_7eadebfe;
uint256 sub_4d87682c;
uint256 sub_17f73bd2;
uint256 sub_82794fb5;
uint256 numberOfVotes;
array of struct stor8;
array of uint256 sub_bba594fd;
array of address stor39329958129252365225000244316549619631642976376925172532217634639291095933806;
array of address stor39329958129252365225000244316549619631642976376925172532217634639291095933807;
array of address stor103106069779492925985638950903366006378951835118547514444575132081149499368302;

function numberOfVotes() payable {
    return numberOfVotes
}

function sub_17f73bd2(?) payable {
    return sub_17f73bd2
}

function sub_2576a7e9(?) payable {
    return address(stor1.length)
}

function sub_4d87682c(?) payable {
    return sub_4d87682c
}

function sub_4e897592(?) payable {
    return sub_4e897592[arg1]
}

function sub_7eadebfe(?) payable {
    return sub_7eadebfe[arg1]
}

function sub_82794fb5(?) payable {
    return sub_82794fb5
}

function votingToken() payable {
    return votingTokenAddress
}

function sub_bba594fd(?) payable {
    return sub_bba594fd[0 len sub_bba594fd.length]
}

function _fallback() payable {
  stop
}

function sub_cf06678c(?) payable {
    require arg1 < stor8.length
    return address(stor56F3[arg1]), address(storE3F3[arg1])
}

function execute(address arg1, uint256 arg2, bytes32 arg3) payable {
    require address(stor1.length) == msg.sender
    call arg1 with:
       funct uint32(arg3)
       value 10^18 * arg2 wei
         gas gas_remaining - 34050 wei
        args Mask(224, 0, arg3)
    require ext_call.success
    mem[96] = sub_bba594fd
    idx = 96
    s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
    while sub_bba594fd.length + 96 > idx + 32:
        mem[idx + 32] = uint256(stor1[s])
        idx = idx + 32
        s = s + 1
        continue 
    require Mask(32, 224, arg3) != Mask(32, 224, sha3(mem[96 len sub_bba594fd.length]))
    require sub_82794fb5 >= 4
    call arg1 with:
       funct uint32(arg3)
       value 10^18 * arg2 wei
         gas gas_remaining - 34050 wei
        args Mask(224, 0, arg3)
}

function vote(address arg1) payable {
    if sub_4e897592[address(msg.sender)] != 0:
        require sub_4e897592[address(msg.sender)] < stor8.length
        uint256(stor56F3[stor2[address(msg.sender)]]) = arg1 or Mask(96, 160, uint256(stor56F3[stor2[address(msg.sender)]]))
        uint256(storE3F3[stor2[address(msg.sender)]]) = msg.sender or Mask(96, 160, uint256(storE3F3[stor2[address(msg.sender)]]))
        return sub_4e897592[address(msg.sender)]
    sub_4e897592[address(msg.sender)] = stor8.length
    numberOfVotes++
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = 2 * stor8.length + 1
        while 2 * stor8.length > idx:
            stor8[idx].field_0 = 0
            stor8[idx].field_256 = 0
            idx = idx + 1
            continue 
    numberOfVotes = stor8.length
    require stor8.length < stor8.length
    uint256(stor56F3[stor8.length]) = arg1 or Mask(96, 160, uint256(stor56F3[stor8.length]))
    uint256(storE3F3[stor8.length]) = msg.sender or Mask(96, 160, uint256(storE3F3[stor8.length]))
    return stor8.length
}

function calculateVotes() payable {
    require 0 < stor8.length
    if block.timestamp <= sub_17f73bd2 + 5400:
        sub_82794fb5++
        if 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) <= 0:
            if sub_82794fb5 > 3:
                emit 0x638714cd: address(stor1.length), address(stor1.length) == address(stor1.length)
            return address(stor1.length)
        idx = 1
        s = 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
        s = 0
        t = 0
        u = address(stor1.length)
        while idx < stor8.length:
            mem[0] = 8
            if stor56F3[idx] == address(stor56F3[idx]):
                if sub_82794fb5 <= 3:
                    idx = idx + 1
                    s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
                    s = s
                    t = t
                    u = u
                    continue 
                mem[0] = address(stor56F3[idx])
                mem[32] = 3
                if sub_7eadebfe[address(stor56F3[idx])] <= t:
                    idx = idx + 1
                    s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
                    s = s
                    t = t
                    u = u
                    continue 
                mem[0] = address(stor56F3[idx])
                mem[32] = 3
                idx = idx + 1
                s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
                s = s
                t = sub_7eadebfe[address(stor56F3[idx])]
                u = address(stor56F3[idx])
                continue 
            mem[0] = stor56F3[idx]
            mem[32] = 3
            if sub_7eadebfe[stor56F3[idx]] <= 0:
                if sub_82794fb5 <= 3:
                    idx = idx + 1
                    s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
                    s = s
                    t = t
                    u = u
                    continue 
                mem[0] = address(stor56F3[idx])
                mem[32] = 3
                if sub_7eadebfe[address(stor56F3[idx])] <= t:
                    idx = idx + 1
                    s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
                    s = s
                    t = t
                    u = u
                    continue 
                mem[0] = address(stor56F3[idx])
                mem[32] = 3
                idx = idx + 1
                s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
                s = s
                t = sub_7eadebfe[address(stor56F3[idx])]
                u = address(stor56F3[idx])
                continue 
            mem[32] = 3
            sub_7eadebfe[stor56F3[idx]] -= 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor56F3[idx]] / 100
            mem[0] = address(stor56F3[idx])
            sub_7eadebfe[address(stor56F3[idx])] += 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor56F3[idx]] / 100
            if sub_82794fb5 <= 3:
                idx = idx + 1
                s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
                s = 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor56F3[idx]] / 100
                t = t
                u = u
                continue 
            mem[0] = address(stor56F3[idx])
            mem[32] = 3
            if sub_7eadebfe[address(stor56F3[idx])] <= t:
                idx = idx + 1
                s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
                s = 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor56F3[idx]] / 100
                t = t
                u = u
                continue 
            mem[0] = address(stor56F3[idx])
            mem[32] = 3
            idx = idx + 1
            s = (2 * idx) + 0x56f3f7a9fe364faab93b216da50a3214154f22a0a2b415b23a84c8169e8b636e
            s = 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor56F3[idx]] / 100
            t = sub_7eadebfe[address(stor56F3[idx])]
            u = address(stor56F3[idx])
            continue 
        if sub_82794fb5 > 3:
            emit 0x638714cd: address(u), address(stor1.length) == address(u)
            stor1.length = u or Mask(96, 160, stor1.length)
        return address(u)
    sub_82794fb5 = 0
    sub_17f73bd2 = block.timestamp
    idx = 1
    while idx < stor8.length:
        mem[0] = address(stor56F3[idx])
        mem[32] = 3
        sub_7eadebfe[address(stor56F3[idx])] = 0
        idx = idx + 1
        continue 
    idx = 1
    while idx < stor8.length:
        mem[100] = address(storE3F3[idx])
        call votingTokenAddress.0x70a08231 with:
             gas gas_remaining - 25050 wei
            args address(storE3F3[idx])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require idx < stor8.length
        mem[0] = address(storE3F3[idx])
        mem[32] = 3
        sub_7eadebfe[address(storE3F3[idx])] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    if sub_82794fb5 > 3:
        emit 0x638714cd: address(stor1.length), address(stor1.length) == address(stor1.length)
    return address(stor1.length)
}



}

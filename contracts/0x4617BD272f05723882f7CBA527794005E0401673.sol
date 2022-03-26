contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor4;
array of struct stor8;
array of uint256 stor9;
address storF3F7;

function _fallback() payable {
    mem[96 len -2356] = code.data[2853 len -2356]
    stor0 = mem[96]
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = 2 * stor8.length + 1
        while 2 * stor8.length > idx:
            address(stor8[idx].field_0) = 0
            address(stor8[idx].field_256) = 0
            idx = idx + 2
            continue 
    mem[64] = -2196
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
    return code.data[497 len 2356]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address votingTokenAddress;
address sub_8b5857f8Address;
uint256 stor1;
mapping of uint256 sub_4e897592;
mapping of uint256 sub_7eadebfe;
uint256 sub_4d87682c;
uint256 sub_17f73bd2;
uint256 sub_82794fb5;
uint256 numberOfVotes;
array of struct stor8;
array of struct sub_bba594fd;
array of address stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

function numberOfVotes() {
    return numberOfVotes
}

function sub_17f73bd2(?) {
    return sub_17f73bd2
}

function sub_4d87682c(?) {
    return sub_4d87682c
}

function sub_4e897592(?) {
    return sub_4e897592[arg1]
}

function sub_7eadebfe(?) {
    return sub_7eadebfe[arg1]
}

function sub_82794fb5(?) {
    return sub_82794fb5
}

function sub_8b5857f8(?) {
    return address(sub_8b5857f8Address)
}

function votingToken() {
    return votingTokenAddress
}

function sub_bba594fd(?) {
    return sub_bba594fd[0 len sub_bba594fd.length].field_0
}

function _fallback() payable {
    revert 
}

function sub_cf06678c(?) {
    require arg1 < stor8.length
    return stor8[arg1].field_0, storF3F7[arg1]
}

function execute(address arg1, uint256 arg2, bytes32 arg3) {
    require msg.sender == address(sub_8b5857f8Address)
    require not stor0
    mem[96] = uint256(sub_bba594fd.field_0)
    idx = 96
    s = 0
    while sub_bba594fd.length + 96 > idx + 32:
        mem[idx + 32] = sub_bba594fd[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require Mask(32, 224, arg3) != Mask(32, 224, sha3(mem[96 len sub_bba594fd.length]))
    require sub_82794fb5 >= 4
    stor0 = 1
    call arg1 with:
       funct uint32(arg3)
       value 10^18 * arg2 wei
         gas gas_remaining - 34050 wei
        args Mask(224, 0, arg3)
    require ext_call.success
    stor0 = 0
}

function vote(address arg1) {
    if sub_4e897592[address(msg.sender)] != 0:
        require sub_4e897592[address(msg.sender)] < stor8.length
        stor8[stor2[address(msg.sender)]].field_0 = stor8[stor2[address(msg.sender)]].field_160
        stor8[stor2[address(msg.sender)]].field_256 = msg.sender or Mask(96, 160, stor8[stor2[address(msg.sender)]].field_256)
        return sub_4e897592[address(msg.sender)]
    sub_4e897592[address(msg.sender)] = stor8.length
    numberOfVotes++
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = 2 * stor8.length + 1
        while 2 * stor8.length > idx:
            stor8[idx].field_0 = 0
            stor8[idx].field_256 = 0
            idx = idx + 2
            continue 
    numberOfVotes = stor8.length
    require stor8.length < stor8.length
    stor8[stor8.length].field_0 = stor8[stor8.length].field_160
    stor8[stor8.length].field_256 = msg.sender or Mask(96, 160, stor8[stor8.length].field_256)
    return stor8.length
}

function calculateVotes() {
    require 0 < stor8.length
    if block.timestamp > sub_17f73bd2 + 5400:
        sub_82794fb5 = 0
        sub_17f73bd2 = block.timestamp
        idx = 1
        while idx < stor8.length:
            mem[0] = stor8[idx].field_0
            mem[32] = 3
            sub_7eadebfe[stor8[idx].field_0] = 0
            idx = idx + 1
            continue 
        idx = 1
        while idx < stor8.length:
            mem[128] = 0
            mem[100] = stor8[idx].field_256
            require ext_code.size(votingTokenAddress)
            call votingTokenAddress.balanceOf(address rg1) with:
                 gas gas_remaining - 50 wei
                args stor8[idx].field_256
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require idx < stor8.length
            mem[0] = stor8[idx].field_256
            mem[32] = 3
            sub_7eadebfe[stor8[idx].field_256] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        if sub_82794fb5 > 3:
            emit NewAppointee(address(sub_8b5857f8Address), address(sub_8b5857f8Address) == address(sub_8b5857f8Address));
        return address(sub_8b5857f8Address)
    sub_82794fb5++
    require 100^(sub_82794fb5 + 1)
    if 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) <= 0:
        if sub_82794fb5 > 3:
            emit NewAppointee(address(sub_8b5857f8Address), address(sub_8b5857f8Address) == address(sub_8b5857f8Address));
        return address(sub_8b5857f8Address)
    idx = 1
    s = 0
    s = 0
    t = 0
    u = address(sub_8b5857f8Address)
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx].field_256 == stor8[idx].field_0:
            if sub_82794fb5 <= 3:
                idx = idx + 1
                s = (2 * idx) + sha3(8)
                s = s
                t = t
                u = u
                continue 
            mem[0] = stor8[idx].field_0
            mem[32] = 3
            if sub_7eadebfe[stor8[idx].field_0] <= t:
                idx = idx + 1
                s = (2 * idx) + sha3(8)
                s = s
                t = t
                u = u
                continue 
            mem[0] = stor8[idx].field_0
            mem[32] = 3
            idx = idx + 1
            s = (2 * idx) + sha3(8)
            s = s
            t = sub_7eadebfe[stor8[idx].field_0]
            u = stor8[idx].field_0
            continue 
        mem[0] = stor8[idx].field_256
        mem[32] = 3
        if sub_7eadebfe[stor8[idx].field_256] <= 0:
            if sub_82794fb5 <= 3:
                idx = idx + 1
                s = (2 * idx) + sha3(8)
                s = s
                t = t
                u = u
                continue 
            mem[0] = stor8[idx].field_0
            mem[32] = 3
            if sub_7eadebfe[stor8[idx].field_0] <= t:
                idx = idx + 1
                s = (2 * idx) + sha3(8)
                s = s
                t = t
                u = u
                continue 
            mem[0] = stor8[idx].field_0
            mem[32] = 3
            idx = idx + 1
            s = (2 * idx) + sha3(8)
            s = s
            t = sub_7eadebfe[stor8[idx].field_0]
            u = stor8[idx].field_0
            continue 
        mem[32] = 3
        sub_7eadebfe[stor8[idx].field_256] -= 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor8[idx].field_256] / 100
        mem[0] = stor8[idx].field_0
        sub_7eadebfe[stor8[idx].field_0] += 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor8[idx].field_256] / 100
        if sub_82794fb5 <= 3:
            idx = idx + 1
            s = (2 * idx) + sha3(8)
            s = 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor8[idx].field_256] / 100
            t = t
            u = u
            continue 
        mem[0] = stor8[idx].field_0
        mem[32] = 3
        if sub_7eadebfe[stor8[idx].field_0] <= t:
            idx = idx + 1
            s = (2 * idx) + sha3(8)
            s = 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor8[idx].field_256] / 100
            t = t
            u = u
            continue 
        mem[0] = stor8[idx].field_0
        mem[32] = 3
        idx = idx + 1
        s = (2 * idx) + sha3(8)
        s = 100 * sub_4d87682c^(sub_82794fb5 + 1) / 100^(sub_82794fb5 + 1) * sub_7eadebfe[stor8[idx].field_256] / 100
        t = sub_7eadebfe[stor8[idx].field_0]
        u = stor8[idx].field_0
        continue 
    if sub_82794fb5 > 3:
        emit NewAppointee(address(u), address(u) == address(sub_8b5857f8Address));
        uint256(stor1) = u or Mask(96, 160, uint256(stor1))
    return address(u)
}



}

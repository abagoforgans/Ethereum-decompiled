contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
array of struct stor8;
array of uint256 stor9;

function _fallback() {
    mem[96 len -4789] = code.data[5613 len -4789]
    stor0 = mem[108 len 20]
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = 2 * stor8.length + 1
        while 2 * stor8.length > idx:
            stor8[idx].field_0 = 0
            stor8[idx].field_256 = 0
            idx = idx + 2
            continue 
    mem[64] = -4629
    require 0 < stor8.length
    address(stor8.field_0) = 0
    stor8.field_256 % 1 = 0
    address(stor8.field_256) = 0
    stor8.field_512 % 1 = 0
    stor9[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor4 = -mem[160] + 100
    if stor4 > 100:
        stor4 = 100
    return code.data[824 len 4789]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address votingTokenAddress;
address sub_8b5857f8Address;
mapping of uint256 sub_4e897592;
mapping of uint256 sub_7eadebfe;
uint256 sub_4d87682c;
uint256 sub_17f73bd2;
uint256 sub_82794fb5;
uint256 numberOfVotes;
array of struct sub_cf06678c;
array of struct sub_bba594fd;

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
    return sub_8b5857f8Address
}

function votingToken() {
    return votingTokenAddress
}

function sub_bba594fd(?) {
    return sub_bba594fd[0 len sub_bba594fd.length].field_0
}

function sub_cf06678c(?) {
    require arg1 < sub_cf06678c.length
    return sub_cf06678c[arg1].field_0, sub_cf06678c[arg1].field_256
}

function _fallback() payable {
    revert
}

function execute(address arg1, uint256 arg2, bytes32 arg3) {
    require msg.sender == sub_8b5857f8Address
    require not uint8(stor0.field_160)
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
    Mask(96, 0, stor0.field_160) = 1
    call arg1 with:
       funct uint32(arg3)
       value 10^18 * arg2 wei
         gas gas_remaining - 34050 wei
        args Mask(224, 0, arg3)
    require ext_call.success
    Mask(96, 0, stor0.field_160) = 0
}

function vote(address arg1) {
    if sub_4e897592[address(msg.sender)]:
        require sub_4e897592[address(msg.sender)] < sub_cf06678c.length
        sub_cf06678c[stor2[address(msg.sender)]].field_0 = arg1
        sub_cf06678c[stor2[address(msg.sender)]].field_256 = msg.sender
        return sub_4e897592[address(msg.sender)]
    sub_4e897592[address(msg.sender)] = sub_cf06678c.length
    numberOfVotes++
    sub_cf06678c.length++
    if not sub_cf06678c.length <= sub_cf06678c.length + 1:
        idx = 2 * sub_cf06678c.length + 1
        while 2 * sub_cf06678c.length > idx:
            sub_cf06678c[idx].field_0 = 0
            sub_cf06678c[idx].field_256 = 0
            idx = idx + 2
            continue 
    numberOfVotes = sub_cf06678c.length
    require sub_cf06678c.length < sub_cf06678c.length
    sub_cf06678c[sub_cf06678c.length].field_0 = arg1
    sub_cf06678c[sub_cf06678c.length].field_256 = msg.sender
    return sub_cf06678c.length
}

function calculateVotes() {
    require 0 < sub_cf06678c.length
    if block.timestamp > sub_17f73bd2 + 5400:
        sub_82794fb5 = 0
        sub_17f73bd2 = block.timestamp
        idx = 1
        while idx < sub_cf06678c.length:
            mem[0] = sub_cf06678c[idx].field_0
            mem[32] = 3
            sub_7eadebfe[stor8[idx].field_0] = 0
            idx = idx + 1
            continue 
        idx = 1
        while idx < sub_cf06678c.length:
            mem[128] = 0
            mem[100] = sub_cf06678c[idx].field_256
            require ext_code.size(votingTokenAddress)
            call votingTokenAddress.0x70a08231 with:
                 gas gas_remaining - 50 wei
                args sub_cf06678c[idx].field_256
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            require idx < sub_cf06678c.length
            mem[0] = sub_cf06678c[idx].field_256
            mem[32] = 3
            sub_7eadebfe[stor8[idx].field_256] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        if sub_82794fb5 > 3:
            emit NewAppointee(sub_8b5857f8Address, sub_8b5857f8Address == sub_8b5857f8Address);
        return sub_8b5857f8Address
    sub_82794fb5++
    require 100^sub_82794fb5
    if 100 * sub_4d87682c^sub_82794fb5 / 100^sub_82794fb5 <= 0:
        if sub_82794fb5 > 3:
            emit NewAppointee(sub_8b5857f8Address, sub_8b5857f8Address == sub_8b5857f8Address);
        return sub_8b5857f8Address
    idx = 1
    s = 0
    s = 0
    t = 0
    u = sub_8b5857f8Address
    while idx < sub_cf06678c.length:
        mem[0] = 8
        if sub_cf06678c[idx].field_0 == sub_cf06678c[idx].field_256:
            if sub_82794fb5 <= 3:
                idx = idx + 1
                s = (2 * idx) + sha3(8)
                s = s
                t = t
                u = u
                continue 
            mem[0] = sub_cf06678c[idx].field_0
            mem[32] = 3
            if sub_7eadebfe[stor8[idx].field_0] <= t:
                idx = idx + 1
                s = (2 * idx) + sha3(8)
                s = s
                t = t
                u = u
                continue 
            mem[0] = sub_cf06678c[idx].field_0
            mem[32] = 3
            idx = idx + 1
            s = (2 * idx) + sha3(8)
            s = s
            t = sub_7eadebfe[stor8[idx].field_0]
            u = sub_cf06678c[idx].field_0
            continue 
        mem[0] = sub_cf06678c[idx].field_256
        mem[32] = 3
        if sub_7eadebfe[stor8[idx].field_256] <= 0:
            if sub_82794fb5 <= 3:
                idx = idx + 1
                s = (2 * idx) + sha3(8)
                s = s
                t = t
                u = u
                continue 
            mem[0] = sub_cf06678c[idx].field_0
            mem[32] = 3
            if sub_7eadebfe[stor8[idx].field_0] <= t:
                idx = idx + 1
                s = (2 * idx) + sha3(8)
                s = s
                t = t
                u = u
                continue 
            mem[0] = sub_cf06678c[idx].field_0
            mem[32] = 3
            idx = idx + 1
            s = (2 * idx) + sha3(8)
            s = s
            t = sub_7eadebfe[stor8[idx].field_0]
            u = sub_cf06678c[idx].field_0
            continue 
        sub_7eadebfe[stor8[idx].field_256] -= sub_7eadebfe[stor8[idx].field_256] * 100 * sub_4d87682c^sub_82794fb5 / 100^sub_82794fb5 / 100
        mem[0] = sub_cf06678c[idx].field_0
        mem[32] = 3
        sub_7eadebfe[stor8[idx].field_0] += sub_7eadebfe[stor8[idx].field_256] * 100 * sub_4d87682c^sub_82794fb5 / 100^sub_82794fb5 / 100
        if sub_82794fb5 <= 3:
            idx = idx + 1
            s = (2 * idx) + sha3(8)
            s = sub_7eadebfe[stor8[idx].field_256] * 100 * sub_4d87682c^sub_82794fb5 / 100^sub_82794fb5 / 100
            t = t
            u = u
            continue 
        mem[0] = sub_cf06678c[idx].field_0
        mem[32] = 3
        if sub_7eadebfe[stor8[idx].field_0] <= t:
            idx = idx + 1
            s = (2 * idx) + sha3(8)
            s = sub_7eadebfe[stor8[idx].field_256] * 100 * sub_4d87682c^sub_82794fb5 / 100^sub_82794fb5 / 100
            t = t
            u = u
            continue 
        mem[0] = sub_cf06678c[idx].field_0
        mem[32] = 3
        idx = idx + 1
        s = (2 * idx) + sha3(8)
        s = sub_7eadebfe[stor8[idx].field_256] * 100 * sub_4d87682c^sub_82794fb5 / 100^sub_82794fb5 / 100
        t = sub_7eadebfe[stor8[idx].field_0]
        u = sub_cf06678c[idx].field_0
        continue 
    if sub_82794fb5 > 3:
        emit NewAppointee(address(u), sub_8b5857f8Address == address(u));
        sub_8b5857f8Address = address(u)
    return address(u)
}



}

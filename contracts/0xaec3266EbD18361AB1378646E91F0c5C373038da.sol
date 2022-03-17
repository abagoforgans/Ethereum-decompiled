contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2588]




// =====================  Runtime code  =====================


uint256 minimumQuorum;
array of address stor1;
array of uint256 stor2;
array of uint256 stor3;
array of struct proposals;
array of uint8 stor5;
array of uint256 stor6;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;
array of struct stor62514009886607029107290561805838585334079798074568712924583230797734656856477;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856479;
array of uint8 stor62514009886607029107290561805838585334079798074568712924583230797734656856480;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856481;

function proposals(uint256 arg1) payable {
    require arg1 < proposals.length
    mem[320] = uint256(stor[sha3((8 * arg1) + ('name', 'proposals', 4) + 3)].field_0)
    idx = 320
    s = 0
    while stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'proposals', 4) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(proposals[arg1].field_0), 
           uint256(proposals[arg1].field_256),
           uint256(proposals[arg1].field_512),
           Array(len=stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length, data=mem[320 len stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length + (floor32(stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length - 1) + -stor[(8 * arg1) + ('name', 'proposals', 4) + 3].length + 32 % 32)]),
           uint256(proposals[arg1].field_1024),
           uint8(proposals[arg1].field_1280)
}

function debatingPeriod() payable {
    return stor1.length
}

function numProposals() payable {
    return stor5.length
}

function founder() payable {
    return address(stor3.length)
}

function minimumQuorum() payable {
    return minimumQuorum
}

function sub_fd46146a(?) payable {
    return address(stor2.length)
}

function _fallback() payable {
  stop
}

function sub_21933be8(?) payable {
    stor3.length = msg.sender or Mask(96, 160, stor3.length)
    stor2.length = arg1 or Mask(96, 160, stor2.length)
    if arg2:
        minimumQuorum = arg2
    else:
        minimumQuorum = 10000
    if arg3 != 0:
        stor1.length = 60 * arg3
    else:
        stor1.length = 720 * 24 * 3600
}

function vote(uint256 arg1, int256 arg2) payable {
    call address(stor2.length).coinBalanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    if arg2 < -1:
        if arg2 > 1:
            return 0
    require arg1 < proposals.length
    if 1 == uint8(stor[(8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5e][address(msg.sender)]):
        return 0
    stor8A35[arg1]++
    if not stor8A35[arg1] <= stor8A35[arg1] + 1:
        idx = 2 * stor8A35[arg1] + 1
        while 2 * stor8A35[arg1] > idx:
            uint256(stor[idx + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f)]) = 0
            address(stor[idx + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f) + 1]) = 0
            idx = idx + 1
            continue 
    require stor8A35[arg1] < stor8A35[arg1]
    uint256(stor[(2 * stor8A35[arg1]) + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f)]) = arg2
    uint256(stor[(2 * stor8A35[arg1]) + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f) + 1]) = msg.sender or Mask(96, 160, uint256(stor[(2 * stor8A35[arg1]) + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f) + 1]))
    uint8(stor[(8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5e][address(msg.sender)]) = 1
    emit Voted(arg1, arg2, msg.sender);
    return stor8A35[arg1]
}

function newProposal(address arg1, uint256 arg2, bytes32 arg3, string arg4) payable {
    call address(stor2.length).coinBalanceOf(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    proposals.length++
    if not proposals.length <= proposals.length + 1:
        idx = (8 * proposals.length + 1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65
        while (8 * proposals.length) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            address(stor[idx]) = 0
            uint256(stor1[idx]) = 0
            uint256(stor2[idx]) = 0
            uint256(stor3[idx]) = 0
            if 31 >= stor[idx + 3].length:
                uint256(proposals[idx].field_0) = 0
                stor5[idx] = 0
                stor6[idx] = 0
                mem[0] = idx + 6
                s = sha3(s + 6)
                while sha3(s + 6) + (2 * stor6[s]) > s:
                    uint256(stor[s]) = 0
                    address(stor1[s]) = 0
                    s = s + 1
                    continue 
                s = s + 1
                continue 
            s = sha3(idx + 3)
            while sha3(idx + 3) + (stor[idx + 3].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            uint256(proposals[idx].field_0) = 0
            stor5[idx] = 0
            stor6[idx] = 0
            mem[0] = idx + 6
            s = sha3(idx + 6)
            while sha3(idx + 6) + (2 * stor6[idx]) > s:
                uint256(stor[s]) = 0
                address(stor1[s]) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require proposals.length < proposals.length
    uint256(proposals[proposals.length].field_0) = arg1 or Mask(96, 160, uint256(proposals[proposals.length].field_0))
    uint256(proposals[proposals.length].field_256) = arg2
    uint256(proposals[proposals.length].field_512) = arg3
    uint256(stor[sha3((8 * proposals.length) + ('name', 'proposals', 4) + 3)][].field_0) = Array(len=arg4.length, data=arg4[all])
    uint256(proposals[proposals.length].field_1024) = block.timestamp
    uint8(proposals[proposals.length].field_1280) = 1
    emit ProposalAdded(proposals.length, address(arg1), arg2, arg3, Array(len=arg4.length, data=arg4[all]));
    stor5.length = proposals.length + 1
    return proposals.length
}

function executeProposal(uint256 arg1) payable {
    require arg1 < proposals.length
    if block.timestamp <= stor1.length + stor8A35[arg1]:
        return 0
    if not stor8A35[arg1]:
        return 0
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    while idx < stor8A35[arg1]:
        mem[0] = (8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f
        mem[100] = address(stor[(2 * idx) + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f) + 1])
        call address(stor2.length).coinBalanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args address(stor[(2 * idx) + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f) + 1])
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        s = (2 * idx) + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        t = t + (ext_call.return_data[0] * uint256(stor[(2 * idx) + sha3((8 * arg1) - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e5f)]))
        continue 
    if _26 * stor8A35[arg1] > minimumQuorum:
        if t * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] > 0:
            call address(proposals[arg1].field_0) with:
               funct uint32(stor8A35[arg1].field_224)
               value stor8A35[arg1] wei
                 gas gas_remaining - 34050 wei
                args Mask(224, 0, stor8A35[arg1].field_0)
            stor8A35[arg1] = 0
        else:
            if _26 * stor8A35[arg1] > minimumQuorum:
                if t * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] < 0:
                    stor8A35[arg1] = 0
    emit ProposalTallied(arg1, t * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1], _26 * stor8A35[arg1], stor8A35[arg1]);
    return (t * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1] * stor8A35[arg1])
}



}

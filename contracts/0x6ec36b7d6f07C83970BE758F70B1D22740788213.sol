contract main {


// =======================  Init code  ======================


address stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    stor2 = code.data[2074 len 20]
    require ext_code.size(code.data[2074 len 20])
    call code.data[2074 len 20].contractVersion() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 100201707171503 == ext_call.return_data[0]
    require code.data[2094 len 32] < code.data[2126 len 32]
    stor3 = code.data[2094 len 32]
    stor4 = code.data[2126 len 32]
    return code.data[247 len 1815]
}



// =====================  Runtime code  =====================


mapping of uint256 voteCount;
array of address voter;
address stor2;
uint256 voteStartTime;
uint256 voteEndTime;
mapping of uint256 stor5;
uint256 vote01YesCount;
uint256 vote01NoCount;
mapping of uint256 stor8;
uint256 vote02YesCount;
uint256 vote02NoCount;

function vote02YesCount() {
    return vote02YesCount
}

function vote02NoCount() {
    return vote02NoCount
}

function voteStartTime() {
    return voteStartTime
}

function vote01YesCount() {
    return vote01YesCount
}

function voteCount(address arg1) {
    return voteCount[arg1]
}

function vote01NoCount() {
    return vote01NoCount
}

function voteEndTime() {
    return voteEndTime
}

function voterAddresses(uint256 arg1) {
    require arg1 < voter.length
    return address(voter[arg1])
}

function _fallback() payable {
    revert
}

function setVoter(uint256 arg1, address arg2, uint256 arg3) {
    require ext_code.size(stor2)
    call stor2.isCurrentAdmin(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp < voteStartTime
    require arg1 < voter.length
    address(voter[arg1]) = arg2
    voteCount[address(arg2)] = arg3
}

function setVoterCount(uint256 arg1) {
    require ext_code.size(stor2)
    call stor2.isCurrentAdmin(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require block.timestamp < voteStartTime
    s = 0
    idx = 0
    while idx < voter.length:
        mem[0] = address(voter[idx])
        mem[32] = 0
        voteCount[address(stor1[idx])] = 0
        s = address(voter[idx])
        idx = idx + 1
        continue 
    voter.length = arg1
    if not voter.length <= arg1:
        idx = arg1
        while voter.length > idx:
            uint256(voter[idx]) = 0
            idx = idx + 1
            continue 
}

function voteSvp01(bool arg1) {
    require block.timestamp >= voteStartTime
    require block.timestamp <= voteEndTime
    require voteCount[address(msg.sender)]
    if arg1:
        if stor5[address(msg.sender)] != 1:
            stor5[address(msg.sender)] = 1
            if stor5[address(msg.sender)] == 1:
                vote01YesCount -= voteCount[address(msg.sender)]
                if not arg1:
                    vote01NoCount += voteCount[address(msg.sender)]
                else:
                    vote01YesCount += voteCount[address(msg.sender)]
            else:
                if 2 == stor5[address(msg.sender)]:
                    vote01NoCount -= voteCount[address(msg.sender)]
                if not arg1:
                    vote01NoCount += voteCount[address(msg.sender)]
                else:
                    vote01YesCount += voteCount[address(msg.sender)]
    else:
        if stor5[address(msg.sender)] != 2:
            stor5[address(msg.sender)] = 2
            if stor5[address(msg.sender)] == 1:
                vote01YesCount -= voteCount[address(msg.sender)]
                if not arg1:
                    vote01NoCount += voteCount[address(msg.sender)]
                else:
                    vote01YesCount += voteCount[address(msg.sender)]
            else:
                if 2 == stor5[address(msg.sender)]:
                    vote01NoCount -= voteCount[address(msg.sender)]
                if not arg1:
                    vote01NoCount += voteCount[address(msg.sender)]
                else:
                    vote01YesCount += voteCount[address(msg.sender)]
}

function voteSvp02(bool arg1) {
    require block.timestamp >= voteStartTime
    require block.timestamp <= voteEndTime
    require voteCount[address(msg.sender)]
    if arg1:
        if stor8[address(msg.sender)] != 1:
            stor8[address(msg.sender)] = 1
            if stor8[address(msg.sender)] == 1:
                vote02YesCount -= voteCount[address(msg.sender)]
                if not arg1:
                    vote02NoCount += voteCount[address(msg.sender)]
                else:
                    vote02YesCount += voteCount[address(msg.sender)]
            else:
                if 2 == stor8[address(msg.sender)]:
                    vote02NoCount -= voteCount[address(msg.sender)]
                if not arg1:
                    vote02NoCount += voteCount[address(msg.sender)]
                else:
                    vote02YesCount += voteCount[address(msg.sender)]
    else:
        if stor8[address(msg.sender)] != 2:
            stor8[address(msg.sender)] = 2
            if stor8[address(msg.sender)] == 1:
                vote02YesCount -= voteCount[address(msg.sender)]
                if not arg1:
                    vote02NoCount += voteCount[address(msg.sender)]
                else:
                    vote02YesCount += voteCount[address(msg.sender)]
            else:
                if 2 == stor8[address(msg.sender)]:
                    vote02NoCount -= voteCount[address(msg.sender)]
                if not arg1:
                    vote02NoCount += voteCount[address(msg.sender)]
                else:
                    vote02YesCount += voteCount[address(msg.sender)]
}



}
